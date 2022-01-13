// IRichEditOle.dart

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
import '../../../system/ole/IOleClientSite.dart';
import '../../../foundation/structs.g.dart';
import '../../../ui/controls/richedit/structs.g.dart';
import '../../../system/com/structuredstorage/IStorage.dart';
import '../../../system/com/IDataObject.dart';

/// @nodoc
const IID_IRichEditOle = '{00020D00-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IRichEditOle extends IUnknown {
  // vtable begins at 3, is 16 entries long.
  IRichEditOle(Pointer<COMObject> ptr) : super(ptr);

  int GetClientSite(
    Pointer<Pointer<COMObject>> lplpolesite,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> lplpolesite,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> lplpolesite,
          )>()(
        ptr.ref.lpVtbl,
        lplpolesite,
      );

  int GetObjectCount() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int GetLinkCount() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int GetObject(
    int iob,
    Pointer<REOBJECT> lpreobject,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iob,
            Pointer<REOBJECT> lpreobject,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iob,
            Pointer<REOBJECT> lpreobject,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        iob,
        lpreobject,
        dwFlags,
      );

  int InsertObject(
    Pointer<REOBJECT> lpreobject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<REOBJECT> lpreobject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<REOBJECT> lpreobject,
          )>()(
        ptr.ref.lpVtbl,
        lpreobject,
      );

  int ConvertObject(
    int iob,
    Pointer<GUID> rclsidNew,
    Pointer<Utf8> lpstrUserTypeNew,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iob,
            Pointer<GUID> rclsidNew,
            Pointer<Utf8> lpstrUserTypeNew,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iob,
            Pointer<GUID> rclsidNew,
            Pointer<Utf8> lpstrUserTypeNew,
          )>()(
        ptr.ref.lpVtbl,
        iob,
        rclsidNew,
        lpstrUserTypeNew,
      );

  int ActivateAs(
    Pointer<GUID> rclsid,
    Pointer<GUID> rclsidAs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsid,
            Pointer<GUID> rclsidAs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsid,
            Pointer<GUID> rclsidAs,
          )>()(
        ptr.ref.lpVtbl,
        rclsid,
        rclsidAs,
      );

  int SetHostNames(
    Pointer<Utf8> lpstrContainerApp,
    Pointer<Utf8> lpstrContainerObj,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> lpstrContainerApp,
            Pointer<Utf8> lpstrContainerObj,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> lpstrContainerApp,
            Pointer<Utf8> lpstrContainerObj,
          )>()(
        ptr.ref.lpVtbl,
        lpstrContainerApp,
        lpstrContainerObj,
      );

  int SetLinkAvailable(
    int iob,
    int fAvailable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iob,
            Int32 fAvailable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iob,
            int fAvailable,
          )>()(
        ptr.ref.lpVtbl,
        iob,
        fAvailable,
      );

  int SetDvaspect(
    int iob,
    int dvaspect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iob,
            Uint32 dvaspect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iob,
            int dvaspect,
          )>()(
        ptr.ref.lpVtbl,
        iob,
        dvaspect,
      );

  int HandsOffStorage(
    int iob,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iob,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iob,
          )>()(
        ptr.ref.lpVtbl,
        iob,
      );

  int SaveCompleted(
    int iob,
    Pointer<COMObject> lpstg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iob,
            Pointer<COMObject> lpstg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iob,
            Pointer<COMObject> lpstg,
          )>()(
        ptr.ref.lpVtbl,
        iob,
        lpstg,
      );

  int InPlaceDeactivate() => ptr.ref.lpVtbl.value
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

  int ContextSensitiveHelp(
    int fEnterMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
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
          .elementAt(17)
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

  int ImportDataObject(
    Pointer<COMObject> lpdataobj,
    int cf,
    int hMetaPict,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> lpdataobj,
            Uint16 cf,
            IntPtr hMetaPict,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> lpdataobj,
            int cf,
            int hMetaPict,
          )>()(
        ptr.ref.lpVtbl,
        lpdataobj,
        cf,
        hMetaPict,
      );
}
