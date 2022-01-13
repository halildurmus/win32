// ISpRecognizer.dart

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

import '../../media/speech/ISpProperties.dart';
import '../../media/speech/ISpObjectToken.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../media/speech/ISpStreamFormat.dart';
import '../../media/speech/ISpRecoContext.dart';
import '../../media/speech/structs.g.dart';
import '../../media/audio/structs.g.dart';
import '../../media/speech/ISpPhrase.dart';

/// @nodoc
const IID_ISpRecognizer = '{C2B5F241-DAA0-4507-9E16-5A1EAA2B7A5C}';

/// {@category Interface}
/// {@category com}
class ISpRecognizer extends ISpProperties {
  // vtable begins at 7, is 16 entries long.
  ISpRecognizer(Pointer<COMObject> ptr) : super(ptr);

  int SetRecognizer(
    Pointer<COMObject> pRecognizer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pRecognizer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pRecognizer,
          )>()(
        ptr.ref.lpVtbl,
        pRecognizer,
      );

  int GetRecognizer(
    Pointer<Pointer<COMObject>> ppRecognizer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppRecognizer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppRecognizer,
          )>()(
        ptr.ref.lpVtbl,
        ppRecognizer,
      );

  int SetInput(
    Pointer<COMObject> pUnkInput,
    int fAllowFormatChanges,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pUnkInput,
            Int32 fAllowFormatChanges,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pUnkInput,
            int fAllowFormatChanges,
          )>()(
        ptr.ref.lpVtbl,
        pUnkInput,
        fAllowFormatChanges,
      );

  int GetInputObjectToken(
    Pointer<Pointer<COMObject>> ppToken,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppToken,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppToken,
          )>()(
        ptr.ref.lpVtbl,
        ppToken,
      );

  int GetInputStream(
    Pointer<Pointer<COMObject>> ppStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppStream,
          )>()(
        ptr.ref.lpVtbl,
        ppStream,
      );

  int CreateRecoContext(
    Pointer<Pointer<COMObject>> ppNewCtxt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppNewCtxt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppNewCtxt,
          )>()(
        ptr.ref.lpVtbl,
        ppNewCtxt,
      );

  int GetRecoProfile(
    Pointer<Pointer<COMObject>> ppToken,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppToken,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppToken,
          )>()(
        ptr.ref.lpVtbl,
        ppToken,
      );

  int SetRecoProfile(
    Pointer<COMObject> pToken,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pToken,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pToken,
          )>()(
        ptr.ref.lpVtbl,
        pToken,
      );

  int IsSharedInstance() => ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetRecoState(
    Pointer<Int32> pState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pState,
          )>()(
        ptr.ref.lpVtbl,
        pState,
      );

  int SetRecoState(
    int NewState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 NewState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int NewState,
          )>()(
        ptr.ref.lpVtbl,
        NewState,
      );

  int GetStatus(
    Pointer<SPRECOGNIZERSTATUS> pStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SPRECOGNIZERSTATUS> pStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SPRECOGNIZERSTATUS> pStatus,
          )>()(
        ptr.ref.lpVtbl,
        pStatus,
      );

  int GetFormat(
    int WaveFormatType,
    Pointer<GUID> pFormatId,
    Pointer<Pointer<WAVEFORMATEX>> ppCoMemWFEX,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 WaveFormatType,
            Pointer<GUID> pFormatId,
            Pointer<Pointer<WAVEFORMATEX>> ppCoMemWFEX,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int WaveFormatType,
            Pointer<GUID> pFormatId,
            Pointer<Pointer<WAVEFORMATEX>> ppCoMemWFEX,
          )>()(
        ptr.ref.lpVtbl,
        WaveFormatType,
        pFormatId,
        ppCoMemWFEX,
      );

  int IsUISupported(
    Pointer<Utf16> pszTypeOfUI,
    Pointer pvExtraData,
    int cbExtraData,
    Pointer<Int32> pfSupported,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszTypeOfUI,
            Pointer pvExtraData,
            Uint32 cbExtraData,
            Pointer<Int32> pfSupported,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszTypeOfUI,
            Pointer pvExtraData,
            int cbExtraData,
            Pointer<Int32> pfSupported,
          )>()(
        ptr.ref.lpVtbl,
        pszTypeOfUI,
        pvExtraData,
        cbExtraData,
        pfSupported,
      );

  int DisplayUI(
    int hwndParent,
    Pointer<Utf16> pszTitle,
    Pointer<Utf16> pszTypeOfUI,
    Pointer pvExtraData,
    int cbExtraData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndParent,
            Pointer<Utf16> pszTitle,
            Pointer<Utf16> pszTypeOfUI,
            Pointer pvExtraData,
            Uint32 cbExtraData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndParent,
            Pointer<Utf16> pszTitle,
            Pointer<Utf16> pszTypeOfUI,
            Pointer pvExtraData,
            int cbExtraData,
          )>()(
        ptr.ref.lpVtbl,
        hwndParent,
        pszTitle,
        pszTypeOfUI,
        pvExtraData,
        cbExtraData,
      );

  int EmulateRecognition(
    Pointer<COMObject> pPhrase,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPhrase,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPhrase,
          )>()(
        ptr.ref.lpVtbl,
        pPhrase,
      );
}
