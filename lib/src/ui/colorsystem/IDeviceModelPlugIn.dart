// IDeviceModelPlugIn.dart

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

import '../../system/com/IUnknown.dart';
import '../../foundation/structs.g.dart';
import '../../ui/colorsystem/structs.g.dart';
import '../../ui/colorsystem/IDeviceModelPlugIn.dart';

/// @nodoc
const IID_IDeviceModelPlugIn = '{1CD63475-07C4-46FE-A903-D655316D11FD}';

/// {@category Interface}
/// {@category com}
class IDeviceModelPlugIn extends IUnknown {
  // vtable begins at 3, is 11 entries long.
  IDeviceModelPlugIn(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<Utf16> bstrXml,
    int cNumModels,
    int iModelPosition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrXml,
            Uint32 cNumModels,
            Uint32 iModelPosition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrXml,
            int cNumModels,
            int iModelPosition,
          )>()(
        ptr.ref.lpVtbl,
        bstrXml,
        cNumModels,
        iModelPosition,
      );

  int GetNumChannels(
    Pointer<Uint32> pNumChannels,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pNumChannels,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pNumChannels,
          )>()(
        ptr.ref.lpVtbl,
        pNumChannels,
      );

  int DeviceToColorimetricColors(
    int cColors,
    int cChannels,
    Pointer<Float> pDeviceValues,
    Pointer<XYZColorF> pXYZColors,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cColors,
            Uint32 cChannels,
            Pointer<Float> pDeviceValues,
            Pointer<XYZColorF> pXYZColors,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cColors,
            int cChannels,
            Pointer<Float> pDeviceValues,
            Pointer<XYZColorF> pXYZColors,
          )>()(
        ptr.ref.lpVtbl,
        cColors,
        cChannels,
        pDeviceValues,
        pXYZColors,
      );

  int ColorimetricToDeviceColors(
    int cColors,
    int cChannels,
    Pointer<XYZColorF> pXYZColors,
    Pointer<Float> pDeviceValues,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cColors,
            Uint32 cChannels,
            Pointer<XYZColorF> pXYZColors,
            Pointer<Float> pDeviceValues,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cColors,
            int cChannels,
            Pointer<XYZColorF> pXYZColors,
            Pointer<Float> pDeviceValues,
          )>()(
        ptr.ref.lpVtbl,
        cColors,
        cChannels,
        pXYZColors,
        pDeviceValues,
      );

  int ColorimetricToDeviceColorsWithBlack(
    int cColors,
    int cChannels,
    Pointer<XYZColorF> pXYZColors,
    Pointer<BlackInformation> pBlackInformation,
    Pointer<Float> pDeviceValues,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cColors,
            Uint32 cChannels,
            Pointer<XYZColorF> pXYZColors,
            Pointer<BlackInformation> pBlackInformation,
            Pointer<Float> pDeviceValues,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cColors,
            int cChannels,
            Pointer<XYZColorF> pXYZColors,
            Pointer<BlackInformation> pBlackInformation,
            Pointer<Float> pDeviceValues,
          )>()(
        ptr.ref.lpVtbl,
        cColors,
        cChannels,
        pXYZColors,
        pBlackInformation,
        pDeviceValues,
      );

  int SetTransformDeviceModelInfo(
    int iModelPosition,
    Pointer<COMObject> pIDeviceModelOther,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iModelPosition,
            Pointer<COMObject> pIDeviceModelOther,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iModelPosition,
            Pointer<COMObject> pIDeviceModelOther,
          )>()(
        ptr.ref.lpVtbl,
        iModelPosition,
        pIDeviceModelOther,
      );

  int GetPrimarySamples(
    Pointer<PrimaryXYZColors> pPrimaryColor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PrimaryXYZColors> pPrimaryColor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PrimaryXYZColors> pPrimaryColor,
          )>()(
        ptr.ref.lpVtbl,
        pPrimaryColor,
      );

  int GetGamutBoundaryMeshSize(
    Pointer<Uint32> pNumVertices,
    Pointer<Uint32> pNumTriangles,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pNumVertices,
            Pointer<Uint32> pNumTriangles,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pNumVertices,
            Pointer<Uint32> pNumTriangles,
          )>()(
        ptr.ref.lpVtbl,
        pNumVertices,
        pNumTriangles,
      );

  int GetGamutBoundaryMesh(
    int cChannels,
    int cVertices,
    int cTriangles,
    Pointer<Float> pVertices,
    Pointer<GamutShellTriangle> pTriangles,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cChannels,
            Uint32 cVertices,
            Uint32 cTriangles,
            Pointer<Float> pVertices,
            Pointer<GamutShellTriangle> pTriangles,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cChannels,
            int cVertices,
            int cTriangles,
            Pointer<Float> pVertices,
            Pointer<GamutShellTriangle> pTriangles,
          )>()(
        ptr.ref.lpVtbl,
        cChannels,
        cVertices,
        cTriangles,
        pVertices,
        pTriangles,
      );

  int GetNeutralAxisSize(
    Pointer<Uint32> pcColors,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcColors,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcColors,
          )>()(
        ptr.ref.lpVtbl,
        pcColors,
      );

  int GetNeutralAxis(
    int cColors,
    Pointer<XYZColorF> pXYZColors,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cColors,
            Pointer<XYZColorF> pXYZColors,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cColors,
            Pointer<XYZColorF> pXYZColors,
          )>()(
        ptr.ref.lpVtbl,
        cColors,
        pXYZColors,
      );
}
