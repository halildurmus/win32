/// A set of Flutter and Dart assets used to initialize a Flutter engine.
class DartProject {
  /// The path to the assets directory.
  final String assetsPath;

  /// The path to the ICU data.
  final String icuDataPath;

  /// The path to the AOT library. This will always return a path, but non-AOT
  /// builds will not be expected to actually have a library at that path.
  final String aotLibraryPath;

  /// Creates a `DartProject` from a series of absolute paths.
  ///
  /// The three paths are:
  /// - `assets_path`: Path to the assets directory as built by the Flutter
  ///   tool.
  /// - `icu_data_path`: Path to the `icudtl.dat` file.
  /// - `aot_library_path`: Path to the AOT snapshot file.
  ///
  /// The paths can either be absolute, or relative to the directory containing
  /// the running executable.
  const DartProject(
      {required this.assetsPath,
      required this.icuDataPath,
      required this.aotLibraryPath});

  /// Creates a `DartProject` from a directory path.
  ///
  /// The directory should contain the following top-level items:
  /// - `icudtl.dat` (provided as a resource by the Flutter tool)
  /// - `flutter_assets` (as built by the Flutter tool)
  /// - `app.so`, for an AOT build (as built by the Flutter tool)
  ///
  /// The path can either be absolute, or relative to the directory containing
  /// the running executable.
  factory DartProject.fromPath(String path) => DartProject(
      assetsPath: '$path\\flutter_assets',
      icuDataPath: '$path\\icudtl.dat',
      aotLibraryPath: '$path\\app.so');

  /// Creates a `DartProject` from the root Flutter folder, after running
  /// `flutter assemble`, with a command such as: `flutter assemble
  /// -dTargetPlatform=windows-x64 --output=build -dBuildMode=release
  /// release_bundle_windows_assets`.
  ///
  /// The directory should contain the following top-level items:
  /// - `icudtl.dat` (provided as a resource by the Flutter tool)
  /// - `flutter_assets` (as built by the Flutter tool)
  /// - `app.so`, for an AOT build (as built by the Flutter tool)
  ///
  /// The path can either be absolute, or relative to the directory containing
  /// the running executable.
  factory DartProject.fromRoot(String path) => DartProject(
      assetsPath: '$path\\build\\flutter_assets',
      icuDataPath: '$path\\windows\\flutter\\ephemeral\\icudtl.dat',
      aotLibraryPath: '$path\\build\\windows\\app.so');
}
