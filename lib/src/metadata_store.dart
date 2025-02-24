import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:logging/logging.dart';
import 'package:nuget/nuget.dart';
import 'package:path/path.dart' as p;

import 'models/models.dart';
import 'scope.dart';
import 'type_def.dart';
import 'win32/win32.dart';

/// A class that manages the caching and retrieval of Windows Metadata (.winmd)
/// files and provides methods to obtain metadata scopes for WDK, Win32, and
/// WinRT.
///
/// Use this class to obtain a reference of a scope without creating unnecessary
/// copies or cycles.
abstract final class MetadataStore {
  static IMetaDataDispenser? _dispenser;
  static bool _isInitialized = false;
  static LocalStorageManager? _localStorageManager;
  static NuGetClient? _nugetClient;
  static final _scopeCache = <String, Scope>{};

  /// Returns debugging information about the [scopeCache].
  static String get cacheInfo => '[${_scopeCache.keys.join(', ')}]';

  /// Returns the cached [Scope]s.
  static Map<String, Scope> get scopeCache => Map.unmodifiable(_scopeCache);

  /// The [Logger] used for this class.
  static Logger logger =
      Logger('')
        ..level = Level.INFO
        ..onRecord.listen((record) {
          print(
            '[${record.level.name}] ${_formatTimestamp(record.time)}: '
            '${record.message}',
          );
        });

  /// Initializes the [MetadataStore].
  ///
  /// Must be called automatically before any metadata operations. Allocates
  /// native resources and creates the required COM objects.
  static void initialize() {
    if (_isInitialized) return;

    final dispenserObject = calloc<VTablePointer>();
    MetaDataGetDispenser(
      CLSID_CorMetaDataDispenser.ptr,
      IID_IMetaDataDispenser.ptr,
      dispenserObject.cast(),
    );
    _dispenser = IMetaDataDispenser(dispenserObject.value);
    free(dispenserObject);
    _localStorageManager = LocalStorageManager();
    _nugetClient = NuGetClient();
    _isInitialized = true;
    logger.fine('MetadataStore initialized.');
  }

  /// Disposes of all objects and clears the [scopeCache].
  ///
  /// It's a good practice to call this method when you're done using the
  /// [MetadataStore].
  static void close() {
    if (!_isInitialized) return;
    assert(_dispenser != null, 'Metadata dispenser is not initialized.');
    assert(_nugetClient != null, 'NuGet client is not initialized.');
    _scopeCache.clear();
    _dispenser!.release();
    _dispenser = null;
    _localStorageManager = null;
    _nugetClient!.close();
    _nugetClient = null;
    _isInitialized = false;
    logger.fine('MetadataStore closed.');
  }

  /// Finds and returns the metadata scope for the given fully qualified
  /// [typeName] (e.g., `Windows.Globalization.Calendar`).
  ///
  /// Throws a [WinmdException] if the scope is not loaded.
  static Scope findScope(String typeName) {
    if (typeName.isEmpty) {
      throw ArgumentError.value(typeName, 'typeName', 'Must not be empty.');
    }

    if (!typeName.startsWith('Windows')) {
      throw ArgumentError.value(
        typeName,
        'typeName',
        'Must start with `Windows`.',
      );
    }

    if (!_isInitialized) initialize();

    if (typeName.startsWith('Windows.Wdk')) {
      final assetName = MetadataPackage.wdk.assetName;
      if (_scopeCache.containsKey(assetName)) {
        logger.fine('Found cached WDK scope for "$typeName".');
        return _scopeCache[assetName]!;
      }
      throw WinmdException(
        'Scope for `$typeName` not found. Please load the WDK scope by '
        'calling `loadWdkScope()`.',
      );
    }

    if (typeName.startsWith('Windows.Win32')) {
      final assetName = MetadataPackage.win32.assetName;
      if (_scopeCache.containsKey(assetName)) {
        logger.fine('Found cached Win32 scope for "$typeName".');
        return _scopeCache[assetName]!;
      }
      throw WinmdException(
        'Scope for `$typeName` not found. Please load the Win32 scope by '
        'calling `loadWin32Scope()`.',
      );
    }

    if (typeName.startsWith('Windows')) {
      final assetName = MetadataPackage.winrt.assetName;
      if (_scopeCache.containsKey(assetName)) {
        logger.fine('Found cached WinRT scope for "$typeName".');
        return _scopeCache[assetName]!;
      }
      throw WinmdException(
        'Scope for `$typeName` not found. Please load the WinRT scope by '
        'calling `loadWinrtScope()`.',
      );
    }

    throw WinmdException('Could not find scope for `$typeName`.');
  }

  /// Finds and returns the type definition for the fully qualified
  /// [typeName] (e.g., `Windows.Globalization.Calendar`).
  ///
  /// Returns `null` if the type is not found.
  static TypeDef? findTypeDef(String typeName) {
    final scope = findScope(typeName);
    return scope.findTypeDef(typeName);
  }

  /// Loads a metadata scope from the specified WinMD [file].
  ///
  /// Throws [WindowsException] if an issue occurs while opening the metadata
  /// file.
  static Scope loadScopeFromFile(File file) {
    if (!file.path.endsWith('.winmd')) {
      throw ArgumentError.value(
        file,
        'file',
        'File must be a Windows Metadata (.winmd) file.',
      );
    }

    if (!file.existsSync()) {
      throw ArgumentError.value(file, 'file', 'File does not exist.');
    }

    if (!_isInitialized) initialize();
    assert(_dispenser != null, 'Metadata dispenser is not initialized.');

    final szFile = file.path.toNativeUtf16();

    try {
      final reader = _dispenser!.openScope(
        szFile,
        ofRead,
        IID_IMetaDataImport2.ptr,
      );
      if (reader == null) {
        throw WinmdException('Failed to load scope for file "${file.path}".');
      }

      final assemblyImport = _dispenser!.openScope(
        szFile,
        ofRead,
        IID_IMetaDataAssemblyImport.ptr,
      );
      if (assemblyImport == null) {
        throw WinmdException('Failed to load scope for file "${file.path}".');
      }

      final scope = Scope(
        IMetaDataImport2(reader.ptr),
        IMetaDataAssemblyImport(assemblyImport.ptr),
      );
      final fileName = p.basename(file.path);
      _scopeCache[fileName] = scope;
      logger.info('Scope loaded and cached from file "${file.path}".');
      return scope;
    } finally {
      free(szFile);
    }
  }

  /// Loads and returns the WDK scope.
  ///
  /// If [version] is not provided, loads the latest available version.
  ///
  /// If the metadata is already downloaded, loads it from the local cache.
  static Future<Scope> loadWdkScope({String? version}) =>
      _loadScope(MetadataPackage.wdk, version, includePrerelease: true);

  /// Loads and returns the Win32 scope.
  ///
  /// If [version] is not provided, loads the latest available version.
  ///
  /// If the metadata is already downloaded, loads it from the local cache.
  static Future<Scope> loadWin32Scope({String? version}) =>
      _loadScope(MetadataPackage.win32, version, includePrerelease: true);

  /// Loads and returns the WinRT scope.
  ///
  /// If [version] is not provided, loads the latest stable version.
  ///
  /// If the metadata is already downloaded, loads it from the local cache.
  static Future<Scope> loadWinrtScope({String? version}) =>
      _loadScope(MetadataPackage.winrt, version);

  /// Attempts to load a metadata scope from the file system for the given
  /// [package] and [version].
  static Scope? _tryLoadingScopeFromFile(
    MetadataPackage package,
    String version,
  ) {
    final packageDirectory = _localStorageManager!.findPackageDirectory(
      package,
      version,
    );
    if (packageDirectory != null) {
      logger.fine(
        'Found NuGet package "$package" (version $version) in local storage.',
      );
      final metadataFile = File(p.join(packageDirectory, package.assetName));
      return loadScopeFromFile(metadataFile);
    }
    logger.fine(
      'NuGet package "$package" (version $version) is not found in local storage.',
    );
    return null;
  }

  static Future<Scope> _loadScope(
    MetadataPackage package,
    String? version, {
    bool includePrerelease = false,
  }) async {
    if (!_isInitialized) initialize();

    logger.fine('Loading scope for "${package.name}"...');
    final MetadataPackage(:packageId, :assetName) = package;

    // Try to load from local storage.
    if (version != null) {
      final cached = _tryLoadingScopeFromFile(package, version);
      if (cached != null) {
        logger.fine('Loaded scope for "${package.name}" from local storage.');
        return cached;
      }
    }

    // Determine the version to use.
    final versionToUse =
        version ??
        await _nugetClient!.getLatestPackageVersion(
          packageId,
          includePrerelease: includePrerelease,
        );
    logger.fine(
      'The latest version for NuGet package "$packageId" is "$versionToUse".',
    );

    // Try to load from local storage.
    final cached = _tryLoadingScopeFromFile(package, versionToUse);
    if (cached != null) {
      logger.fine('Loaded scope for "${package.name}" from local storage.');
      return cached;
    }

    // Download and load the package.
    final packageDirectory = await _localStorageManager!.getPackageDirectory(
      package,
      versionToUse,
      () async => _nugetClient!.downloadPackageContent(
        packageId,
        version: versionToUse,
      ),
      logger: logger,
    );
    final metadataFile = File(p.join(packageDirectory, assetName));

    // For WinRT, merge metadata if necessary.
    if (package == MetadataPackage.winrt) {
      if (!metadataFile.existsSync()) {
        final metadataPath = p.join(packageDirectory, 'ref', 'netstandard2.0');
        logger.info('Merging WinRT metadata files into a single file...');
        final startTime = DateTime.now();
        MdMerge.mergeMetadata(metadataPath, packageDirectory);
        final duration = DateTime.now().difference(startTime);
        final seconds = (duration.inMilliseconds / 1000.0).toStringAsFixed(1);
        logger.info('Merge took ${seconds}s.');
      } else {
        logger.fine(
          'WinRT metadata file already exists at "${metadataFile.path}". '
          'Skipping merge.',
        );
      }
    }

    logger.fine(
      'Loading scope for "${package.name}" from metadata file "${metadataFile.path}".',
    );
    return loadScopeFromFile(metadataFile);
  }
}

/// Formats a [DateTime] as "yyyy-MM-dd HH:mm:ss".
String _formatTimestamp(DateTime time) {
  final year = time.year.toString().padLeft(4, '0');
  final month = time.month.toString().padLeft(2, '0');
  final day = time.day.toString().padLeft(2, '0');
  final hour = time.hour.toString().padLeft(2, '0');
  final minute = time.minute.toString().padLeft(2, '0');
  final second = time.second.toString().padLeft(2, '0');
  return '$year-$month-$day $hour:$minute:$second';
}
