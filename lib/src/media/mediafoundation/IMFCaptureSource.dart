// IMFCaptureSource.dart

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
import '../../media/mediafoundation/structs.g.dart';
import '../../media/mediafoundation/IMFMediaSource.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/IMFActivate.dart';
import '../../specialTypes.dart';
import '../../media/mediafoundation/IMFMediaType.dart';

/// @nodoc
const IID_IMFCaptureSource = '{439A42A8-0D2C-4505-BE83-F79B2A05D5C4}';

/// {@category Interface}
/// {@category com}
class IMFCaptureSource extends IUnknown {
  // vtable begins at 3, is 14 entries long.
  IMFCaptureSource(Pointer<COMObject> ptr) : super(ptr);

  int GetCaptureDeviceSource(
    int mfCaptureEngineDeviceType,
    Pointer<Pointer<COMObject>> ppMediaSource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 mfCaptureEngineDeviceType,
            Pointer<Pointer<COMObject>> ppMediaSource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int mfCaptureEngineDeviceType,
            Pointer<Pointer<COMObject>> ppMediaSource,
          )>()(
        ptr.ref.lpVtbl,
        mfCaptureEngineDeviceType,
        ppMediaSource,
      );

  int GetCaptureDeviceActivate(
    int mfCaptureEngineDeviceType,
    Pointer<Pointer<COMObject>> ppActivate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 mfCaptureEngineDeviceType,
            Pointer<Pointer<COMObject>> ppActivate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int mfCaptureEngineDeviceType,
            Pointer<Pointer<COMObject>> ppActivate,
          )>()(
        ptr.ref.lpVtbl,
        mfCaptureEngineDeviceType,
        ppActivate,
      );

  int GetService(
    Pointer<GUID> rguidService,
    Pointer<GUID> riid,
    Pointer<Pointer<COMObject>> ppUnknown,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rguidService,
            Pointer<GUID> riid,
            Pointer<Pointer<COMObject>> ppUnknown,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rguidService,
            Pointer<GUID> riid,
            Pointer<Pointer<COMObject>> ppUnknown,
          )>()(
        ptr.ref.lpVtbl,
        rguidService,
        riid,
        ppUnknown,
      );

  int AddEffect(
    int dwSourceStreamIndex,
    Pointer<COMObject> pUnknown,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSourceStreamIndex,
            Pointer<COMObject> pUnknown,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSourceStreamIndex,
            Pointer<COMObject> pUnknown,
          )>()(
        ptr.ref.lpVtbl,
        dwSourceStreamIndex,
        pUnknown,
      );

  int RemoveEffect(
    int dwSourceStreamIndex,
    Pointer<COMObject> pUnknown,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSourceStreamIndex,
            Pointer<COMObject> pUnknown,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSourceStreamIndex,
            Pointer<COMObject> pUnknown,
          )>()(
        ptr.ref.lpVtbl,
        dwSourceStreamIndex,
        pUnknown,
      );

  int RemoveAllEffects(
    int dwSourceStreamIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSourceStreamIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSourceStreamIndex,
          )>()(
        ptr.ref.lpVtbl,
        dwSourceStreamIndex,
      );

  int GetAvailableDeviceMediaType(
    int dwSourceStreamIndex,
    int dwMediaTypeIndex,
    Pointer<Pointer<COMObject>> ppMediaType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSourceStreamIndex,
            Uint32 dwMediaTypeIndex,
            Pointer<Pointer<COMObject>> ppMediaType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSourceStreamIndex,
            int dwMediaTypeIndex,
            Pointer<Pointer<COMObject>> ppMediaType,
          )>()(
        ptr.ref.lpVtbl,
        dwSourceStreamIndex,
        dwMediaTypeIndex,
        ppMediaType,
      );

  int SetCurrentDeviceMediaType(
    int dwSourceStreamIndex,
    Pointer<COMObject> pMediaType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSourceStreamIndex,
            Pointer<COMObject> pMediaType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSourceStreamIndex,
            Pointer<COMObject> pMediaType,
          )>()(
        ptr.ref.lpVtbl,
        dwSourceStreamIndex,
        pMediaType,
      );

  int GetCurrentDeviceMediaType(
    int dwSourceStreamIndex,
    Pointer<Pointer<COMObject>> ppMediaType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSourceStreamIndex,
            Pointer<Pointer<COMObject>> ppMediaType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSourceStreamIndex,
            Pointer<Pointer<COMObject>> ppMediaType,
          )>()(
        ptr.ref.lpVtbl,
        dwSourceStreamIndex,
        ppMediaType,
      );

  int GetDeviceStreamCount(
    Pointer<Uint32> pdwStreamCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwStreamCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwStreamCount,
          )>()(
        ptr.ref.lpVtbl,
        pdwStreamCount,
      );

  int GetDeviceStreamCategory(
    int dwSourceStreamIndex,
    Pointer<Int32> pStreamCategory,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSourceStreamIndex,
            Pointer<Int32> pStreamCategory,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSourceStreamIndex,
            Pointer<Int32> pStreamCategory,
          )>()(
        ptr.ref.lpVtbl,
        dwSourceStreamIndex,
        pStreamCategory,
      );

  int GetMirrorState(
    int dwStreamIndex,
    Pointer<Int32> pfMirrorState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
            Pointer<Int32> pfMirrorState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
            Pointer<Int32> pfMirrorState,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
        pfMirrorState,
      );

  int SetMirrorState(
    int dwStreamIndex,
    int fMirrorState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
            Int32 fMirrorState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
            int fMirrorState,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
        fMirrorState,
      );

  int GetStreamIndexFromFriendlyName(
    int uifriendlyName,
    Pointer<Uint32> pdwActualStreamIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uifriendlyName,
            Pointer<Uint32> pdwActualStreamIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uifriendlyName,
            Pointer<Uint32> pdwActualStreamIndex,
          )>()(
        ptr.ref.lpVtbl,
        uifriendlyName,
        pdwActualStreamIndex,
      );
}
