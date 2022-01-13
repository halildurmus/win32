// ICategorizer.dart

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
import '../../ui/shell/common/structs.g.dart';
import '../../ui/shell/structs.g.dart';

/// @nodoc
const IID_ICategorizer = '{A3B14589-9174-49A8-89A3-06A1AE2B9BA7}';

/// {@category Interface}
/// {@category com}
class ICategorizer extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ICategorizer(Pointer<COMObject> ptr) : super(ptr);

  int GetDescription(
    Pointer<Utf16> pszDesc,
    int cch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszDesc,
            Uint32 cch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszDesc,
            int cch,
          )>()(
        ptr.ref.lpVtbl,
        pszDesc,
        cch,
      );

  int GetCategory(
    int cidl,
    Pointer<Pointer<ITEMIDLIST>> apidl,
    Pointer<Uint32> rgCategoryIds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cidl,
            Pointer<Pointer<ITEMIDLIST>> apidl,
            Pointer<Uint32> rgCategoryIds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cidl,
            Pointer<Pointer<ITEMIDLIST>> apidl,
            Pointer<Uint32> rgCategoryIds,
          )>()(
        ptr.ref.lpVtbl,
        cidl,
        apidl,
        rgCategoryIds,
      );

  int GetCategoryInfo(
    int dwCategoryId,
    Pointer<CATEGORY_INFO> pci,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwCategoryId,
            Pointer<CATEGORY_INFO> pci,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwCategoryId,
            Pointer<CATEGORY_INFO> pci,
          )>()(
        ptr.ref.lpVtbl,
        dwCategoryId,
        pci,
      );

  int CompareCategory(
    int csfFlags,
    int dwCategoryId1,
    int dwCategoryId2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 csfFlags,
            Uint32 dwCategoryId1,
            Uint32 dwCategoryId2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int csfFlags,
            int dwCategoryId1,
            int dwCategoryId2,
          )>()(
        ptr.ref.lpVtbl,
        csfFlags,
        dwCategoryId1,
        dwCategoryId2,
      );
}
