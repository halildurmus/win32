// IMDSPDevice2.dart

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

import '../../media/devicemanager/IMDSPDevice.dart';
import '../../foundation/structs.g.dart';
import '../../media/devicemanager/IMDSPStorage.dart';
import '../../specialTypes.dart';
import '../../media/devicemanager/structs.g.dart';
import '../../system/ole/ISpecifyPropertyPages.dart';
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IMDSPDevice2 = '{420D16AD-C97D-4E00-82AA-00E9F4335DDD}';

/// {@category Interface}
/// {@category com}
class IMDSPDevice2 extends IMDSPDevice {
  // vtable begins at 14, is 4 entries long.
  IMDSPDevice2(Pointer<COMObject> ptr) : super(ptr);

  int GetStorage(
    Pointer<Utf16> pszStorageName,
    Pointer<Pointer<COMObject>> ppStorage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszStorageName,
            Pointer<Pointer<COMObject>> ppStorage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszStorageName,
            Pointer<Pointer<COMObject>> ppStorage,
          )>()(
        ptr.ref.lpVtbl,
        pszStorageName,
        ppStorage,
      );

  int GetFormatSupport2(
    int dwFlags,
    Pointer<Pointer<WAVEFORMATEX>> ppAudioFormatEx,
    Pointer<Uint32> pnAudioFormatCount,
    Pointer<Pointer<VIDEOINFOHEADER>> ppVideoFormatEx,
    Pointer<Uint32> pnVideoFormatCount,
    Pointer<Pointer<WMFILECAPABILITIES>> ppFileType,
    Pointer<Uint32> pnFileTypeCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<Pointer<WAVEFORMATEX>> ppAudioFormatEx,
            Pointer<Uint32> pnAudioFormatCount,
            Pointer<Pointer<VIDEOINFOHEADER>> ppVideoFormatEx,
            Pointer<Uint32> pnVideoFormatCount,
            Pointer<Pointer<WMFILECAPABILITIES>> ppFileType,
            Pointer<Uint32> pnFileTypeCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<Pointer<WAVEFORMATEX>> ppAudioFormatEx,
            Pointer<Uint32> pnAudioFormatCount,
            Pointer<Pointer<VIDEOINFOHEADER>> ppVideoFormatEx,
            Pointer<Uint32> pnVideoFormatCount,
            Pointer<Pointer<WMFILECAPABILITIES>> ppFileType,
            Pointer<Uint32> pnFileTypeCount,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        ppAudioFormatEx,
        pnAudioFormatCount,
        ppVideoFormatEx,
        pnVideoFormatCount,
        ppFileType,
        pnFileTypeCount,
      );

  int GetSpecifyPropertyPages(
    Pointer<Pointer<COMObject>> ppSpecifyPropPages,
    Pointer<Pointer<Pointer<COMObject>>> pppUnknowns,
    Pointer<Uint32> pcUnks,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSpecifyPropPages,
            Pointer<Pointer<Pointer<COMObject>>> pppUnknowns,
            Pointer<Uint32> pcUnks,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSpecifyPropPages,
            Pointer<Pointer<Pointer<COMObject>>> pppUnknowns,
            Pointer<Uint32> pcUnks,
          )>()(
        ptr.ref.lpVtbl,
        ppSpecifyPropPages,
        pppUnknowns,
        pcUnks,
      );

  int GetCanonicalName(
    Pointer<Utf16> pwszPnPName,
    int nMaxChars,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszPnPName,
            Uint32 nMaxChars,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszPnPName,
            int nMaxChars,
          )>()(
        ptr.ref.lpVtbl,
        pwszPnPName,
        nMaxChars,
      );
}
