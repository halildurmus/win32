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
import 'ienumspobjecttokens.g.dart';
import 'interface.g.dart';
import 'ispobjecttoken.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IEnumSpObjectTokens = Guid.fromComponents(
  0x6b64f9e,
  0x7fda,
  0x11d2,
  Uint8List.fromList(const [0xb4, 0xf2, 0x0, 0xc0, 0x4f, 0x79, 0x73, 0x96]),
);

/// {@category com}
class IEnumSpObjectTokens extends IUnknown implements ComInterface {
  /// Creates a new instance of [IEnumSpObjectTokens] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IEnumSpObjectTokens]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IEnumSpObjectTokens(super.ptr)
    : _vtable = ptr.value.cast<IEnumSpObjectTokensVtbl>().ref;

  /// Creates a new instance of [IEnumSpObjectTokens] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IEnumSpObjectTokens] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IEnumSpObjectTokens.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IEnumSpObjectTokensVtbl _vtable;
  late final _NextFn =
      _vtable.Next.asFunction<
        int Function(
          VTablePointer,
          int,
          Pointer<VTablePointer>,
          Pointer<Uint32>,
        )
      >();
  late final _SkipFn =
      _vtable.Skip.asFunction<int Function(VTablePointer, int)>();
  late final _ResetFn = _vtable.Reset.asFunction<int Function(VTablePointer)>();
  late final _CloneFn = _vtable
      .Clone.asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _ItemFn =
      _vtable.Item.asFunction<
        int Function(VTablePointer, int, Pointer<VTablePointer>)
      >();
  late final _GetCountFn = _vtable
      .GetCount.asFunction<int Function(VTablePointer, Pointer<Uint32>)>();

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void next(
    int celt,
    Pointer<VTablePointer> pelt,
    Pointer<Uint32>? pceltFetched,
  ) {
    final hr$ = HRESULT(_NextFn(ptr, celt, pelt, pceltFetched ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void skip(int celt) {
    final hr$ = HRESULT(_SkipFn(ptr, celt));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void reset() {
    final hr$ = HRESULT(_ResetFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  IEnumSpObjectTokens? clone() {
    final ppEnum = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_CloneFn(ptr, ppEnum));
    if (hr$.isError) {
      free(ppEnum);
      throw WindowsException(hr$);
    }
    final result$ = ppEnum.value;
    free(ppEnum);
    if (result$.isNull) return null;
    return IEnumSpObjectTokens(result$);
  }

  /// Throws a [WindowsException] on failure.
  ISpObjectToken? item(int index) {
    final ppToken = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_ItemFn(ptr, index, ppToken));
    if (hr$.isError) {
      free(ppToken);
      throw WindowsException(hr$);
    }
    final result$ = ppToken.value;
    free(ppToken);
    if (result$.isNull) return null;
    return ISpObjectToken(result$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void getCount(Pointer<Uint32> pCount) {
    final hr$ = HRESULT(_GetCountFn(ptr, pCount));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IEnumSpObjectTokens(ptr: $ptr)';
}

/// @nodoc
base class IEnumSpObjectTokensVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 celt,
        Pointer<VTablePointer> pelt,
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
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppEnum)
    >
  >
  Clone;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 index,
        Pointer<VTablePointer> ppToken,
      )
    >
  >
  Item;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Uint32> pCount)>
  >
  GetCount;
}

@internal
final class IEnumSpObjectTokensCompanion
    extends ComCompanion<IEnumSpObjectTokens> {
  const IEnumSpObjectTokensCompanion();

  @pragma('vm:prefer-inline')
  @override
  IEnumSpObjectTokens Function(VTablePointer) get fromPointer =>
      IEnumSpObjectTokens.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IEnumSpObjectTokens;
}
