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
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IDCompositionSurface = GUID.fromComponents(
  0xbb8a4953,
  0x2c99,
  0x4f5a,
  Uint8List.fromList(const [0x96, 0xf5, 0x48, 0x19, 0x2, 0x7f, 0xa3, 0xac]),
);

/// Represents a physical bitmap that can be associated with a visual for
/// composition in a visual tree.
///
/// This interface can also be used to update the bitmap contents.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nn-dcomp-idcompositionsurface>.
///
/// {@category com}
class IDCompositionSurface extends IUnknown implements ComInterface {
  /// Creates a new instance of [IDCompositionSurface] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IDCompositionSurface]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  IDCompositionSurface(super.ptr)
    : _vtable = ptr.value.cast<IDCompositionSurfaceVtbl>().ref;

  /// Creates a new instance of [IDCompositionSurface] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionSurface] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionSurface.from(IUnknown interface) =>
      interface.queryInterface();

  final IDCompositionSurfaceVtbl _vtable;
  late final _BeginDrawFn =
      _vtable.BeginDraw.asFunction<
        int Function(
          VTablePointer,
          Pointer<RECT>,
          Pointer<GUID>,
          Pointer<Pointer>,
          Pointer<POINT>,
        )
      >();
  late final _EndDrawFn =
      _vtable.EndDraw.asFunction<int Function(VTablePointer)>();
  late final _SuspendDrawFn =
      _vtable.SuspendDraw.asFunction<int Function(VTablePointer)>();
  late final _ResumeDrawFn =
      _vtable.ResumeDraw.asFunction<int Function(VTablePointer)>();
  late final _ScrollFn =
      _vtable.Scroll.asFunction<
        int Function(VTablePointer, Pointer<RECT>, Pointer<RECT>, int, int)
      >();

  /// Initiates drawing on this Microsoft DirectComposition surface object.
  ///
  /// This method uses the [ComInterface.type] method to retrieve metadata about
  /// the target interface defined by [T], including its IID (Interface ID) and
  /// instantiation logic.
  ///
  /// All COM interfaces provided by this package are pre-registered. Custom COM
  /// interfaces must be registered manually using the [ComInterface.register]
  /// method before calling this method.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionsurface-begindraw>.
  T beginDraw<T extends IUnknown>(
    Pointer<RECT>? updateRect,
    Pointer<POINT> updateOffset,
  ) {
    final companion = ComInterface.type<T>();
    final iid = companion.iid.toNative();
    final updateObject = adaptiveCalloc<Pointer>();
    final hr$ = HRESULT(
      _BeginDrawFn(ptr, updateRect ?? nullptr, iid, updateObject, updateOffset),
    );
    free(iid);
    if (hr$.isError) {
      free(updateObject);
      throw WindowsException(hr$);
    }
    final result = companion.fromPointer(updateObject.value.cast());
    free(updateObject);
    return result;
  }

  /// Marks the end of drawing on this Microsoft DirectComposition surface
  /// object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionsurface-enddraw>.
  @pragma('vm:prefer-inline')
  void endDraw() {
    final hr$ = HRESULT(_EndDrawFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Suspends the drawing on this Microsoft DirectComposition surface object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionsurface-suspenddraw>.
  @pragma('vm:prefer-inline')
  void suspendDraw() {
    final hr$ = HRESULT(_SuspendDrawFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Resumes drawing on this Microsoft DirectComposition surface object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionsurface-resumedraw>.
  @pragma('vm:prefer-inline')
  void resumeDraw() {
    final hr$ = HRESULT(_ResumeDrawFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Scrolls a rectangular area of a Microsoft DirectComposition logical
  /// surface.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionsurface-scroll>.
  @pragma('vm:prefer-inline')
  void scroll(
    Pointer<RECT>? scrollRect,
    Pointer<RECT>? clipRect,
    int offsetX,
    int offsetY,
  ) {
    final hr$ = HRESULT(
      _ScrollFn(
        ptr,
        scrollRect ?? nullptr,
        clipRect ?? nullptr,
        offsetX,
        offsetY,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IDCompositionSurface(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionSurfaceVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<RECT> updateRect,
        Pointer<GUID> iid,
        Pointer<Pointer> updateObject,
        Pointer<POINT> updateOffset,
      )
    >
  >
  BeginDraw;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>> EndDraw;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  SuspendDraw;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  ResumeDraw;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<RECT> scrollRect,
        Pointer<RECT> clipRect,
        Int32 offsetX,
        Int32 offsetY,
      )
    >
  >
  Scroll;
}

@internal
final class IDCompositionSurfaceCompanion
    extends ComCompanion<IDCompositionSurface> {
  const IDCompositionSurfaceCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionSurface Function(VTablePointer) get fromPointer =>
      IDCompositionSurface.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionSurface;
}
