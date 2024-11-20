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
import 'iunknown.g.dart';

/// @nodoc
final IID_IPersistMemory = Guid.fromComponents(
  0xbd1ae5e0,
  0xa6ae,
  0x11ce,
  Uint8List.fromList(const [0xbd, 0x37, 0x50, 0x42, 0x0, 0xc1, 0x0, 0x0]),
);

/// Saves and loads objects from a stream.
///
/// To learn more, see
/// <https://learn.microsoft.com/previous-versions/windows/internet-explorer/ie-developer/platform-apis/aa768210(v=vs.85)>.
///
/// {@category com}
class IPersistMemory extends IPersist implements ComInterface {
  /// Creates a new instance of [IPersistMemory] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IPersistMemory]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IPersistMemory(super.ptr)
    : _vtable = ptr.value.cast<IPersistMemoryVtbl>().ref;

  /// Creates a new instance of [IPersistMemory] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IPersistMemory] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IPersistMemory.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IPersistMemoryVtbl _vtable;
  late final _IsDirtyFn =
      _vtable.IsDirty.asFunction<int Function(VTablePointer)>();
  late final _LoadFn =
      _vtable.Load.asFunction<int Function(VTablePointer, Pointer, int)>();
  late final _SaveFn =
      _vtable.Save.asFunction<int Function(VTablePointer, Pointer, int, int)>();
  late final _GetSizeMaxFn = _vtable
      .GetSizeMax.asFunction<int Function(VTablePointer, Pointer<Uint32>)>();
  late final _InitNewFn =
      _vtable.InitNew.asFunction<int Function(VTablePointer)>();

  @pragma('vm:prefer-inline')
  HRESULT isDirty() => HRESULT(_IsDirtyFn(ptr));

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void load(Pointer pMem, int cbSize) {
    final hr$ = HRESULT(_LoadFn(ptr, pMem, cbSize));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void save(Pointer pMem, bool fClearDirty, int cbSize) {
    final hr$ = HRESULT(_SaveFn(ptr, pMem, fClearDirty ? TRUE : FALSE, cbSize));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  int getSizeMax() {
    final pCbSize = loggingCalloc<Uint32>();
    final hr$ = HRESULT(_GetSizeMaxFn(ptr, pCbSize));
    if (hr$.isError) {
      free(pCbSize);
      throw WindowsException(hr$);
    }
    final result$ = pCbSize.value;
    free(pCbSize);
    return result$;
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void initNew() {
    final hr$ = HRESULT(_InitNewFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IPersistMemory(ptr: $ptr)';
}

/// @nodoc
base class IPersistMemoryVtbl extends Struct {
  external IPersistVtbl base$;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>> IsDirty;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer pMem, Uint32 cbSize)
    >
  >
  Load;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer pMem,
        BOOL fClearDirty,
        Uint32 cbSize,
      )
    >
  >
  Save;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Uint32> pCbSize)>
  >
  GetSizeMax;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>> InitNew;
}

@internal
final class IPersistMemoryCompanion extends ComCompanion<IPersistMemory> {
  const IPersistMemoryCompanion();

  @pragma('vm:prefer-inline')
  @override
  IPersistMemory Function(VTablePointer) get fromPointer => IPersistMemory.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IPersistMemory;
}
