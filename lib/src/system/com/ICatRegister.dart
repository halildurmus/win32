// ICatRegister.dart

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
import '../../system/com/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ICatRegister = '{0002E012-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class ICatRegister extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  ICatRegister(Pointer<COMObject> ptr) : super(ptr);

  int RegisterCategories(
    int cCategories,
    Pointer<CATEGORYINFO> rgCategoryInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cCategories,
            Pointer<CATEGORYINFO> rgCategoryInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cCategories,
            Pointer<CATEGORYINFO> rgCategoryInfo,
          )>()(
        ptr.ref.lpVtbl,
        cCategories,
        rgCategoryInfo,
      );

  int UnRegisterCategories(
    int cCategories,
    Pointer<GUID> rgcatid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cCategories,
            Pointer<GUID> rgcatid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cCategories,
            Pointer<GUID> rgcatid,
          )>()(
        ptr.ref.lpVtbl,
        cCategories,
        rgcatid,
      );

  int RegisterClassImplCategories(
    Pointer<GUID> rclsid,
    int cCategories,
    Pointer<GUID> rgcatid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsid,
            Uint32 cCategories,
            Pointer<GUID> rgcatid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsid,
            int cCategories,
            Pointer<GUID> rgcatid,
          )>()(
        ptr.ref.lpVtbl,
        rclsid,
        cCategories,
        rgcatid,
      );

  int UnRegisterClassImplCategories(
    Pointer<GUID> rclsid,
    int cCategories,
    Pointer<GUID> rgcatid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsid,
            Uint32 cCategories,
            Pointer<GUID> rgcatid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsid,
            int cCategories,
            Pointer<GUID> rgcatid,
          )>()(
        ptr.ref.lpVtbl,
        rclsid,
        cCategories,
        rgcatid,
      );

  int RegisterClassReqCategories(
    Pointer<GUID> rclsid,
    int cCategories,
    Pointer<GUID> rgcatid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsid,
            Uint32 cCategories,
            Pointer<GUID> rgcatid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsid,
            int cCategories,
            Pointer<GUID> rgcatid,
          )>()(
        ptr.ref.lpVtbl,
        rclsid,
        cCategories,
        rgcatid,
      );

  int UnRegisterClassReqCategories(
    Pointer<GUID> rclsid,
    int cCategories,
    Pointer<GUID> rgcatid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsid,
            Uint32 cCategories,
            Pointer<GUID> rgcatid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsid,
            int cCategories,
            Pointer<GUID> rgcatid,
          )>()(
        ptr.ref.lpVtbl,
        rclsid,
        cCategories,
        rgcatid,
      );
}
