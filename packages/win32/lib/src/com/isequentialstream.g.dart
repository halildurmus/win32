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
import 'iunknown.g.dart';

/// @nodoc
final IID_ISequentialStream = Guid.fromComponents(
  0xc733a30,
  0x2a1c,
  0x11ce,
  Uint8List.fromList(const [0xad, 0xe5, 0x0, 0xaa, 0x0, 0x44, 0x77, 0x3d]),
);

/// Supports simplified sequential access to stream objects.
///
/// The IStream interface inherits its Read and Write methods from
/// ISequentialStream.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/objidl/nn-objidl-isequentialstream>.
///
/// {@category com}
class ISequentialStream extends IUnknown implements ComInterface {
  /// Creates a new instance of [ISequentialStream] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ISequentialStream]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  ISequentialStream(super.ptr)
    : _vtable = ptr.value.cast<ISequentialStreamVtbl>().ref;

  /// Creates a new instance of [ISequentialStream] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [ISequentialStream] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ISequentialStream.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final ISequentialStreamVtbl _vtable;
  late final _ReadFn =
      _vtable.Read.asFunction<
        int Function(VTablePointer, Pointer, int, Pointer<Uint32>)
      >();
  late final _WriteFn =
      _vtable.Write.asFunction<
        int Function(VTablePointer, Pointer, int, Pointer<Uint32>)
      >();

  /// Reads a specified number of bytes from the stream object into memory,
  /// starting at the current seek pointer.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-isequentialstream-read>.
  @pragma('vm:prefer-inline')
  HRESULT read(Pointer pv, int cb, Pointer<Uint32>? pcbRead) =>
      HRESULT(_ReadFn(ptr, pv, cb, pcbRead ?? nullptr));

  /// Writes a specified number of bytes into the stream object starting at the
  /// current seek pointer.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-isequentialstream-write>.
  @pragma('vm:prefer-inline')
  HRESULT write(Pointer pv, int cb, Pointer<Uint32>? pcbWritten) =>
      HRESULT(_WriteFn(ptr, pv, cb, pcbWritten ?? nullptr));

  @override
  String toString() => 'ISequentialStream(ptr: $ptr)';
}

/// @nodoc
base class ISequentialStreamVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer pv,
        Uint32 cb,
        Pointer<Uint32> pcbRead,
      )
    >
  >
  Read;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer pv,
        Uint32 cb,
        Pointer<Uint32> pcbWritten,
      )
    >
  >
  Write;
}

@internal
final class ISequentialStreamCompanion extends ComCompanion<ISequentialStream> {
  const ISequentialStreamCompanion();

  @pragma('vm:prefer-inline')
  @override
  ISequentialStream Function(VTablePointer) get fromPointer =>
      ISequentialStream.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_ISequentialStream;
}
