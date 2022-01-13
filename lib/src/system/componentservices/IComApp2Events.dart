// IComApp2Events.dart

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
import '../../system/componentservices/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IComApp2Events = '{1290BC1A-B219-418D-B078-5934DED08242}';

/// {@category Interface}
/// {@category com}
class IComApp2Events extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IComApp2Events(Pointer<COMObject> ptr) : super(ptr);

  int OnAppActivation2(
    Pointer<COMSVCSEVENTINFO> pInfo,
    GUID guidApp,
    GUID guidProcess,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidApp,
            GUID guidProcess,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidApp,
            GUID guidProcess,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidApp,
        guidProcess,
      );

  int OnAppShutdown2(
    Pointer<COMSVCSEVENTINFO> pInfo,
    GUID guidApp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidApp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidApp,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidApp,
      );

  int OnAppForceShutdown2(
    Pointer<COMSVCSEVENTINFO> pInfo,
    GUID guidApp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidApp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidApp,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidApp,
      );

  int OnAppPaused2(
    Pointer<COMSVCSEVENTINFO> pInfo,
    GUID guidApp,
    int bPaused,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidApp,
            Int32 bPaused,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidApp,
            int bPaused,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidApp,
        bPaused,
      );

  int OnAppRecycle2(
    Pointer<COMSVCSEVENTINFO> pInfo,
    GUID guidApp,
    GUID guidProcess,
    int lReason,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidApp,
            GUID guidProcess,
            Int32 lReason,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidApp,
            GUID guidProcess,
            int lReason,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidApp,
        guidProcess,
        lReason,
      );
}
