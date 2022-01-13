// IRichEditOleCallback.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../system/com/structuredstorage/IStorage.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/ole/IOleInPlaceFrame.dart';
import '../../../system/ole/IOleInPlaceUIWindow.dart';
import '../../../system/ole/structs.g.dart';
import '../../../system/ole/IOleObject.dart';
import '../../../system/com/IDataObject.dart';
import '../../../ui/controls/richedit/structs.g.dart';
import '../../../ui/windowsandmessaging/structs.g.dart';

/// @nodoc
const IID_IRichEditOleCallback = '{00020D03-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IRichEditOleCallback extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  IRichEditOleCallback(Pointer<COMObject> ptr) : super(ptr);

  int GetNewStorage(
    Pointer<Pointer<COMObject>> lplpstg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> lplpstg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> lplpstg,
          )>()(
        ptr.ref.lpVtbl,
        lplpstg,
      );

  int GetInPlaceContext(
    Pointer<Pointer<COMObject>> lplpFrame,
    Pointer<Pointer<COMObject>> lplpDoc,
    Pointer<OIFI> lpFrameInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> lplpFrame,
            Pointer<Pointer<COMObject>> lplpDoc,
            Pointer<OIFI> lpFrameInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> lplpFrame,
            Pointer<Pointer<COMObject>> lplpDoc,
            Pointer<OIFI> lpFrameInfo,
          )>()(
        ptr.ref.lpVtbl,
        lplpFrame,
        lplpDoc,
        lpFrameInfo,
      );

  int ShowContainerUI(
    int fShow,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fShow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fShow,
          )>()(
        ptr.ref.lpVtbl,
        fShow,
      );

  int QueryInsertObject(
    Pointer<GUID> lpclsid,
    Pointer<COMObject> lpstg,
    int cp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> lpclsid,
            Pointer<COMObject> lpstg,
            Int32 cp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> lpclsid,
            Pointer<COMObject> lpstg,
            int cp,
          )>()(
        ptr.ref.lpVtbl,
        lpclsid,
        lpstg,
        cp,
      );

  int DeleteObject(
    Pointer<COMObject> lpoleobj,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> lpoleobj,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> lpoleobj,
          )>()(
        ptr.ref.lpVtbl,
        lpoleobj,
      );

  int QueryAcceptData(
    Pointer<COMObject> lpdataobj,
    Pointer<Uint16> lpcfFormat,
    int reco,
    int fReally,
    int hMetaPict,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> lpdataobj,
            Pointer<Uint16> lpcfFormat,
            Uint32 reco,
            Int32 fReally,
            IntPtr hMetaPict,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> lpdataobj,
            Pointer<Uint16> lpcfFormat,
            int reco,
            int fReally,
            int hMetaPict,
          )>()(
        ptr.ref.lpVtbl,
        lpdataobj,
        lpcfFormat,
        reco,
        fReally,
        hMetaPict,
      );

  int ContextSensitiveHelp(
    int fEnterMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fEnterMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fEnterMode,
          )>()(
        ptr.ref.lpVtbl,
        fEnterMode,
      );

  int GetClipboardData(
    Pointer<CHARRANGE> lpchrg,
    int reco,
    Pointer<Pointer<COMObject>> lplpdataobj,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<CHARRANGE> lpchrg,
            Uint32 reco,
            Pointer<Pointer<COMObject>> lplpdataobj,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<CHARRANGE> lpchrg,
            int reco,
            Pointer<Pointer<COMObject>> lplpdataobj,
          )>()(
        ptr.ref.lpVtbl,
        lpchrg,
        reco,
        lplpdataobj,
      );

  int GetDragDropEffect(
    int fDrag,
    int grfKeyState,
    Pointer<Uint32> pdwEffect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fDrag,
            Uint32 grfKeyState,
            Pointer<Uint32> pdwEffect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fDrag,
            int grfKeyState,
            Pointer<Uint32> pdwEffect,
          )>()(
        ptr.ref.lpVtbl,
        fDrag,
        grfKeyState,
        pdwEffect,
      );

  int GetContextMenu(
    int seltype,
    Pointer<COMObject> lpoleobj,
    Pointer<CHARRANGE> lpchrg,
    Pointer<IntPtr> lphmenu,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 seltype,
            Pointer<COMObject> lpoleobj,
            Pointer<CHARRANGE> lpchrg,
            Pointer<IntPtr> lphmenu,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int seltype,
            Pointer<COMObject> lpoleobj,
            Pointer<CHARRANGE> lpchrg,
            Pointer<IntPtr> lphmenu,
          )>()(
        ptr.ref.lpVtbl,
        seltype,
        lpoleobj,
        lpchrg,
        lphmenu,
      );
}
