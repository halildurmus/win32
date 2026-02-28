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
import 'idcompositiontransform.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IDCompositionMatrixTransform = GUID.fromComponents(
  0x16cdff07,
  0xc503,
  0x419c,
  Uint8List.fromList(const [0x83, 0xf2, 0x9, 0x65, 0xc7, 0xaf, 0x1f, 0xa6]),
);

/// Represents an arbitrary affine 2D transformation defined by a 3-by-2 matrix.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nn-dcomp-idcompositionmatrixtransform>.
///
/// {@category com}
class IDCompositionMatrixTransform extends IDCompositionTransform
    implements ComInterface {
  /// Creates a new instance of [IDCompositionMatrixTransform] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IDCompositionMatrixTransform] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  IDCompositionMatrixTransform(super.ptr)
    : _vtable = ptr.value.cast<IDCompositionMatrixTransformVtbl>().ref;

  /// Creates a new instance of [IDCompositionMatrixTransform] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionMatrixTransform] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionMatrixTransform.from(IUnknown interface) =>
      interface.queryInterface();

  final IDCompositionMatrixTransformVtbl _vtable;
  late final _SetMatrixFn =
      _vtable.SetMatrix.asFunction<
        int Function(VTablePointer, Pointer<D2D_MATRIX_3X2_F>)
      >();
  late final _SetMatrixElementFn =
      _vtable.SetMatrixElement.asFunction<
        int Function(VTablePointer, int, int, VTablePointer)
      >();
  late final _SetMatrixElement2Fn =
      _vtable.SetMatrixElement2.asFunction<
        int Function(VTablePointer, int, int, double)
      >();

  /// Changes all values of the matrix of this 2D transform.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionmatrixtransform-setmatrix>.
  @pragma('vm:prefer-inline')
  void setMatrix(Pointer<D2D_MATRIX_3X2_F> matrix) {
    final hr$ = HRESULT(_SetMatrixFn(ptr, matrix));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Animates the value of one element of the matrix of this 2D transform.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionmatrixtransform-setmatrixelement(int_int_idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setMatrixElement(
    int row,
    int column,
    IDCompositionAnimation? animation,
  ) {
    final hr$ = HRESULT(
      _SetMatrixElementFn(ptr, row, column, animation?.ptr ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Animates the value of one element of the matrix of this 2D transform.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionmatrixtransform-setmatrixelement(int_int_idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setMatrixElement2(int row, int column, double value) {
    final hr$ = HRESULT(_SetMatrixElement2Fn(ptr, row, column, value));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IDCompositionMatrixTransform(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionMatrixTransformVtbl extends Struct {
  external IDCompositionTransformVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<D2D_MATRIX_3X2_F> matrix)
    >
  >
  SetMatrix;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 row,
        Int32 column,
        VTablePointer animation,
      )
    >
  >
  SetMatrixElement;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Int32 row, Int32 column, Float value)
    >
  >
  SetMatrixElement2;
}

@internal
final class IDCompositionMatrixTransformCompanion
    extends ComCompanion<IDCompositionMatrixTransform> {
  const IDCompositionMatrixTransformCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionMatrixTransform Function(VTablePointer) get fromPointer =>
      IDCompositionMatrixTransform.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionMatrixTransform;
}
