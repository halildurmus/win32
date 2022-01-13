// ICategoryProvider.dart

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
import '../../ui/shell/propertiessystem/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/IEnumGUID.dart';

/// @nodoc
const IID_ICategoryProvider = '{9AF64809-5864-4C26-A720-C1F78C086EE3}';

/// {@category Interface}
/// {@category com}
class ICategoryProvider extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  ICategoryProvider(Pointer<COMObject> ptr) : super(ptr);

  int CanCategorizeOnSCID(
    Pointer<PROPERTYKEY> pscid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> pscid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> pscid,
          )>()(
        ptr.ref.lpVtbl,
        pscid,
      );

  int GetDefaultCategory(
    Pointer<GUID> pguid,
    Pointer<PROPERTYKEY> pscid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguid,
            Pointer<PROPERTYKEY> pscid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguid,
            Pointer<PROPERTYKEY> pscid,
          )>()(
        ptr.ref.lpVtbl,
        pguid,
        pscid,
      );

  int GetCategoryForSCID(
    Pointer<PROPERTYKEY> pscid,
    Pointer<GUID> pguid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> pscid,
            Pointer<GUID> pguid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> pscid,
            Pointer<GUID> pguid,
          )>()(
        ptr.ref.lpVtbl,
        pscid,
        pguid,
      );

  int EnumCategories(
    Pointer<Pointer<COMObject>> penum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> penum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> penum,
          )>()(
        ptr.ref.lpVtbl,
        penum,
      );

  int GetCategoryName(
    Pointer<GUID> pguid,
    Pointer<Utf16> pszName,
    int cch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguid,
            Pointer<Utf16> pszName,
            Uint32 cch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguid,
            Pointer<Utf16> pszName,
            int cch,
          )>()(
        ptr.ref.lpVtbl,
        pguid,
        pszName,
        cch,
      );

  int CreateCategory(
    Pointer<GUID> pguid,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguid,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguid,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        pguid,
        riid,
        ppv,
      );
}
