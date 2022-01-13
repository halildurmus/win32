// ITfLangBarItemMgr.dart

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
import '../../ui/textservices/IEnumTfLangBarItems.dart';
import '../../foundation/structs.g.dart';
import '../../ui/textservices/ITfLangBarItem.dart';
import '../../ui/textservices/ITfLangBarItemSink.dart';
import '../../ui/textservices/structs.g.dart';

/// @nodoc
const IID_ITfLangBarItemMgr = '{BA468C55-9956-4FB1-A59D-52A7DD7CC6AA}';

/// {@category Interface}
/// {@category com}
class ITfLangBarItemMgr extends IUnknown {
  // vtable begins at 3, is 12 entries long.
  ITfLangBarItemMgr(Pointer<COMObject> ptr) : super(ptr);

  int EnumItems(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppEnum,
      );

  int GetItem(
    Pointer<GUID> rguid,
    Pointer<Pointer<COMObject>> ppItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rguid,
            Pointer<Pointer<COMObject>> ppItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rguid,
            Pointer<Pointer<COMObject>> ppItem,
          )>()(
        ptr.ref.lpVtbl,
        rguid,
        ppItem,
      );

  int AddItem(
    Pointer<COMObject> punk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punk,
          )>()(
        ptr.ref.lpVtbl,
        punk,
      );

  int RemoveItem(
    Pointer<COMObject> punk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punk,
          )>()(
        ptr.ref.lpVtbl,
        punk,
      );

  int AdviseItemSink(
    Pointer<COMObject> punk,
    Pointer<Uint32> pdwCookie,
    Pointer<GUID> rguidItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punk,
            Pointer<Uint32> pdwCookie,
            Pointer<GUID> rguidItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punk,
            Pointer<Uint32> pdwCookie,
            Pointer<GUID> rguidItem,
          )>()(
        ptr.ref.lpVtbl,
        punk,
        pdwCookie,
        rguidItem,
      );

  int UnadviseItemSink(
    int dwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwCookie,
          )>()(
        ptr.ref.lpVtbl,
        dwCookie,
      );

  int GetItemFloatingRect(
    int dwThreadId,
    Pointer<GUID> rguid,
    Pointer<RECT> prc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwThreadId,
            Pointer<GUID> rguid,
            Pointer<RECT> prc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwThreadId,
            Pointer<GUID> rguid,
            Pointer<RECT> prc,
          )>()(
        ptr.ref.lpVtbl,
        dwThreadId,
        rguid,
        prc,
      );

  int GetItemsStatus(
    int ulCount,
    Pointer<GUID> prgguid,
    Pointer<Uint32> pdwStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulCount,
            Pointer<GUID> prgguid,
            Pointer<Uint32> pdwStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulCount,
            Pointer<GUID> prgguid,
            Pointer<Uint32> pdwStatus,
          )>()(
        ptr.ref.lpVtbl,
        ulCount,
        prgguid,
        pdwStatus,
      );

  int GetItemNum(
    Pointer<Uint32> pulCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulCount,
          )>()(
        ptr.ref.lpVtbl,
        pulCount,
      );

  int GetItems(
    int ulCount,
    Pointer<Pointer<COMObject>> ppItem,
    Pointer<TF_LANGBARITEMINFO> pInfo,
    Pointer<Uint32> pdwStatus,
    Pointer<Uint32> pcFetched,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulCount,
            Pointer<Pointer<COMObject>> ppItem,
            Pointer<TF_LANGBARITEMINFO> pInfo,
            Pointer<Uint32> pdwStatus,
            Pointer<Uint32> pcFetched,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulCount,
            Pointer<Pointer<COMObject>> ppItem,
            Pointer<TF_LANGBARITEMINFO> pInfo,
            Pointer<Uint32> pdwStatus,
            Pointer<Uint32> pcFetched,
          )>()(
        ptr.ref.lpVtbl,
        ulCount,
        ppItem,
        pInfo,
        pdwStatus,
        pcFetched,
      );

  int AdviseItemsSink(
    int ulCount,
    Pointer<Pointer<COMObject>> ppunk,
    Pointer<GUID> pguidItem,
    Pointer<Uint32> pdwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulCount,
            Pointer<Pointer<COMObject>> ppunk,
            Pointer<GUID> pguidItem,
            Pointer<Uint32> pdwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulCount,
            Pointer<Pointer<COMObject>> ppunk,
            Pointer<GUID> pguidItem,
            Pointer<Uint32> pdwCookie,
          )>()(
        ptr.ref.lpVtbl,
        ulCount,
        ppunk,
        pguidItem,
        pdwCookie,
      );

  int UnadviseItemsSink(
    int ulCount,
    Pointer<Uint32> pdwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulCount,
            Pointer<Uint32> pdwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulCount,
            Pointer<Uint32> pdwCookie,
          )>()(
        ptr.ref.lpVtbl,
        ulCount,
        pdwCookie,
      );
}
