// ICatInformation.dart

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
import '../../system/com/IEnumCATEGORYINFO.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/IEnumGUID.dart';

/// @nodoc
const IID_ICatInformation = '{0002E013-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class ICatInformation extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  ICatInformation(Pointer<COMObject> ptr) : super(ptr);

  int EnumCategories(
    int lcid,
    Pointer<Pointer<COMObject>> ppenumCategoryInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 lcid,
            Pointer<Pointer<COMObject>> ppenumCategoryInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lcid,
            Pointer<Pointer<COMObject>> ppenumCategoryInfo,
          )>()(
        ptr.ref.lpVtbl,
        lcid,
        ppenumCategoryInfo,
      );

  int GetCategoryDesc(
    Pointer<GUID> rcatid,
    int lcid,
    Pointer<Pointer<Utf16>> pszDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rcatid,
            Uint32 lcid,
            Pointer<Pointer<Utf16>> pszDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rcatid,
            int lcid,
            Pointer<Pointer<Utf16>> pszDesc,
          )>()(
        ptr.ref.lpVtbl,
        rcatid,
        lcid,
        pszDesc,
      );

  int EnumClassesOfCategories(
    int cImplemented,
    Pointer<GUID> rgcatidImpl,
    int cRequired,
    Pointer<GUID> rgcatidReq,
    Pointer<Pointer<COMObject>> ppenumClsid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cImplemented,
            Pointer<GUID> rgcatidImpl,
            Uint32 cRequired,
            Pointer<GUID> rgcatidReq,
            Pointer<Pointer<COMObject>> ppenumClsid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cImplemented,
            Pointer<GUID> rgcatidImpl,
            int cRequired,
            Pointer<GUID> rgcatidReq,
            Pointer<Pointer<COMObject>> ppenumClsid,
          )>()(
        ptr.ref.lpVtbl,
        cImplemented,
        rgcatidImpl,
        cRequired,
        rgcatidReq,
        ppenumClsid,
      );

  int IsClassOfCategories(
    Pointer<GUID> rclsid,
    int cImplemented,
    Pointer<GUID> rgcatidImpl,
    int cRequired,
    Pointer<GUID> rgcatidReq,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsid,
            Uint32 cImplemented,
            Pointer<GUID> rgcatidImpl,
            Uint32 cRequired,
            Pointer<GUID> rgcatidReq,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsid,
            int cImplemented,
            Pointer<GUID> rgcatidImpl,
            int cRequired,
            Pointer<GUID> rgcatidReq,
          )>()(
        ptr.ref.lpVtbl,
        rclsid,
        cImplemented,
        rgcatidImpl,
        cRequired,
        rgcatidReq,
      );

  int EnumImplCategoriesOfClass(
    Pointer<GUID> rclsid,
    Pointer<Pointer<COMObject>> ppenumCatid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsid,
            Pointer<Pointer<COMObject>> ppenumCatid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsid,
            Pointer<Pointer<COMObject>> ppenumCatid,
          )>()(
        ptr.ref.lpVtbl,
        rclsid,
        ppenumCatid,
      );

  int EnumReqCategoriesOfClass(
    Pointer<GUID> rclsid,
    Pointer<Pointer<COMObject>> ppenumCatid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsid,
            Pointer<Pointer<COMObject>> ppenumCatid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsid,
            Pointer<Pointer<COMObject>> ppenumCatid,
          )>()(
        ptr.ref.lpVtbl,
        rclsid,
        ppenumCatid,
      );
}
