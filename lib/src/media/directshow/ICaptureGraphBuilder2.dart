// ICaptureGraphBuilder2.dart

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
import '../../media/directshow/IGraphBuilder.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/IBaseFilter.dart';
import '../../media/directshow/IFileSinkFilter.dart';
import '../../specialTypes.dart';
import '../../media/directshow/IAMCopyCaptureFileProgress.dart';
import '../../media/directshow/structs.g.dart';
import '../../media/directshow/IPin.dart';

/// @nodoc
const IID_ICaptureGraphBuilder2 = '{93E5A4E0-2D50-11D2-ABFA-00A0C9C6E38D}';

/// {@category Interface}
/// {@category com}
class ICaptureGraphBuilder2 extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  ICaptureGraphBuilder2(Pointer<COMObject> ptr) : super(ptr);

  int SetFiltergraph(
    Pointer<COMObject> pfg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pfg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pfg,
          )>()(
        ptr.ref.lpVtbl,
        pfg,
      );

  int GetFiltergraph(
    Pointer<Pointer<COMObject>> ppfg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppfg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppfg,
          )>()(
        ptr.ref.lpVtbl,
        ppfg,
      );

  int SetOutputFileName(
    Pointer<GUID> pType,
    Pointer<Utf16> lpstrFile,
    Pointer<Pointer<COMObject>> ppf,
    Pointer<Pointer<COMObject>> ppSink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pType,
            Pointer<Utf16> lpstrFile,
            Pointer<Pointer<COMObject>> ppf,
            Pointer<Pointer<COMObject>> ppSink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pType,
            Pointer<Utf16> lpstrFile,
            Pointer<Pointer<COMObject>> ppf,
            Pointer<Pointer<COMObject>> ppSink,
          )>()(
        ptr.ref.lpVtbl,
        pType,
        lpstrFile,
        ppf,
        ppSink,
      );

  int FindInterface(
    Pointer<GUID> pCategory,
    Pointer<GUID> pType,
    Pointer<COMObject> pf,
    Pointer<GUID> riid,
    Pointer<Pointer> ppint,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pCategory,
            Pointer<GUID> pType,
            Pointer<COMObject> pf,
            Pointer<GUID> riid,
            Pointer<Pointer> ppint,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pCategory,
            Pointer<GUID> pType,
            Pointer<COMObject> pf,
            Pointer<GUID> riid,
            Pointer<Pointer> ppint,
          )>()(
        ptr.ref.lpVtbl,
        pCategory,
        pType,
        pf,
        riid,
        ppint,
      );

  int RenderStream(
    Pointer<GUID> pCategory,
    Pointer<GUID> pType,
    Pointer<COMObject> pSource,
    Pointer<COMObject> pfCompressor,
    Pointer<COMObject> pfRenderer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pCategory,
            Pointer<GUID> pType,
            Pointer<COMObject> pSource,
            Pointer<COMObject> pfCompressor,
            Pointer<COMObject> pfRenderer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pCategory,
            Pointer<GUID> pType,
            Pointer<COMObject> pSource,
            Pointer<COMObject> pfCompressor,
            Pointer<COMObject> pfRenderer,
          )>()(
        ptr.ref.lpVtbl,
        pCategory,
        pType,
        pSource,
        pfCompressor,
        pfRenderer,
      );

  int ControlStream(
    Pointer<GUID> pCategory,
    Pointer<GUID> pType,
    Pointer<COMObject> pFilter,
    Pointer<Int64> pstart,
    Pointer<Int64> pstop,
    int wStartCookie,
    int wStopCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pCategory,
            Pointer<GUID> pType,
            Pointer<COMObject> pFilter,
            Pointer<Int64> pstart,
            Pointer<Int64> pstop,
            Uint16 wStartCookie,
            Uint16 wStopCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pCategory,
            Pointer<GUID> pType,
            Pointer<COMObject> pFilter,
            Pointer<Int64> pstart,
            Pointer<Int64> pstop,
            int wStartCookie,
            int wStopCookie,
          )>()(
        ptr.ref.lpVtbl,
        pCategory,
        pType,
        pFilter,
        pstart,
        pstop,
        wStartCookie,
        wStopCookie,
      );

  int AllocCapFile(
    Pointer<Utf16> lpstr,
    int dwlSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> lpstr,
            Uint64 dwlSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> lpstr,
            int dwlSize,
          )>()(
        ptr.ref.lpVtbl,
        lpstr,
        dwlSize,
      );

  int CopyCaptureFile(
    Pointer<Utf16> lpwstrOld,
    Pointer<Utf16> lpwstrNew,
    int fAllowEscAbort,
    Pointer<COMObject> pCallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> lpwstrOld,
            Pointer<Utf16> lpwstrNew,
            Int32 fAllowEscAbort,
            Pointer<COMObject> pCallback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> lpwstrOld,
            Pointer<Utf16> lpwstrNew,
            int fAllowEscAbort,
            Pointer<COMObject> pCallback,
          )>()(
        ptr.ref.lpVtbl,
        lpwstrOld,
        lpwstrNew,
        fAllowEscAbort,
        pCallback,
      );

  int FindPin(
    Pointer<COMObject> pSource,
    int pindir,
    Pointer<GUID> pCategory,
    Pointer<GUID> pType,
    int fUnconnected,
    int num,
    Pointer<Pointer<COMObject>> ppPin,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSource,
            Int32 pindir,
            Pointer<GUID> pCategory,
            Pointer<GUID> pType,
            Int32 fUnconnected,
            Int32 num,
            Pointer<Pointer<COMObject>> ppPin,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSource,
            int pindir,
            Pointer<GUID> pCategory,
            Pointer<GUID> pType,
            int fUnconnected,
            int num,
            Pointer<Pointer<COMObject>> ppPin,
          )>()(
        ptr.ref.lpVtbl,
        pSource,
        pindir,
        pCategory,
        pType,
        fUnconnected,
        num,
        ppPin,
      );
}
