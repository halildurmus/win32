// Dart representation of a COM interface.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';

import '../allocator.dart';
import '../bstr.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/iunknown.dart';
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
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'interface.g.dart';
import 'istream.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IAppxPackageWriter = Guid.fromComponents(
  0x9099e33b,
  0x246f,
  0x41e4,
  Uint8List.fromList(const [0x88, 0x1a, 0x0, 0x8e, 0xb6, 0x13, 0xf8, 0x58]),
);

/// Provides a write-only object model for app packages.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nn-appxpackaging-iappxpackagewriter>.
///
/// {@category com}
class IAppxPackageWriter extends IUnknown implements ComInterface {
  /// Creates a new instance of [IAppxPackageWriter] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IAppxPackageWriter]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAppxPackageWriter(super.ptr)
    : _vtable = ptr.value.cast<IAppxPackageWriterVtbl>().ref;

  /// Creates a new instance of [IAppxPackageWriter] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAppxPackageWriter] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAppxPackageWriter.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IAppxPackageWriterVtbl _vtable;
  late final _AddPayloadFileFn =
      _vtable.AddPayloadFile.asFunction<
        int Function(VTablePointer, PCWSTR, PCWSTR, int, VTablePointer)
      >();
  late final _CloseFn =
      _vtable.Close.asFunction<int Function(VTablePointer, VTablePointer)>();

  /// Adds a new payload file to the app package.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxpackagewriter-addpayloadfile>.
  @pragma('vm:prefer-inline')
  void addPayloadFile(
    PCWSTR fileName,
    PCWSTR contentType,
    APPX_COMPRESSION_OPTION compressionOption,
    IStream? inputStream,
  ) {
    final hr$ = HRESULT(
      _AddPayloadFileFn(
        ptr,
        fileName,
        contentType,
        compressionOption,
        inputStream?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Writes footprint files at the end of the app package, and closes the
  /// package writer object's output stream.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxpackagewriter-close>.
  @pragma('vm:prefer-inline')
  void close(IStream? manifest) {
    final hr$ = HRESULT(_CloseFn(ptr, manifest?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IAppxPackageWriter(ptr: $ptr)';
}

/// @nodoc
base class IAppxPackageWriterVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR fileName,
        PCWSTR contentType,
        Int32 compressionOption,
        VTablePointer inputStream,
      )
    >
  >
  AddPayloadFile;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer manifest)>
  >
  Close;
}

@internal
final class IAppxPackageWriterCompanion
    extends ComCompanion<IAppxPackageWriter> {
  const IAppxPackageWriterCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAppxPackageWriter Function(VTablePointer) get fromPointer =>
      IAppxPackageWriter.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAppxPackageWriter;
}
