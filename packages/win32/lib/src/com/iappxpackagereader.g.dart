// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Dart representation of a COM interface.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:meta/meta.dart';

import '../bstr.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../guid.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'iappxblockmapreader.g.dart';
import 'iappxfile.g.dart';
import 'iappxfilesenumerator.g.dart';
import 'iappxmanifestreader.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IAppxPackageReader = GUID.fromComponents(
  0xb5c49650,
  0x99bc,
  0x481c,
  .fromList(const [0x9a, 0x34, 0x3d, 0x53, 0xa4, 0x10, 0x67, 0x8]),
);

/// Provides a read-only object model for app packages.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nn-appxpackaging-iappxpackagereader>.
///
/// {@category com}
class IAppxPackageReader extends IUnknown implements ComInterface {
  /// Creates a new instance of [IAppxPackageReader] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IAppxPackageReader]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  IAppxPackageReader(super.ptr)
    : _vtable = ptr.value.cast<IAppxPackageReaderVtbl>().ref;

  /// Creates a new instance of [IAppxPackageReader] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IAppxPackageReader] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAppxPackageReader.from(IUnknown interface) =>
      interface.queryInterface();

  final IAppxPackageReaderVtbl _vtable;
  late final _GetBlockMapFn =
      _vtable.GetBlockMap.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetFootprintFileFn =
      _vtable.GetFootprintFile.asFunction<
        int Function(VTablePointer, int, Pointer<VTablePointer>)
      >();
  late final _GetPayloadFileFn =
      _vtable.GetPayloadFile.asFunction<
        int Function(VTablePointer, Pointer<Utf16>, Pointer<VTablePointer>)
      >();
  late final _GetPayloadFilesFn =
      _vtable.GetPayloadFiles.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetManifestFn =
      _vtable.GetManifest.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();

  /// Retrieves the block map object model of the package.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxpackagereader-getblockmap>.
  IAppxBlockMapReader? getBlockMap() {
    final blockMapReader = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetBlockMapFn(ptr, blockMapReader));
    if (hr$.isError) {
      free(blockMapReader);
      throw WindowsException(hr$);
    }
    final result$ = blockMapReader.value;
    free(blockMapReader);
    if (result$.isNull) return null;
    return .new(result$);
  }

  /// Retrieves a footprint file from the package.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxpackagereader-getfootprintfile>.
  IAppxFile? getFootprintFile(APPX_FOOTPRINT_FILE_TYPE type) {
    final file = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetFootprintFileFn(ptr, type, file));
    if (hr$.isError) {
      free(file);
      throw WindowsException(hr$);
    }
    final result$ = file.value;
    free(file);
    if (result$.isNull) return null;
    return .new(result$);
  }

  /// Retrieves a payload file from the package.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxpackagereader-getpayloadfile>.
  IAppxFile? getPayloadFile(PCWSTR fileName) {
    final file = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetPayloadFileFn(ptr, fileName, file));
    if (hr$.isError) {
      free(file);
      throw WindowsException(hr$);
    }
    final result$ = file.value;
    free(file);
    if (result$.isNull) return null;
    return .new(result$);
  }

  /// Retrieves an enumerator that iterates through the payload files in the
  /// package.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxpackagereader-getpayloadfiles>.
  IAppxFilesEnumerator? getPayloadFiles() {
    final filesEnumerator = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetPayloadFilesFn(ptr, filesEnumerator));
    if (hr$.isError) {
      free(filesEnumerator);
      throw WindowsException(hr$);
    }
    final result$ = filesEnumerator.value;
    free(filesEnumerator);
    if (result$.isNull) return null;
    return .new(result$);
  }

  /// Retrieves the object model of the app manifest of the package.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxpackagereader-getmanifest>.
  IAppxManifestReader? getManifest() {
    final manifestReader = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetManifestFn(ptr, manifestReader));
    if (hr$.isError) {
      free(manifestReader);
      throw WindowsException(hr$);
    }
    final result$ = manifestReader.value;
    free(manifestReader);
    if (result$.isNull) return null;
    return .new(result$);
  }

  @override
  String toString() => 'IAppxPackageReader(ptr: $ptr)';
}

/// @nodoc
base class IAppxPackageReaderVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> blockMapReader)
    >
  >
  GetBlockMap;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 type,
        Pointer<VTablePointer> file,
      )
    >
  >
  GetFootprintFile;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Utf16> fileName,
        Pointer<VTablePointer> file,
      )
    >
  >
  GetPayloadFile;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> filesEnumerator,
      )
    >
  >
  GetPayloadFiles;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> manifestReader)
    >
  >
  GetManifest;
}

@internal
final class IAppxPackageReaderCompanion
    extends ComCompanion<IAppxPackageReader> {
  const IAppxPackageReaderCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAppxPackageReader Function(VTablePointer) get fromPointer =>
      IAppxPackageReader.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IAppxPackageReader;
}
