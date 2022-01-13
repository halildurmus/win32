// IAppPublisher.dart

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
import '../../ui/shell/structs.g.dart';
import '../../ui/shell/IEnumPublishedApps.dart';

/// @nodoc
const IID_IAppPublisher = '{07250A10-9CF9-11D1-9076-006008059382}';

/// {@category Interface}
/// {@category com}
class IAppPublisher extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IAppPublisher(Pointer<COMObject> ptr) : super(ptr);

  int GetNumberOfCategories(
    Pointer<Uint32> pdwCat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwCat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwCat,
          )>()(
        ptr.ref.lpVtbl,
        pdwCat,
      );

  int GetCategories(
    Pointer<APPCATEGORYINFOLIST> pAppCategoryList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<APPCATEGORYINFOLIST> pAppCategoryList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<APPCATEGORYINFOLIST> pAppCategoryList,
          )>()(
        ptr.ref.lpVtbl,
        pAppCategoryList,
      );

  int GetNumberOfApps(
    Pointer<Uint32> pdwApps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwApps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwApps,
          )>()(
        ptr.ref.lpVtbl,
        pdwApps,
      );

  int EnumApps(
    Pointer<GUID> pAppCategoryId,
    Pointer<Pointer<COMObject>> ppepa,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pAppCategoryId,
            Pointer<Pointer<COMObject>> ppepa,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pAppCategoryId,
            Pointer<Pointer<COMObject>> ppepa,
          )>()(
        ptr.ref.lpVtbl,
        pAppCategoryId,
        ppepa,
      );
}
