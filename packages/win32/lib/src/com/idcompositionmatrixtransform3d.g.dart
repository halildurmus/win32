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
import 'idcompositiontransform3d.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IDCompositionMatrixTransform3D = GUID.fromComponents(
  0x4b3363f0,
  0x643b,
  0x41b7,
  Uint8List.fromList(const [0xb6, 0xe0, 0xcc, 0xf2, 0x2d, 0x34, 0x46, 0x7c]),
);

/// Represents an arbitrary 3D transformation defined by a 4-by-4 matrix.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nn-dcomp-idcompositionmatrixtransform3d>.
///
/// {@category com}
class IDCompositionMatrixTransform3D extends IDCompositionTransform3D
    implements ComInterface {
  /// Creates a new instance of [IDCompositionMatrixTransform3D] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IDCompositionMatrixTransform3D] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  IDCompositionMatrixTransform3D(super.ptr)
    : _vtable = ptr.value.cast<IDCompositionMatrixTransform3DVtbl>().ref;

  /// Creates a new instance of [IDCompositionMatrixTransform3D] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionMatrixTransform3D] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionMatrixTransform3D.from(IUnknown interface) =>
      interface.queryInterface();

  final IDCompositionMatrixTransform3DVtbl _vtable;
  late final _SetMatrixFn = _vtable
      .SetMatrix.asFunction<int Function(VTablePointer, Pointer<D3DMATRIX>)>();
  late final _SetMatrixElementFn =
      _vtable.SetMatrixElement.asFunction<
        int Function(VTablePointer, int, int, VTablePointer)
      >();
  late final _SetMatrixElement2Fn =
      _vtable.SetMatrixElement2.asFunction<
        int Function(VTablePointer, int, int, double)
      >();

  /// Changes all values of the matrix of this 3D transformation effect.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionmatrixtransform3d-setmatrix>.
  @pragma('vm:prefer-inline')
  void setMatrix(Pointer<D3DMATRIX> matrix) {
    final hr$ = HRESULT(_SetMatrixFn(ptr, matrix));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Animates the value of one element of the matrix of this 3D transform.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionmatrixtransform3d-setmatrixelement(int_int_idcompositionanimation)>.
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

  /// Animates the value of one element of the matrix of this 3D transform.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionmatrixtransform3d-setmatrixelement(int_int_idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setMatrixElement2(int row, int column, double value) {
    final hr$ = HRESULT(_SetMatrixElement2Fn(ptr, row, column, value));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IDCompositionMatrixTransform3D(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionMatrixTransform3DVtbl extends Struct {
  external IDCompositionTransform3DVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<D3DMATRIX> matrix)
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
final class IDCompositionMatrixTransform3DCompanion
    extends ComCompanion<IDCompositionMatrixTransform3D> {
  const IDCompositionMatrixTransform3DCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionMatrixTransform3D Function(VTablePointer) get fromPointer =>
      IDCompositionMatrixTransform3D.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionMatrixTransform3D;
}
