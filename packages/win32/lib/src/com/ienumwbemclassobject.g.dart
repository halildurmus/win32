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
import 'ienumwbemclassobject.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';
import 'iwbemclassobject.g.dart';
import 'iwbemobjectsink.g.dart';

/// @nodoc
final IID_IEnumWbemClassObject = Guid.fromComponents(
  0x27947e1,
  0xd731,
  0x11ce,
  Uint8List.fromList(const [0xa3, 0x57, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1]),
);

/// Used to enumerate Common Information Model (CIM) objects and is similar to a
/// standard COM enumerator.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wbemcli/nn-wbemcli-ienumwbemclassobject>.
///
/// {@category com}
class IEnumWbemClassObject extends IUnknown implements ComInterface {
  /// Creates a new instance of [IEnumWbemClassObject] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IEnumWbemClassObject]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IEnumWbemClassObject(super.ptr)
    : _vtable = ptr.value.cast<IEnumWbemClassObjectVtbl>().ref;

  /// Creates a new instance of [IEnumWbemClassObject] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IEnumWbemClassObject] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IEnumWbemClassObject.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IEnumWbemClassObjectVtbl _vtable;
  late final _ResetFn = _vtable.Reset.asFunction<int Function(VTablePointer)>();
  late final _NextFn =
      _vtable.Next.asFunction<
        int Function(
          VTablePointer,
          int,
          int,
          Pointer<VTablePointer>,
          Pointer<Uint32>,
        )
      >();
  late final _NextAsyncFn = _vtable
      .NextAsync.asFunction<int Function(VTablePointer, int, VTablePointer)>();
  late final _CloneFn = _vtable
      .Clone.asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _SkipFn =
      _vtable.Skip.asFunction<int Function(VTablePointer, int, int)>();

  /// Resets an enumeration sequence back to the beginning.
  ///
  /// Because CIM objects are dynamic, calling this method does not necessarily
  /// return the same list of objects that you obtained previously.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-ienumwbemclassobject-reset>.
  @pragma('vm:prefer-inline')
  void reset() {
    final hr$ = HRESULT(_ResetFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Use the `IEnumWbemClassObject.next` method to get one or more objects
  /// starting at the current position in an enumeration.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-ienumwbemclassobject-next>.
  @pragma('vm:prefer-inline')
  HRESULT next(
    int lTimeout,
    int uCount,
    Pointer<VTablePointer> apObjects,
    Pointer<Uint32> puReturned,
  ) => HRESULT(_NextFn(ptr, lTimeout, uCount, apObjects, puReturned));

  /// Use the NextAsync method when a controlled asynchronous retrieval of
  /// objects to a sink is required.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-ienumwbemclassobject-nextasync>.
  @pragma('vm:prefer-inline')
  HRESULT nextAsync(int uCount, IWbemObjectSink? pSink) =>
      HRESULT(_NextAsyncFn(ptr, uCount, pSink?.ptr ?? nullptr));

  /// Makes a logical copy of the entire enumerator, retaining its current
  /// position in an enumeration.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-ienumwbemclassobject-clone>.
  IEnumWbemClassObject? clone() {
    final ppEnum = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_CloneFn(ptr, ppEnum));
    if (hr$.isError) {
      free(ppEnum);
      throw WindowsException(hr$);
    }
    final result$ = ppEnum.value;
    free(ppEnum);
    if (result$.isNull) return null;
    return IEnumWbemClassObject(result$);
  }

  /// You can use the `IEnumWbemClassObject.skip` method to move the current
  /// position in an enumeration ahead by a specified number of objects.
  ///
  /// Also, this affects subsequent calls to NextAsync, but it does not affect
  /// pending deliveries begun with NextAsync.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-ienumwbemclassobject-skip>.
  @pragma('vm:prefer-inline')
  HRESULT skip(int lTimeout, int nCount) =>
      HRESULT(_SkipFn(ptr, lTimeout, nCount));

  @override
  String toString() => 'IEnumWbemClassObject(ptr: $ptr)';
}

/// @nodoc
base class IEnumWbemClassObjectVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>> Reset;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 lTimeout,
        Uint32 uCount,
        Pointer<VTablePointer> apObjects,
        Pointer<Uint32> puReturned,
      )
    >
  >
  Next;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Uint32 uCount, VTablePointer pSink)
    >
  >
  NextAsync;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppEnum)
    >
  >
  Clone;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Int32 lTimeout, Uint32 nCount)
    >
  >
  Skip;
}

@internal
final class IEnumWbemClassObjectCompanion
    extends ComCompanion<IEnumWbemClassObject> {
  const IEnumWbemClassObjectCompanion();

  @pragma('vm:prefer-inline')
  @override
  IEnumWbemClassObject Function(VTablePointer) get fromPointer =>
      IEnumWbemClassObject.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IEnumWbemClassObject;
}
