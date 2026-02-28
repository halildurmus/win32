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
import 'idcompositionclip.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IDCompositionRectangleClip = GUID.fromComponents(
  0x9842ad7d,
  0xd9cf,
  0x4908,
  Uint8List.fromList(const [0xae, 0xd7, 0x48, 0xb5, 0x1d, 0xa5, 0xe7, 0xc2]),
);

/// Represents a clip object that restricts the rendering of a visual subtree to
/// the specified rectangular region.
///
/// Optionally, the clip object may have rounded corners specified.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nn-dcomp-idcompositionrectangleclip>.
///
/// {@category com}
class IDCompositionRectangleClip extends IDCompositionClip
    implements ComInterface {
  /// Creates a new instance of [IDCompositionRectangleClip] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IDCompositionRectangleClip] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  IDCompositionRectangleClip(super.ptr)
    : _vtable = ptr.value.cast<IDCompositionRectangleClipVtbl>().ref;

  /// Creates a new instance of [IDCompositionRectangleClip] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionRectangleClip] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionRectangleClip.from(IUnknown interface) =>
      interface.queryInterface();

  final IDCompositionRectangleClipVtbl _vtable;
  late final _SetLeftFn =
      _vtable.SetLeft.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetLeft2Fn =
      _vtable.SetLeft2.asFunction<int Function(VTablePointer, double)>();
  late final _SetTopFn =
      _vtable.SetTop.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetTop2Fn =
      _vtable.SetTop2.asFunction<int Function(VTablePointer, double)>();
  late final _SetRightFn =
      _vtable.SetRight.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetRight2Fn =
      _vtable.SetRight2.asFunction<int Function(VTablePointer, double)>();
  late final _SetBottomFn = _vtable
      .SetBottom.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetBottom2Fn =
      _vtable.SetBottom2.asFunction<int Function(VTablePointer, double)>();
  late final _SetTopLeftRadiusXFn =
      _vtable.SetTopLeftRadiusX.asFunction<
        int Function(VTablePointer, VTablePointer)
      >();
  late final _SetTopLeftRadiusX2Fn = _vtable
      .SetTopLeftRadiusX2.asFunction<int Function(VTablePointer, double)>();
  late final _SetTopLeftRadiusYFn =
      _vtable.SetTopLeftRadiusY.asFunction<
        int Function(VTablePointer, VTablePointer)
      >();
  late final _SetTopLeftRadiusY2Fn = _vtable
      .SetTopLeftRadiusY2.asFunction<int Function(VTablePointer, double)>();
  late final _SetTopRightRadiusXFn =
      _vtable.SetTopRightRadiusX.asFunction<
        int Function(VTablePointer, VTablePointer)
      >();
  late final _SetTopRightRadiusX2Fn = _vtable
      .SetTopRightRadiusX2.asFunction<int Function(VTablePointer, double)>();
  late final _SetTopRightRadiusYFn =
      _vtable.SetTopRightRadiusY.asFunction<
        int Function(VTablePointer, VTablePointer)
      >();
  late final _SetTopRightRadiusY2Fn = _vtable
      .SetTopRightRadiusY2.asFunction<int Function(VTablePointer, double)>();
  late final _SetBottomLeftRadiusXFn =
      _vtable.SetBottomLeftRadiusX.asFunction<
        int Function(VTablePointer, VTablePointer)
      >();
  late final _SetBottomLeftRadiusX2Fn = _vtable
      .SetBottomLeftRadiusX2.asFunction<int Function(VTablePointer, double)>();
  late final _SetBottomLeftRadiusYFn =
      _vtable.SetBottomLeftRadiusY.asFunction<
        int Function(VTablePointer, VTablePointer)
      >();
  late final _SetBottomLeftRadiusY2Fn = _vtable
      .SetBottomLeftRadiusY2.asFunction<int Function(VTablePointer, double)>();
  late final _SetBottomRightRadiusXFn =
      _vtable.SetBottomRightRadiusX.asFunction<
        int Function(VTablePointer, VTablePointer)
      >();
  late final _SetBottomRightRadiusX2Fn = _vtable
      .SetBottomRightRadiusX2.asFunction<int Function(VTablePointer, double)>();
  late final _SetBottomRightRadiusYFn =
      _vtable.SetBottomRightRadiusY.asFunction<
        int Function(VTablePointer, VTablePointer)
      >();
  late final _SetBottomRightRadiusY2Fn = _vtable
      .SetBottomRightRadiusY2.asFunction<int Function(VTablePointer, double)>();

  /// Changes the value of the Left property of a clip rectangle.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionrectangleclip-setleft(float)>.
  @pragma('vm:prefer-inline')
  void setLeft(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetLeftFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes the value of the Left property of a clip rectangle.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionrectangleclip-setleft(float)>.
  @pragma('vm:prefer-inline')
  void setLeft2(double left) {
    final hr$ = HRESULT(_SetLeft2Fn(ptr, left));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes the value of the Top property of a clip rectangle.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionrectangleclip-settop(float)>.
  @pragma('vm:prefer-inline')
  void setTop(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetTopFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes the value of the Top property of a clip rectangle.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionrectangleclip-settop(float)>.
  @pragma('vm:prefer-inline')
  void setTop2(double top) {
    final hr$ = HRESULT(_SetTop2Fn(ptr, top));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Animates the value of the Right property of a clip rectangle.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionrectangleclip-setright(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setRight(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetRightFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Animates the value of the Right property of a clip rectangle.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionrectangleclip-setright(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setRight2(double right) {
    final hr$ = HRESULT(_SetRight2Fn(ptr, right));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes the value of the Bottom property of a clip object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionrectangleclip-setbottom(float)>.
  @pragma('vm:prefer-inline')
  void setBottom(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetBottomFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes the value of the Bottom property of a clip object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionrectangleclip-setbottom(float)>.
  @pragma('vm:prefer-inline')
  void setBottom2(double bottom) {
    final hr$ = HRESULT(_SetBottom2Fn(ptr, bottom));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes or animates the value of the TopLeftRadiusX property of this clip.
  ///
  /// The TopLeftRadiusX property specifies the x radius of the ellipse that
  /// rounds the top-left corner of the clip.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/directcomp/idcompositionrectangleclip-settopleftradiusx>.
  @pragma('vm:prefer-inline')
  void setTopLeftRadiusX(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetTopLeftRadiusXFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes or animates the value of the TopLeftRadiusX property of this clip.
  ///
  /// The TopLeftRadiusX property specifies the x radius of the ellipse that
  /// rounds the top-left corner of the clip.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/directcomp/idcompositionrectangleclip-settopleftradiusx>.
  @pragma('vm:prefer-inline')
  void setTopLeftRadiusX2(double radius) {
    final hr$ = HRESULT(_SetTopLeftRadiusX2Fn(ptr, radius));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes or animates the value of the TopLeftRadiusY property of this clip.
  ///
  /// The TopLeftRadiusY property specifies the y radius of the ellipse that
  /// rounds the top-left corner of the clip.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/directcomp/idcompositionrectangleclip-settopleftradiusy>.
  @pragma('vm:prefer-inline')
  void setTopLeftRadiusY(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetTopLeftRadiusYFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes or animates the value of the TopLeftRadiusY property of this clip.
  ///
  /// The TopLeftRadiusY property specifies the y radius of the ellipse that
  /// rounds the top-left corner of the clip.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/directcomp/idcompositionrectangleclip-settopleftradiusy>.
  @pragma('vm:prefer-inline')
  void setTopLeftRadiusY2(double radius) {
    final hr$ = HRESULT(_SetTopLeftRadiusY2Fn(ptr, radius));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes or animates the value of the TopRightRadiusX property of this
  /// clip.
  ///
  /// The TopRightRadiusX property specifies the x radius of the ellipse that
  /// rounds the top-right corner of the clip.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/directcomp/idcompositionrectangleclip-settoprightradiusx>.
  @pragma('vm:prefer-inline')
  void setTopRightRadiusX(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetTopRightRadiusXFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes or animates the value of the TopRightRadiusX property of this
  /// clip.
  ///
  /// The TopRightRadiusX property specifies the x radius of the ellipse that
  /// rounds the top-right corner of the clip.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/directcomp/idcompositionrectangleclip-settoprightradiusx>.
  @pragma('vm:prefer-inline')
  void setTopRightRadiusX2(double radius) {
    final hr$ = HRESULT(_SetTopRightRadiusX2Fn(ptr, radius));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes or animates the value of the TopRightRadiusY property of this
  /// clip.
  ///
  /// The TopRightRadiusY property specifies the y radius of the ellipse that
  /// rounds the top-right corner of the clip.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/directcomp/idcompositionrectangleclip-settoprightradiusy>.
  @pragma('vm:prefer-inline')
  void setTopRightRadiusY(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetTopRightRadiusYFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes or animates the value of the TopRightRadiusY property of this
  /// clip.
  ///
  /// The TopRightRadiusY property specifies the y radius of the ellipse that
  /// rounds the top-right corner of the clip.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/directcomp/idcompositionrectangleclip-settoprightradiusy>.
  @pragma('vm:prefer-inline')
  void setTopRightRadiusY2(double radius) {
    final hr$ = HRESULT(_SetTopRightRadiusY2Fn(ptr, radius));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes or animates the value of the BottomLeftRadiusX property of this
  /// clip.
  ///
  /// The BottomLeftRadiusX property specifies the x radius of the ellipse that
  /// rounds the lower-left corner of the clip.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/directcomp/idcompositionrectangleclip-setbottomleftradiusx>.
  @pragma('vm:prefer-inline')
  void setBottomLeftRadiusX(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(
      _SetBottomLeftRadiusXFn(ptr, animation?.ptr ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes or animates the value of the BottomLeftRadiusX property of this
  /// clip.
  ///
  /// The BottomLeftRadiusX property specifies the x radius of the ellipse that
  /// rounds the lower-left corner of the clip.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/directcomp/idcompositionrectangleclip-setbottomleftradiusx>.
  @pragma('vm:prefer-inline')
  void setBottomLeftRadiusX2(double radius) {
    final hr$ = HRESULT(_SetBottomLeftRadiusX2Fn(ptr, radius));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes or animates the value of the BottomLeftRadiusY property of this
  /// clip.
  ///
  /// The BottomLeftRadiusY property specifies the y radius of the ellipse that
  /// rounds the lower-left corner of the clip.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/directcomp/idcompositionrectangleclip-setbottomleftradiusy>.
  @pragma('vm:prefer-inline')
  void setBottomLeftRadiusY(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(
      _SetBottomLeftRadiusYFn(ptr, animation?.ptr ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes or animates the value of the BottomLeftRadiusY property of this
  /// clip.
  ///
  /// The BottomLeftRadiusY property specifies the y radius of the ellipse that
  /// rounds the lower-left corner of the clip.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/directcomp/idcompositionrectangleclip-setbottomleftradiusy>.
  @pragma('vm:prefer-inline')
  void setBottomLeftRadiusY2(double radius) {
    final hr$ = HRESULT(_SetBottomLeftRadiusY2Fn(ptr, radius));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes or animates the value of the BottomRightRadiusX property of this
  /// clip.
  ///
  /// The BottomRightRadiusX property specifies the x radius of the ellipse that
  /// rounds the lower-right corner of the clip.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/directcomp/idcompositionrectangleclip-setbottomrightradiusx>.
  @pragma('vm:prefer-inline')
  void setBottomRightRadiusX(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(
      _SetBottomRightRadiusXFn(ptr, animation?.ptr ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes or animates the value of the BottomRightRadiusX property of this
  /// clip.
  ///
  /// The BottomRightRadiusX property specifies the x radius of the ellipse that
  /// rounds the lower-right corner of the clip.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/directcomp/idcompositionrectangleclip-setbottomrightradiusx>.
  @pragma('vm:prefer-inline')
  void setBottomRightRadiusX2(double radius) {
    final hr$ = HRESULT(_SetBottomRightRadiusX2Fn(ptr, radius));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes or animates the value of the BottomRightRadiusY property of this
  /// clip.
  ///
  /// The BottomRightRadiusY property specifies the y radius of the ellipse that
  /// rounds the lower-right corner of the clip.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/directcomp/idcompositionrectangleclip-setbottomrightradiusy>.
  @pragma('vm:prefer-inline')
  void setBottomRightRadiusY(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(
      _SetBottomRightRadiusYFn(ptr, animation?.ptr ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes or animates the value of the BottomRightRadiusY property of this
  /// clip.
  ///
  /// The BottomRightRadiusY property specifies the y radius of the ellipse that
  /// rounds the lower-right corner of the clip.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/directcomp/idcompositionrectangleclip-setbottomrightradiusy>.
  @pragma('vm:prefer-inline')
  void setBottomRightRadiusY2(double radius) {
    final hr$ = HRESULT(_SetBottomRightRadiusY2Fn(ptr, radius));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IDCompositionRectangleClip(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionRectangleClipVtbl extends Struct {
  external IDCompositionClipVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetLeft;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float left)>
  >
  SetLeft2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetTop;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float top)>
  >
  SetTop2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetRight;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float right)>
  >
  SetRight2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetBottom;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float bottom)>
  >
  SetBottom2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetTopLeftRadiusX;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float radius)>
  >
  SetTopLeftRadiusX2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetTopLeftRadiusY;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float radius)>
  >
  SetTopLeftRadiusY2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetTopRightRadiusX;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float radius)>
  >
  SetTopRightRadiusX2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetTopRightRadiusY;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float radius)>
  >
  SetTopRightRadiusY2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetBottomLeftRadiusX;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float radius)>
  >
  SetBottomLeftRadiusX2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetBottomLeftRadiusY;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float radius)>
  >
  SetBottomLeftRadiusY2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetBottomRightRadiusX;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float radius)>
  >
  SetBottomRightRadiusX2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetBottomRightRadiusY;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float radius)>
  >
  SetBottomRightRadiusY2;
}

@internal
final class IDCompositionRectangleClipCompanion
    extends ComCompanion<IDCompositionRectangleClip> {
  const IDCompositionRectangleClipCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionRectangleClip Function(VTablePointer) get fromPointer =>
      IDCompositionRectangleClip.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionRectangleClip;
}
