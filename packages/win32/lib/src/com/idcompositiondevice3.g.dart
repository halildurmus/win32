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
import 'idcompositionaffinetransform2deffect.g.dart';
import 'idcompositionarithmeticcompositeeffect.g.dart';
import 'idcompositionblendeffect.g.dart';
import 'idcompositionbrightnesseffect.g.dart';
import 'idcompositioncolormatrixeffect.g.dart';
import 'idcompositioncompositeeffect.g.dart';
import 'idcompositiondevice2.g.dart';
import 'idcompositiongaussianblureffect.g.dart';
import 'idcompositionhuerotationeffect.g.dart';
import 'idcompositionlineartransfereffect.g.dart';
import 'idcompositionsaturationeffect.g.dart';
import 'idcompositionshadoweffect.g.dart';
import 'idcompositiontabletransfereffect.g.dart';
import 'idcompositionturbulenceeffect.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IDCompositionDevice3 = GUID.fromComponents(
  0x987cb06,
  0xf916,
  0x48bf,
  Uint8List.fromList(const [0x8d, 0x35, 0xce, 0x76, 0x41, 0x78, 0x1b, 0xd9]),
);

/// Serves as a factory for all other Microsoft DirectComposition objects and
/// provides methods to control transactional composition.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nn-dcomp-idcompositiondevice3>.
///
/// {@category com}
class IDCompositionDevice3 extends IDCompositionDevice2
    implements ComInterface {
  /// Creates a new instance of [IDCompositionDevice3] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IDCompositionDevice3]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  IDCompositionDevice3(super.ptr)
    : _vtable = ptr.value.cast<IDCompositionDevice3Vtbl>().ref;

  /// Creates a new instance of [IDCompositionDevice3] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionDevice3] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionDevice3.from(IUnknown interface) =>
      interface.queryInterface();

  final IDCompositionDevice3Vtbl _vtable;
  late final _CreateGaussianBlurEffectFn =
      _vtable.CreateGaussianBlurEffect.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _CreateBrightnessEffectFn =
      _vtable.CreateBrightnessEffect.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _CreateColorMatrixEffectFn =
      _vtable.CreateColorMatrixEffect.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _CreateShadowEffectFn =
      _vtable.CreateShadowEffect.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _CreateHueRotationEffectFn =
      _vtable.CreateHueRotationEffect.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _CreateSaturationEffectFn =
      _vtable.CreateSaturationEffect.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _CreateTurbulenceEffectFn =
      _vtable.CreateTurbulenceEffect.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _CreateLinearTransferEffectFn =
      _vtable.CreateLinearTransferEffect.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _CreateTableTransferEffectFn =
      _vtable.CreateTableTransferEffect.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _CreateCompositeEffectFn =
      _vtable.CreateCompositeEffect.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _CreateBlendEffectFn =
      _vtable.CreateBlendEffect.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _CreateArithmeticCompositeEffectFn =
      _vtable.CreateArithmeticCompositeEffect.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _CreateAffineTransform2DEffectFn =
      _vtable.CreateAffineTransform2DEffect.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();

  /// Creates an instance of IDCompositionGaussianBlurEffect.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiondevice3-creategaussianblureffect>.
  IDCompositionGaussianBlurEffect? createGaussianBlurEffect() {
    final gaussianBlurEffect = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_CreateGaussianBlurEffectFn(ptr, gaussianBlurEffect));
    if (hr$.isError) {
      free(gaussianBlurEffect);
      throw WindowsException(hr$);
    }
    final result$ = gaussianBlurEffect.value;
    free(gaussianBlurEffect);
    if (result$.isNull) return null;
    return IDCompositionGaussianBlurEffect(result$);
  }

  /// Creates an instance of IDCompositionBrightnessEffect.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiondevice3-createbrightnesseffect>.
  IDCompositionBrightnessEffect? createBrightnessEffect() {
    final brightnessEffect = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_CreateBrightnessEffectFn(ptr, brightnessEffect));
    if (hr$.isError) {
      free(brightnessEffect);
      throw WindowsException(hr$);
    }
    final result$ = brightnessEffect.value;
    free(brightnessEffect);
    if (result$.isNull) return null;
    return IDCompositionBrightnessEffect(result$);
  }

  /// Creates an instance of IDCompositionColorMatrixEffect.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiondevice3-createcolormatrixeffect>.
  IDCompositionColorMatrixEffect? createColorMatrixEffect() {
    final colorMatrixEffect = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_CreateColorMatrixEffectFn(ptr, colorMatrixEffect));
    if (hr$.isError) {
      free(colorMatrixEffect);
      throw WindowsException(hr$);
    }
    final result$ = colorMatrixEffect.value;
    free(colorMatrixEffect);
    if (result$.isNull) return null;
    return IDCompositionColorMatrixEffect(result$);
  }

  /// Creates an instance of IDCompositionShadowEffect.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiondevice3-createshadoweffect>.
  IDCompositionShadowEffect? createShadowEffect() {
    final shadowEffect = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_CreateShadowEffectFn(ptr, shadowEffect));
    if (hr$.isError) {
      free(shadowEffect);
      throw WindowsException(hr$);
    }
    final result$ = shadowEffect.value;
    free(shadowEffect);
    if (result$.isNull) return null;
    return IDCompositionShadowEffect(result$);
  }

  /// Creates an instance of IDCompositionHueRotationEffect.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiondevice3-createhuerotationeffect>.
  IDCompositionHueRotationEffect? createHueRotationEffect() {
    final hueRotationEffect = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_CreateHueRotationEffectFn(ptr, hueRotationEffect));
    if (hr$.isError) {
      free(hueRotationEffect);
      throw WindowsException(hr$);
    }
    final result$ = hueRotationEffect.value;
    free(hueRotationEffect);
    if (result$.isNull) return null;
    return IDCompositionHueRotationEffect(result$);
  }

  /// Creates an instance of IDCompositionSaturationEffect.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiondevice3-createsaturationeffect>.
  IDCompositionSaturationEffect? createSaturationEffect() {
    final saturationEffect = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_CreateSaturationEffectFn(ptr, saturationEffect));
    if (hr$.isError) {
      free(saturationEffect);
      throw WindowsException(hr$);
    }
    final result$ = saturationEffect.value;
    free(saturationEffect);
    if (result$.isNull) return null;
    return IDCompositionSaturationEffect(result$);
  }

  /// Creates an instance of IDCompositionTurbulenceEffect.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiondevice3-createturbulenceeffect>.
  IDCompositionTurbulenceEffect? createTurbulenceEffect() {
    final turbulenceEffect = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_CreateTurbulenceEffectFn(ptr, turbulenceEffect));
    if (hr$.isError) {
      free(turbulenceEffect);
      throw WindowsException(hr$);
    }
    final result$ = turbulenceEffect.value;
    free(turbulenceEffect);
    if (result$.isNull) return null;
    return IDCompositionTurbulenceEffect(result$);
  }

  /// Creates an instance of IDCompositionLinearTransferEffect.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiondevice3-createlineartransfereffect>.
  IDCompositionLinearTransferEffect? createLinearTransferEffect() {
    final linearTransferEffect = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CreateLinearTransferEffectFn(ptr, linearTransferEffect),
    );
    if (hr$.isError) {
      free(linearTransferEffect);
      throw WindowsException(hr$);
    }
    final result$ = linearTransferEffect.value;
    free(linearTransferEffect);
    if (result$.isNull) return null;
    return IDCompositionLinearTransferEffect(result$);
  }

  /// Creates an instance of IDCompositionTableTransferEffect.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiondevice3-createtabletransfereffect>.
  IDCompositionTableTransferEffect? createTableTransferEffect() {
    final tableTransferEffect = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_CreateTableTransferEffectFn(ptr, tableTransferEffect));
    if (hr$.isError) {
      free(tableTransferEffect);
      throw WindowsException(hr$);
    }
    final result$ = tableTransferEffect.value;
    free(tableTransferEffect);
    if (result$.isNull) return null;
    return IDCompositionTableTransferEffect(result$);
  }

  /// Creates an instance of IDCompositionCompositeEffect.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiondevice3-createcompositeeffect>.
  IDCompositionCompositeEffect? createCompositeEffect() {
    final compositeEffect = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_CreateCompositeEffectFn(ptr, compositeEffect));
    if (hr$.isError) {
      free(compositeEffect);
      throw WindowsException(hr$);
    }
    final result$ = compositeEffect.value;
    free(compositeEffect);
    if (result$.isNull) return null;
    return IDCompositionCompositeEffect(result$);
  }

  /// Creates an instance of IDCompositionBlendEffect.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiondevice3-createblendeffect>.
  IDCompositionBlendEffect? createBlendEffect() {
    final blendEffect = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_CreateBlendEffectFn(ptr, blendEffect));
    if (hr$.isError) {
      free(blendEffect);
      throw WindowsException(hr$);
    }
    final result$ = blendEffect.value;
    free(blendEffect);
    if (result$.isNull) return null;
    return IDCompositionBlendEffect(result$);
  }

  /// Creates an instance of IDCompositionArithmeticCompositeEffect.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiondevice3-createarithmeticcompositeeffect>.
  IDCompositionArithmeticCompositeEffect? createArithmeticCompositeEffect() {
    final arithmeticCompositeEffect = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CreateArithmeticCompositeEffectFn(ptr, arithmeticCompositeEffect),
    );
    if (hr$.isError) {
      free(arithmeticCompositeEffect);
      throw WindowsException(hr$);
    }
    final result$ = arithmeticCompositeEffect.value;
    free(arithmeticCompositeEffect);
    if (result$.isNull) return null;
    return IDCompositionArithmeticCompositeEffect(result$);
  }

  /// Creates an instance of IDCompositionAffineTransform2DEffect.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiondevice3-createaffinetransform2deffect>.
  IDCompositionAffineTransform2DEffect? createAffineTransform2DEffect() {
    final affineTransform2dEffect = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CreateAffineTransform2DEffectFn(ptr, affineTransform2dEffect),
    );
    if (hr$.isError) {
      free(affineTransform2dEffect);
      throw WindowsException(hr$);
    }
    final result$ = affineTransform2dEffect.value;
    free(affineTransform2dEffect);
    if (result$.isNull) return null;
    return IDCompositionAffineTransform2DEffect(result$);
  }

  @override
  String toString() => 'IDCompositionDevice3(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionDevice3Vtbl extends Struct {
  external IDCompositionDevice2Vtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> gaussianBlurEffect,
      )
    >
  >
  CreateGaussianBlurEffect;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> brightnessEffect,
      )
    >
  >
  CreateBrightnessEffect;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> colorMatrixEffect,
      )
    >
  >
  CreateColorMatrixEffect;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> shadowEffect)
    >
  >
  CreateShadowEffect;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> hueRotationEffect,
      )
    >
  >
  CreateHueRotationEffect;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> saturationEffect,
      )
    >
  >
  CreateSaturationEffect;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> turbulenceEffect,
      )
    >
  >
  CreateTurbulenceEffect;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> linearTransferEffect,
      )
    >
  >
  CreateLinearTransferEffect;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> tableTransferEffect,
      )
    >
  >
  CreateTableTransferEffect;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> compositeEffect,
      )
    >
  >
  CreateCompositeEffect;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> blendEffect)
    >
  >
  CreateBlendEffect;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> arithmeticCompositeEffect,
      )
    >
  >
  CreateArithmeticCompositeEffect;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> affineTransform2dEffect,
      )
    >
  >
  CreateAffineTransform2DEffect;
}

@internal
final class IDCompositionDevice3Companion
    extends ComCompanion<IDCompositionDevice3> {
  const IDCompositionDevice3Companion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionDevice3 Function(VTablePointer) get fromPointer =>
      IDCompositionDevice3.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionDevice3;
}
