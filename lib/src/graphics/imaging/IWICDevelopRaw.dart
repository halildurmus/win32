// IWICDevelopRaw.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../graphics/imaging/IWICBitmapFrameDecode.dart';
import '../../graphics/imaging/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/structuredstorage/IPropertyBag2.dart';
import '../../graphics/imaging/IWICColorContext.dart';
import '../../graphics/imaging/IWICDevelopRawNotificationCallback.dart';

/// @nodoc
const IID_IWICDevelopRaw = '{FBEC5E44-F7BE-4B65-B7F8-C0C81FEF026D}';

/// {@category Interface}
/// {@category com}
class IWICDevelopRaw extends IWICBitmapFrameDecode {
  // vtable begins at 11, is 32 entries long.
  IWICDevelopRaw(Pointer<COMObject> ptr) : super(ptr);

  int QueryRawCapabilitiesInfo(
    Pointer<WICRawCapabilitiesInfo> pInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WICRawCapabilitiesInfo> pInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WICRawCapabilitiesInfo> pInfo,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
      );

  int LoadParameterSet(
    int ParameterSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 ParameterSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ParameterSet,
          )>()(
        ptr.ref.lpVtbl,
        ParameterSet,
      );

  int GetCurrentParameterSet(
    Pointer<Pointer<COMObject>> ppCurrentParameterSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppCurrentParameterSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppCurrentParameterSet,
          )>()(
        ptr.ref.lpVtbl,
        ppCurrentParameterSet,
      );

  int SetExposureCompensation(
    double ev,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double ev,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double ev,
          )>()(
        ptr.ref.lpVtbl,
        ev,
      );

  int GetExposureCompensation(
    Pointer<Double> pEV,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> pEV,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> pEV,
          )>()(
        ptr.ref.lpVtbl,
        pEV,
      );

  int SetWhitePointRGB(
    int Red,
    int Green,
    int Blue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Red,
            Uint32 Green,
            Uint32 Blue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Red,
            int Green,
            int Blue,
          )>()(
        ptr.ref.lpVtbl,
        Red,
        Green,
        Blue,
      );

  int GetWhitePointRGB(
    Pointer<Uint32> pRed,
    Pointer<Uint32> pGreen,
    Pointer<Uint32> pBlue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pRed,
            Pointer<Uint32> pGreen,
            Pointer<Uint32> pBlue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pRed,
            Pointer<Uint32> pGreen,
            Pointer<Uint32> pBlue,
          )>()(
        ptr.ref.lpVtbl,
        pRed,
        pGreen,
        pBlue,
      );

  int SetNamedWhitePoint(
    int WhitePoint,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 WhitePoint,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int WhitePoint,
          )>()(
        ptr.ref.lpVtbl,
        WhitePoint,
      );

  int GetNamedWhitePoint(
    Pointer<Int32> pWhitePoint,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pWhitePoint,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pWhitePoint,
          )>()(
        ptr.ref.lpVtbl,
        pWhitePoint,
      );

  int SetWhitePointKelvin(
    int WhitePointKelvin,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 WhitePointKelvin,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int WhitePointKelvin,
          )>()(
        ptr.ref.lpVtbl,
        WhitePointKelvin,
      );

  int GetWhitePointKelvin(
    Pointer<Uint32> pWhitePointKelvin,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pWhitePointKelvin,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pWhitePointKelvin,
          )>()(
        ptr.ref.lpVtbl,
        pWhitePointKelvin,
      );

  int GetKelvinRangeInfo(
    Pointer<Uint32> pMinKelvinTemp,
    Pointer<Uint32> pMaxKelvinTemp,
    Pointer<Uint32> pKelvinTempStepValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pMinKelvinTemp,
            Pointer<Uint32> pMaxKelvinTemp,
            Pointer<Uint32> pKelvinTempStepValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pMinKelvinTemp,
            Pointer<Uint32> pMaxKelvinTemp,
            Pointer<Uint32> pKelvinTempStepValue,
          )>()(
        ptr.ref.lpVtbl,
        pMinKelvinTemp,
        pMaxKelvinTemp,
        pKelvinTempStepValue,
      );

  int SetContrast(
    double Contrast,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double Contrast,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double Contrast,
          )>()(
        ptr.ref.lpVtbl,
        Contrast,
      );

  int GetContrast(
    Pointer<Double> pContrast,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> pContrast,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> pContrast,
          )>()(
        ptr.ref.lpVtbl,
        pContrast,
      );

  int SetGamma(
    double Gamma,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double Gamma,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double Gamma,
          )>()(
        ptr.ref.lpVtbl,
        Gamma,
      );

  int GetGamma(
    Pointer<Double> pGamma,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> pGamma,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> pGamma,
          )>()(
        ptr.ref.lpVtbl,
        pGamma,
      );

  int SetSharpness(
    double Sharpness,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double Sharpness,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double Sharpness,
          )>()(
        ptr.ref.lpVtbl,
        Sharpness,
      );

  int GetSharpness(
    Pointer<Double> pSharpness,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> pSharpness,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> pSharpness,
          )>()(
        ptr.ref.lpVtbl,
        pSharpness,
      );

  int SetSaturation(
    double Saturation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double Saturation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double Saturation,
          )>()(
        ptr.ref.lpVtbl,
        Saturation,
      );

  int GetSaturation(
    Pointer<Double> pSaturation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> pSaturation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> pSaturation,
          )>()(
        ptr.ref.lpVtbl,
        pSaturation,
      );

  int SetTint(
    double Tint,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double Tint,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double Tint,
          )>()(
        ptr.ref.lpVtbl,
        Tint,
      );

  int GetTint(
    Pointer<Double> pTint,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> pTint,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> pTint,
          )>()(
        ptr.ref.lpVtbl,
        pTint,
      );

  int SetNoiseReduction(
    double NoiseReduction,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double NoiseReduction,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double NoiseReduction,
          )>()(
        ptr.ref.lpVtbl,
        NoiseReduction,
      );

  int GetNoiseReduction(
    Pointer<Double> pNoiseReduction,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> pNoiseReduction,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> pNoiseReduction,
          )>()(
        ptr.ref.lpVtbl,
        pNoiseReduction,
      );

  int SetDestinationColorContext(
    Pointer<COMObject> pColorContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pColorContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pColorContext,
          )>()(
        ptr.ref.lpVtbl,
        pColorContext,
      );

  int SetToneCurve(
    int cbToneCurveSize,
    Pointer<WICRawToneCurve> pToneCurve,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbToneCurveSize,
            Pointer<WICRawToneCurve> pToneCurve,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbToneCurveSize,
            Pointer<WICRawToneCurve> pToneCurve,
          )>()(
        ptr.ref.lpVtbl,
        cbToneCurveSize,
        pToneCurve,
      );

  int GetToneCurve(
    int cbToneCurveBufferSize,
    Pointer<WICRawToneCurve> pToneCurve,
    Pointer<Uint32> pcbActualToneCurveBufferSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbToneCurveBufferSize,
            Pointer<WICRawToneCurve> pToneCurve,
            Pointer<Uint32> pcbActualToneCurveBufferSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbToneCurveBufferSize,
            Pointer<WICRawToneCurve> pToneCurve,
            Pointer<Uint32> pcbActualToneCurveBufferSize,
          )>()(
        ptr.ref.lpVtbl,
        cbToneCurveBufferSize,
        pToneCurve,
        pcbActualToneCurveBufferSize,
      );

  int SetRotation(
    double Rotation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double Rotation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double Rotation,
          )>()(
        ptr.ref.lpVtbl,
        Rotation,
      );

  int GetRotation(
    Pointer<Double> pRotation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> pRotation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> pRotation,
          )>()(
        ptr.ref.lpVtbl,
        pRotation,
      );

  int SetRenderMode(
    int RenderMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 RenderMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int RenderMode,
          )>()(
        ptr.ref.lpVtbl,
        RenderMode,
      );

  int GetRenderMode(
    Pointer<Int32> pRenderMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pRenderMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pRenderMode,
          )>()(
        ptr.ref.lpVtbl,
        pRenderMode,
      );

  int SetNotificationCallback(
    Pointer<COMObject> pCallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCallback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCallback,
          )>()(
        ptr.ref.lpVtbl,
        pCallback,
      );
}
