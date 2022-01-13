// ITfCategoryMgr.dart

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
import '../../system/com/IEnumGUID.dart';

/// @nodoc
const IID_ITfCategoryMgr = '{C3ACEFB5-F69D-4905-938F-FCADCF4BE830}';

/// {@category Interface}
/// {@category com}
class ITfCategoryMgr extends IUnknown {
  // vtable begins at 3, is 14 entries long.
  ITfCategoryMgr(Pointer<COMObject> ptr) : super(ptr);

  int RegisterCategory(
    Pointer<GUID> rclsid,
    Pointer<GUID> rcatid,
    Pointer<GUID> rguid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsid,
            Pointer<GUID> rcatid,
            Pointer<GUID> rguid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsid,
            Pointer<GUID> rcatid,
            Pointer<GUID> rguid,
          )>()(
        ptr.ref.lpVtbl,
        rclsid,
        rcatid,
        rguid,
      );

  int UnregisterCategory(
    Pointer<GUID> rclsid,
    Pointer<GUID> rcatid,
    Pointer<GUID> rguid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsid,
            Pointer<GUID> rcatid,
            Pointer<GUID> rguid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsid,
            Pointer<GUID> rcatid,
            Pointer<GUID> rguid,
          )>()(
        ptr.ref.lpVtbl,
        rclsid,
        rcatid,
        rguid,
      );

  int EnumCategoriesInItem(
    Pointer<GUID> rguid,
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rguid,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rguid,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        rguid,
        ppEnum,
      );

  int EnumItemsInCategory(
    Pointer<GUID> rcatid,
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rcatid,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rcatid,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        rcatid,
        ppEnum,
      );

  int FindClosestCategory(
    Pointer<GUID> rguid,
    Pointer<GUID> pcatid,
    Pointer<Pointer<GUID>> ppcatidList,
    int ulCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rguid,
            Pointer<GUID> pcatid,
            Pointer<Pointer<GUID>> ppcatidList,
            Uint32 ulCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rguid,
            Pointer<GUID> pcatid,
            Pointer<Pointer<GUID>> ppcatidList,
            int ulCount,
          )>()(
        ptr.ref.lpVtbl,
        rguid,
        pcatid,
        ppcatidList,
        ulCount,
      );

  int RegisterGUIDDescription(
    Pointer<GUID> rclsid,
    Pointer<GUID> rguid,
    Pointer<Utf16> pchDesc,
    int cch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsid,
            Pointer<GUID> rguid,
            Pointer<Utf16> pchDesc,
            Uint32 cch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsid,
            Pointer<GUID> rguid,
            Pointer<Utf16> pchDesc,
            int cch,
          )>()(
        ptr.ref.lpVtbl,
        rclsid,
        rguid,
        pchDesc,
        cch,
      );

  int UnregisterGUIDDescription(
    Pointer<GUID> rclsid,
    Pointer<GUID> rguid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsid,
            Pointer<GUID> rguid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsid,
            Pointer<GUID> rguid,
          )>()(
        ptr.ref.lpVtbl,
        rclsid,
        rguid,
      );

  int GetGUIDDescription(
    Pointer<GUID> rguid,
    Pointer<Pointer<Utf16>> pbstrDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rguid,
            Pointer<Pointer<Utf16>> pbstrDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rguid,
            Pointer<Pointer<Utf16>> pbstrDesc,
          )>()(
        ptr.ref.lpVtbl,
        rguid,
        pbstrDesc,
      );

  int RegisterGUIDDWORD(
    Pointer<GUID> rclsid,
    Pointer<GUID> rguid,
    int dw,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsid,
            Pointer<GUID> rguid,
            Uint32 dw,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsid,
            Pointer<GUID> rguid,
            int dw,
          )>()(
        ptr.ref.lpVtbl,
        rclsid,
        rguid,
        dw,
      );

  int UnregisterGUIDDWORD(
    Pointer<GUID> rclsid,
    Pointer<GUID> rguid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsid,
            Pointer<GUID> rguid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsid,
            Pointer<GUID> rguid,
          )>()(
        ptr.ref.lpVtbl,
        rclsid,
        rguid,
      );

  int GetGUIDDWORD(
    Pointer<GUID> rguid,
    Pointer<Uint32> pdw,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rguid,
            Pointer<Uint32> pdw,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rguid,
            Pointer<Uint32> pdw,
          )>()(
        ptr.ref.lpVtbl,
        rguid,
        pdw,
      );

  int RegisterGUID(
    Pointer<GUID> rguid,
    Pointer<Uint32> pguidatom,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rguid,
            Pointer<Uint32> pguidatom,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rguid,
            Pointer<Uint32> pguidatom,
          )>()(
        ptr.ref.lpVtbl,
        rguid,
        pguidatom,
      );

  int GetGUID(
    int guidatom,
    Pointer<GUID> pguid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 guidatom,
            Pointer<GUID> pguid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int guidatom,
            Pointer<GUID> pguid,
          )>()(
        ptr.ref.lpVtbl,
        guidatom,
        pguid,
      );

  int IsEqualTfGuidAtom(
    int guidatom,
    Pointer<GUID> rguid,
    Pointer<Int32> pfEqual,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 guidatom,
            Pointer<GUID> rguid,
            Pointer<Int32> pfEqual,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int guidatom,
            Pointer<GUID> rguid,
            Pointer<Int32> pfEqual,
          )>()(
        ptr.ref.lpVtbl,
        guidatom,
        rguid,
        pfEqual,
      );
}
