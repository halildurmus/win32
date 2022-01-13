// IRTCUserSearch.dart

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
import '../../system/realtimecommunications/IRTCUserSearchQuery.dart';
import '../../foundation/structs.g.dart';
import '../../system/realtimecommunications/IRTCProfile.dart';

/// @nodoc
const IID_IRTCUserSearch = '{B619882B-860C-4DB4-BE1B-693B6505BBE5}';

/// {@category Interface}
/// {@category com}
class IRTCUserSearch extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IRTCUserSearch(Pointer<COMObject> ptr) : super(ptr);

  int CreateQuery(
    Pointer<Pointer<COMObject>> ppQuery,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppQuery,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppQuery,
          )>()(
        ptr.ref.lpVtbl,
        ppQuery,
      );

  int ExecuteSearch(
    Pointer<COMObject> pQuery,
    Pointer<COMObject> pProfile,
    int lCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pQuery,
            Pointer<COMObject> pProfile,
            IntPtr lCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pQuery,
            Pointer<COMObject> pProfile,
            int lCookie,
          )>()(
        ptr.ref.lpVtbl,
        pQuery,
        pProfile,
        lCookie,
      );
}
