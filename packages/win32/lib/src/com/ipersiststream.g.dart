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
import 'ipersist.g.dart';
import 'istream.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IPersistStream = Guid.fromComponents(
  0x109,
  0x0,
  0x0,
  Uint8List.fromList(const [0xc0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x46]),
);

/// Enables the saving and loading of objects that use a simple serial stream
/// for their storage needs.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/objidl/nn-objidl-ipersiststream>.
///
/// {@category com}
class IPersistStream extends IPersist implements ComInterface {
  /// Creates a new instance of [IPersistStream] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IPersistStream]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IPersistStream(super.ptr)
    : _vtable = ptr.value.cast<IPersistStreamVtbl>().ref;

  /// Creates a new instance of [IPersistStream] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IPersistStream] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IPersistStream.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IPersistStreamVtbl _vtable;
  late final _IsDirtyFn =
      _vtable.IsDirty.asFunction<int Function(VTablePointer)>();
  late final _LoadFn =
      _vtable.Load.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SaveFn = _vtable
      .Save.asFunction<int Function(VTablePointer, VTablePointer, int)>();
  late final _GetSizeMaxFn = _vtable
      .GetSizeMax.asFunction<int Function(VTablePointer, Pointer<Uint64>)>();

  /// Determines whether an object has changed since it was last saved to its
  /// stream.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-ipersiststream-isdirty>.
  @pragma('vm:prefer-inline')
  HRESULT isDirty() => HRESULT(_IsDirtyFn(ptr));

  /// Initializes an object from the stream where it was saved previously.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-ipersiststream-load>.
  @pragma('vm:prefer-inline')
  void load(IStream? pStm) {
    final hr$ = HRESULT(_LoadFn(ptr, pStm?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Saves an object to the specified stream.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-ipersiststream-save>.
  @pragma('vm:prefer-inline')
  void save(IStream? pStm, bool fClearDirty) {
    final hr$ = HRESULT(
      _SaveFn(ptr, pStm?.ptr ?? nullptr, fClearDirty ? TRUE : FALSE),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the size of the stream needed to save the object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-ipersiststream-getsizemax>.
  int getSizeMax() {
    final pcbSize = loggingCalloc<Uint64>();
    final hr$ = HRESULT(_GetSizeMaxFn(ptr, pcbSize));
    if (hr$.isError) {
      free(pcbSize);
      throw WindowsException(hr$);
    }
    final result$ = pcbSize.value;
    free(pcbSize);
    return result$;
  }

  @override
  String toString() => 'IPersistStream(ptr: $ptr)';
}

/// @nodoc
base class IPersistStreamVtbl extends Struct {
  external IPersistVtbl base$;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>> IsDirty;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer pStm)>
  >
  Load;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, VTablePointer pStm, BOOL fClearDirty)
    >
  >
  Save;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Uint64> pcbSize)>
  >
  GetSizeMax;
}

@internal
final class IPersistStreamCompanion extends ComCompanion<IPersistStream> {
  const IPersistStreamCompanion();

  @pragma('vm:prefer-inline')
  @override
  IPersistStream Function(VTablePointer) get fromPointer => IPersistStream.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IPersistStream;
}
