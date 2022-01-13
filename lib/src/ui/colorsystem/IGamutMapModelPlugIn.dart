// IGamutMapModelPlugIn.dart

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
import '../../ui/colorsystem/IDeviceModelPlugIn.dart';
import '../../ui/colorsystem/structs.g.dart';

/// @nodoc
const IID_IGamutMapModelPlugIn = '{2DD80115-AD1E-41F6-A219-A4F4B583D1F9}';

/// {@category Interface}
/// {@category com}
class IGamutMapModelPlugIn extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IGamutMapModelPlugIn(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<Utf16> bstrXml,
    Pointer<COMObject> pSrcPlugIn,
    Pointer<COMObject> pDestPlugIn,
    Pointer<GamutBoundaryDescription> pSrcGBD,
    Pointer<GamutBoundaryDescription> pDestGBD,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrXml,
            Pointer<COMObject> pSrcPlugIn,
            Pointer<COMObject> pDestPlugIn,
            Pointer<GamutBoundaryDescription> pSrcGBD,
            Pointer<GamutBoundaryDescription> pDestGBD,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrXml,
            Pointer<COMObject> pSrcPlugIn,
            Pointer<COMObject> pDestPlugIn,
            Pointer<GamutBoundaryDescription> pSrcGBD,
            Pointer<GamutBoundaryDescription> pDestGBD,
          )>()(
        ptr.ref.lpVtbl,
        bstrXml,
        pSrcPlugIn,
        pDestPlugIn,
        pSrcGBD,
        pDestGBD,
      );

  int SourceToDestinationAppearanceColors(
    int cColors,
    Pointer<JChColorF> pInputColors,
    Pointer<JChColorF> pOutputColors,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cColors,
            Pointer<JChColorF> pInputColors,
            Pointer<JChColorF> pOutputColors,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cColors,
            Pointer<JChColorF> pInputColors,
            Pointer<JChColorF> pOutputColors,
          )>()(
        ptr.ref.lpVtbl,
        cColors,
        pInputColors,
        pOutputColors,
      );
}
