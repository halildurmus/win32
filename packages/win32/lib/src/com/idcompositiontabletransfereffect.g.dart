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
import 'idcompositionanimation.g.dart';
import 'idcompositionfiltereffect.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IDCompositionTableTransferEffect = GUID.fromComponents(
  0x9b7e82e2,
  0x69c5,
  0x4eb4,
  Uint8List.fromList(const [0xa5, 0xf5, 0xa7, 0x3, 0x3f, 0x51, 0x32, 0xcd]),
);

/// The table transfer effect is used to map the color intensities of an image
/// using a transfer function created from interpolating a list of values you
/// provide.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nn-dcomp-idcompositiontabletransfereffect>.
///
/// {@category com}
class IDCompositionTableTransferEffect extends IDCompositionFilterEffect
    implements ComInterface {
  /// Creates a new instance of [IDCompositionTableTransferEffect] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IDCompositionTableTransferEffect] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  IDCompositionTableTransferEffect(super.ptr)
    : _vtable = ptr.value.cast<IDCompositionTableTransferEffectVtbl>().ref;

  /// Creates a new instance of [IDCompositionTableTransferEffect] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionTableTransferEffect] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionTableTransferEffect.from(IUnknown interface) =>
      interface.queryInterface();

  final IDCompositionTableTransferEffectVtbl _vtable;
  late final _SetRedTableFn =
      _vtable.SetRedTable.asFunction<
        int Function(VTablePointer, Pointer<Float>, int)
      >();
  late final _SetGreenTableFn =
      _vtable.SetGreenTable.asFunction<
        int Function(VTablePointer, Pointer<Float>, int)
      >();
  late final _SetBlueTableFn =
      _vtable.SetBlueTable.asFunction<
        int Function(VTablePointer, Pointer<Float>, int)
      >();
  late final _SetAlphaTableFn =
      _vtable.SetAlphaTable.asFunction<
        int Function(VTablePointer, Pointer<Float>, int)
      >();
  late final _SetRedDisableFn =
      _vtable.SetRedDisable.asFunction<int Function(VTablePointer, int)>();
  late final _SetGreenDisableFn =
      _vtable.SetGreenDisable.asFunction<int Function(VTablePointer, int)>();
  late final _SetBlueDisableFn =
      _vtable.SetBlueDisable.asFunction<int Function(VTablePointer, int)>();
  late final _SetAlphaDisableFn =
      _vtable.SetAlphaDisable.asFunction<int Function(VTablePointer, int)>();
  late final _SetClampOutputFn =
      _vtable.SetClampOutput.asFunction<int Function(VTablePointer, int)>();
  late final _SetRedTableValueFn =
      _vtable.SetRedTableValue.asFunction<
        int Function(VTablePointer, int, VTablePointer)
      >();
  late final _SetRedTableValue2Fn = _vtable
      .SetRedTableValue2.asFunction<int Function(VTablePointer, int, double)>();
  late final _SetGreenTableValueFn =
      _vtable.SetGreenTableValue.asFunction<
        int Function(VTablePointer, int, VTablePointer)
      >();
  late final _SetGreenTableValue2Fn =
      _vtable.SetGreenTableValue2.asFunction<
        int Function(VTablePointer, int, double)
      >();
  late final _SetBlueTableValueFn =
      _vtable.SetBlueTableValue.asFunction<
        int Function(VTablePointer, int, VTablePointer)
      >();
  late final _SetBlueTableValue2Fn =
      _vtable.SetBlueTableValue2.asFunction<
        int Function(VTablePointer, int, double)
      >();
  late final _SetAlphaTableValueFn =
      _vtable.SetAlphaTableValue.asFunction<
        int Function(VTablePointer, int, VTablePointer)
      >();
  late final _SetAlphaTableValue2Fn =
      _vtable.SetAlphaTableValue2.asFunction<
        int Function(VTablePointer, int, double)
      >();

  /// Sets the list of values used to define the transfer function for the red
  /// channel.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiontabletransfereffect-setredtable>.
  @pragma('vm:prefer-inline')
  void setRedTable(Pointer<Float> tableValues, int count) {
    final hr$ = HRESULT(_SetRedTableFn(ptr, tableValues, count));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the list of values used to define the transfer function for the green
  /// channel.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiontabletransfereffect-setgreentable>.
  @pragma('vm:prefer-inline')
  void setGreenTable(Pointer<Float> tableValues, int count) {
    final hr$ = HRESULT(_SetGreenTableFn(ptr, tableValues, count));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the list of values used to define the transfer function for the blue
  /// channel.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiontabletransfereffect-setbluetable>.
  @pragma('vm:prefer-inline')
  void setBlueTable(Pointer<Float> tableValues, int count) {
    final hr$ = HRESULT(_SetBlueTableFn(ptr, tableValues, count));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the list of values used to define the transfer function for the alpha
  /// channel.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiontabletransfereffect-setalphatable>.
  @pragma('vm:prefer-inline')
  void setAlphaTable(Pointer<Float> tableValues, int count) {
    final hr$ = HRESULT(_SetAlphaTableFn(ptr, tableValues, count));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Specifies whether to apply the transfer function to the red channel.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiontabletransfereffect-setreddisable>.
  @pragma('vm:prefer-inline')
  void setRedDisable(bool redDisable) {
    final hr$ = HRESULT(_SetRedDisableFn(ptr, redDisable ? TRUE : FALSE));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Specifies whether to apply the transfer function to the green channel.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiontabletransfereffect-setgreendisable>.
  @pragma('vm:prefer-inline')
  void setGreenDisable(bool greenDisable) {
    final hr$ = HRESULT(_SetGreenDisableFn(ptr, greenDisable ? TRUE : FALSE));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Specifies whether to apply the transfer function to the blue channel.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiontabletransfereffect-setbluedisable>.
  @pragma('vm:prefer-inline')
  void setBlueDisable(bool blueDisable) {
    final hr$ = HRESULT(_SetBlueDisableFn(ptr, blueDisable ? TRUE : FALSE));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Specifies whether to apply the transfer function to the Alpha channel.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiontabletransfereffect-setalphadisable>.
  @pragma('vm:prefer-inline')
  void setAlphaDisable(bool alphaDisable) {
    final hr$ = HRESULT(_SetAlphaDisableFn(ptr, alphaDisable ? TRUE : FALSE));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Specifies whether the effect clamps color values to between 0 and 1 before
  /// the effect passes the values to the next effect in the graph.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiontabletransfereffect-setclampoutput>.
  @pragma('vm:prefer-inline')
  void setClampOutput(bool clampOutput) {
    final hr$ = HRESULT(_SetClampOutputFn(ptr, clampOutput ? TRUE : FALSE));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets a value in the red table. (overload 2/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiontabletransfereffect-setredtablevalue(uint_idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setRedTableValue(int index, IDCompositionAnimation? animation) {
    final hr$ = HRESULT(
      _SetRedTableValueFn(ptr, index, animation?.ptr ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets a value in the red table. (overload 2/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiontabletransfereffect-setredtablevalue(uint_idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setRedTableValue2(int index, double value) {
    final hr$ = HRESULT(_SetRedTableValue2Fn(ptr, index, value));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets a value in the green table. (overload 1/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiontabletransfereffect-setgreentablevalue(uint_idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setGreenTableValue(int index, IDCompositionAnimation? animation) {
    final hr$ = HRESULT(
      _SetGreenTableValueFn(ptr, index, animation?.ptr ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets a value in the green table. (overload 1/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiontabletransfereffect-setgreentablevalue(uint_idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setGreenTableValue2(int index, double value) {
    final hr$ = HRESULT(_SetGreenTableValue2Fn(ptr, index, value));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets a value in the blue table. (overload 1/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiontabletransfereffect-setbluetablevalue(uint_idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setBlueTableValue(int index, IDCompositionAnimation? animation) {
    final hr$ = HRESULT(
      _SetBlueTableValueFn(ptr, index, animation?.ptr ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets a value in the blue table. (overload 1/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiontabletransfereffect-setbluetablevalue(uint_idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setBlueTableValue2(int index, double value) {
    final hr$ = HRESULT(_SetBlueTableValue2Fn(ptr, index, value));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets a value in the alpha table. (overload 2/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiontabletransfereffect-setalphatablevalue(uint_idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setAlphaTableValue(int index, IDCompositionAnimation? animation) {
    final hr$ = HRESULT(
      _SetAlphaTableValueFn(ptr, index, animation?.ptr ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets a value in the alpha table. (overload 2/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiontabletransfereffect-setalphatablevalue(uint_idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setAlphaTableValue2(int index, double value) {
    final hr$ = HRESULT(_SetAlphaTableValue2Fn(ptr, index, value));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IDCompositionTableTransferEffect(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionTableTransferEffectVtbl extends Struct {
  external IDCompositionFilterEffectVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Float> tableValues,
        Uint32 count,
      )
    >
  >
  SetRedTable;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Float> tableValues,
        Uint32 count,
      )
    >
  >
  SetGreenTable;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Float> tableValues,
        Uint32 count,
      )
    >
  >
  SetBlueTable;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Float> tableValues,
        Uint32 count,
      )
    >
  >
  SetAlphaTable;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 redDisable)>
  >
  SetRedDisable;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 greenDisable)>
  >
  SetGreenDisable;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 blueDisable)>
  >
  SetBlueDisable;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 alphaDisable)>
  >
  SetAlphaDisable;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 clampOutput)>
  >
  SetClampOutput;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Uint32 index, VTablePointer animation)
    >
  >
  SetRedTableValue;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Uint32 index, Float value)
    >
  >
  SetRedTableValue2;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Uint32 index, VTablePointer animation)
    >
  >
  SetGreenTableValue;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Uint32 index, Float value)
    >
  >
  SetGreenTableValue2;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Uint32 index, VTablePointer animation)
    >
  >
  SetBlueTableValue;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Uint32 index, Float value)
    >
  >
  SetBlueTableValue2;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Uint32 index, VTablePointer animation)
    >
  >
  SetAlphaTableValue;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Uint32 index, Float value)
    >
  >
  SetAlphaTableValue2;
}

@internal
final class IDCompositionTableTransferEffectCompanion
    extends ComCompanion<IDCompositionTableTransferEffect> {
  const IDCompositionTableTransferEffectCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionTableTransferEffect Function(VTablePointer) get fromPointer =>
      IDCompositionTableTransferEffect.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionTableTransferEffect;
}
