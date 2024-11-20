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
import 'ienumstatstg.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IEnumSTATSTG = Guid.fromComponents(
  0xd,
  0x0,
  0x0,
  Uint8List.fromList(const [0xc0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x46]),
);

/// Enumerates an array of STATSTG structures.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/objidl/nn-objidl-ienumstatstg>.
///
/// {@category com}
class IEnumSTATSTG extends IUnknown implements ComInterface {
  /// Creates a new instance of [IEnumSTATSTG] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IEnumSTATSTG] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IEnumSTATSTG(super.ptr) : _vtable = ptr.value.cast<IEnumSTATSTGVtbl>().ref;

  /// Creates a new instance of [IEnumSTATSTG] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IEnumSTATSTG] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IEnumSTATSTG.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IEnumSTATSTGVtbl _vtable;
  late final _NextFn =
      _vtable.Next.asFunction<
        int Function(VTablePointer, int, Pointer<STATSTG>, Pointer<Uint32>)
      >();
  late final _SkipFn =
      _vtable.Skip.asFunction<int Function(VTablePointer, int)>();
  late final _ResetFn = _vtable.Reset.asFunction<int Function(VTablePointer)>();
  late final _CloneFn = _vtable
      .Clone.asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();

  /// Retrieves a specified number of STATSTG structures, that follow in the
  /// enumeration sequence.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-ienumstatstg-next>.
  @pragma('vm:prefer-inline')
  void next(int celt, Pointer<STATSTG> rgelt, Pointer<Uint32>? pceltFetched) {
    final hr$ = HRESULT(_NextFn(ptr, celt, rgelt, pceltFetched ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Skips a specified number of STATSTG structures in the enumeration
  /// sequence.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-ienumstatstg-skip>.
  @pragma('vm:prefer-inline')
  void skip(int celt) {
    final hr$ = HRESULT(_SkipFn(ptr, celt));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Resets the enumeration sequence to the beginning of the STATSTG structure
  /// array.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-ienumstatstg-reset>.
  @pragma('vm:prefer-inline')
  void reset() {
    final hr$ = HRESULT(_ResetFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Creates a new enumerator that contains the same enumeration state as the
  /// current STATSTG structure enumerator.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-ienumstatstg-clone>.
  IEnumSTATSTG? clone() {
    final ppenum = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_CloneFn(ptr, ppenum));
    if (hr$.isError) {
      free(ppenum);
      throw WindowsException(hr$);
    }
    final result$ = ppenum.value;
    free(ppenum);
    if (result$.isNull) return null;
    return IEnumSTATSTG(result$);
  }

  @override
  String toString() => 'IEnumSTATSTG(ptr: $ptr)';
}

/// @nodoc
base class IEnumSTATSTGVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 celt,
        Pointer<STATSTG> rgelt,
        Pointer<Uint32> pceltFetched,
      )
    >
  >
  Next;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Uint32 celt)>
  >
  Skip;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>> Reset;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppenum)
    >
  >
  Clone;
}

@internal
final class IEnumSTATSTGCompanion extends ComCompanion<IEnumSTATSTG> {
  const IEnumSTATSTGCompanion();

  @pragma('vm:prefer-inline')
  @override
  IEnumSTATSTG Function(VTablePointer) get fromPointer => IEnumSTATSTG.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IEnumSTATSTG;
}
