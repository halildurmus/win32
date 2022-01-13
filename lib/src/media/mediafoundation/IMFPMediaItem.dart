// IMFPMediaItem.dart

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
import '../../media/mediafoundation/IMFPMediaPlayer.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../ui/shell/propertiessystem/IPropertyStore.dart';

/// @nodoc
const IID_IMFPMediaItem = '{90EB3E6B-ECBF-45CC-B1DA-C6FE3EA70D57}';

/// {@category Interface}
/// {@category com}
class IMFPMediaItem extends IUnknown {
  // vtable begins at 3, is 19 entries long.
  IMFPMediaItem(Pointer<COMObject> ptr) : super(ptr);

  int GetMediaPlayer(
    Pointer<Pointer<COMObject>> ppMediaPlayer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppMediaPlayer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppMediaPlayer,
          )>()(
        ptr.ref.lpVtbl,
        ppMediaPlayer,
      );

  int GetURL(
    Pointer<Pointer<Utf16>> ppwszURL,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszURL,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszURL,
          )>()(
        ptr.ref.lpVtbl,
        ppwszURL,
      );

  int GetObject(
    Pointer<Pointer<COMObject>> ppIUnknown,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIUnknown,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIUnknown,
          )>()(
        ptr.ref.lpVtbl,
        ppIUnknown,
      );

  int GetUserData(
    Pointer<IntPtr> pdwUserData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> pdwUserData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> pdwUserData,
          )>()(
        ptr.ref.lpVtbl,
        pdwUserData,
      );

  int SetUserData(
    int dwUserData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr dwUserData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwUserData,
          )>()(
        ptr.ref.lpVtbl,
        dwUserData,
      );

  int GetStartStopPosition(
    Pointer<GUID> pguidStartPositionType,
    Pointer<PROPVARIANT> pvStartValue,
    Pointer<GUID> pguidStopPositionType,
    Pointer<PROPVARIANT> pvStopValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidStartPositionType,
            Pointer<PROPVARIANT> pvStartValue,
            Pointer<GUID> pguidStopPositionType,
            Pointer<PROPVARIANT> pvStopValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidStartPositionType,
            Pointer<PROPVARIANT> pvStartValue,
            Pointer<GUID> pguidStopPositionType,
            Pointer<PROPVARIANT> pvStopValue,
          )>()(
        ptr.ref.lpVtbl,
        pguidStartPositionType,
        pvStartValue,
        pguidStopPositionType,
        pvStopValue,
      );

  int SetStartStopPosition(
    Pointer<GUID> pguidStartPositionType,
    Pointer<PROPVARIANT> pvStartValue,
    Pointer<GUID> pguidStopPositionType,
    Pointer<PROPVARIANT> pvStopValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidStartPositionType,
            Pointer<PROPVARIANT> pvStartValue,
            Pointer<GUID> pguidStopPositionType,
            Pointer<PROPVARIANT> pvStopValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidStartPositionType,
            Pointer<PROPVARIANT> pvStartValue,
            Pointer<GUID> pguidStopPositionType,
            Pointer<PROPVARIANT> pvStopValue,
          )>()(
        ptr.ref.lpVtbl,
        pguidStartPositionType,
        pvStartValue,
        pguidStopPositionType,
        pvStopValue,
      );

  int HasVideo(
    Pointer<Int32> pfHasVideo,
    Pointer<Int32> pfSelected,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfHasVideo,
            Pointer<Int32> pfSelected,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfHasVideo,
            Pointer<Int32> pfSelected,
          )>()(
        ptr.ref.lpVtbl,
        pfHasVideo,
        pfSelected,
      );

  int HasAudio(
    Pointer<Int32> pfHasAudio,
    Pointer<Int32> pfSelected,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfHasAudio,
            Pointer<Int32> pfSelected,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfHasAudio,
            Pointer<Int32> pfSelected,
          )>()(
        ptr.ref.lpVtbl,
        pfHasAudio,
        pfSelected,
      );

  int IsProtected(
    Pointer<Int32> pfProtected,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfProtected,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfProtected,
          )>()(
        ptr.ref.lpVtbl,
        pfProtected,
      );

  int GetDuration(
    Pointer<GUID> guidPositionType,
    Pointer<PROPVARIANT> pvDurationValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidPositionType,
            Pointer<PROPVARIANT> pvDurationValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidPositionType,
            Pointer<PROPVARIANT> pvDurationValue,
          )>()(
        ptr.ref.lpVtbl,
        guidPositionType,
        pvDurationValue,
      );

  int GetNumberOfStreams(
    Pointer<Uint32> pdwStreamCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
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

  int GetStreamSelection(
    int dwStreamIndex,
    Pointer<Int32> pfEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
            Pointer<Int32> pfEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
            Pointer<Int32> pfEnabled,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
        pfEnabled,
      );

  int SetStreamSelection(
    int dwStreamIndex,
    int fEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
            Int32 fEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
            int fEnabled,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
        fEnabled,
      );

  int GetStreamAttribute(
    int dwStreamIndex,
    Pointer<GUID> guidMFAttribute,
    Pointer<PROPVARIANT> pvValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
            Pointer<GUID> guidMFAttribute,
            Pointer<PROPVARIANT> pvValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
            Pointer<GUID> guidMFAttribute,
            Pointer<PROPVARIANT> pvValue,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
        guidMFAttribute,
        pvValue,
      );

  int GetPresentationAttribute(
    Pointer<GUID> guidMFAttribute,
    Pointer<PROPVARIANT> pvValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidMFAttribute,
            Pointer<PROPVARIANT> pvValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidMFAttribute,
            Pointer<PROPVARIANT> pvValue,
          )>()(
        ptr.ref.lpVtbl,
        guidMFAttribute,
        pvValue,
      );

  int GetCharacteristics(
    Pointer<Uint32> pCharacteristics,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pCharacteristics,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pCharacteristics,
          )>()(
        ptr.ref.lpVtbl,
        pCharacteristics,
      );

  int SetStreamSink(
    int dwStreamIndex,
    Pointer<COMObject> pMediaSink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
            Pointer<COMObject> pMediaSink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
            Pointer<COMObject> pMediaSink,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
        pMediaSink,
      );

  int GetMetadata(
    Pointer<Pointer<COMObject>> ppMetadataStore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppMetadataStore,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppMetadataStore,
          )>()(
        ptr.ref.lpVtbl,
        ppMetadataStore,
      );
}
