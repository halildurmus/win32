// IWbemHiPerfProvider.dart

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
import '../../system/wmi/IWbemServices.dart';
import '../../foundation/structs.g.dart';
import '../../system/wmi/IWbemContext.dart';
import '../../system/wmi/IWbemObjectSink.dart';
import '../../system/wmi/IWbemRefresher.dart';
import '../../system/wmi/IWbemObjectAccess.dart';
import '../../system/wmi/IWbemHiPerfEnum.dart';

/// @nodoc
const IID_IWbemHiPerfProvider = '{49353C93-516B-11D1-AEA6-00C04FB68820}';

/// {@category Interface}
/// {@category com}
class IWbemHiPerfProvider extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IWbemHiPerfProvider(Pointer<COMObject> ptr) : super(ptr);

  int QueryInstances(
    Pointer<COMObject> pNamespace,
    Pointer<Utf16> wszClass,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pSink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pNamespace,
            Pointer<Utf16> wszClass,
            Int32 lFlags,
            Pointer<COMObject> pCtx,
            Pointer<COMObject> pSink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pNamespace,
            Pointer<Utf16> wszClass,
            int lFlags,
            Pointer<COMObject> pCtx,
            Pointer<COMObject> pSink,
          )>()(
        ptr.ref.lpVtbl,
        pNamespace,
        wszClass,
        lFlags,
        pCtx,
        pSink,
      );

  int CreateRefresher(
    Pointer<COMObject> pNamespace,
    int lFlags,
    Pointer<Pointer<COMObject>> ppRefresher,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pNamespace,
            Int32 lFlags,
            Pointer<Pointer<COMObject>> ppRefresher,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pNamespace,
            int lFlags,
            Pointer<Pointer<COMObject>> ppRefresher,
          )>()(
        ptr.ref.lpVtbl,
        pNamespace,
        lFlags,
        ppRefresher,
      );

  int CreateRefreshableObject(
    Pointer<COMObject> pNamespace,
    Pointer<COMObject> pTemplate,
    Pointer<COMObject> pRefresher,
    int lFlags,
    Pointer<COMObject> pContext,
    Pointer<Pointer<COMObject>> ppRefreshable,
    Pointer<Int32> plId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pNamespace,
            Pointer<COMObject> pTemplate,
            Pointer<COMObject> pRefresher,
            Int32 lFlags,
            Pointer<COMObject> pContext,
            Pointer<Pointer<COMObject>> ppRefreshable,
            Pointer<Int32> plId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pNamespace,
            Pointer<COMObject> pTemplate,
            Pointer<COMObject> pRefresher,
            int lFlags,
            Pointer<COMObject> pContext,
            Pointer<Pointer<COMObject>> ppRefreshable,
            Pointer<Int32> plId,
          )>()(
        ptr.ref.lpVtbl,
        pNamespace,
        pTemplate,
        pRefresher,
        lFlags,
        pContext,
        ppRefreshable,
        plId,
      );

  int StopRefreshing(
    Pointer<COMObject> pRefresher,
    int lId,
    int lFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pRefresher,
            Int32 lId,
            Int32 lFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pRefresher,
            int lId,
            int lFlags,
          )>()(
        ptr.ref.lpVtbl,
        pRefresher,
        lId,
        lFlags,
      );

  int CreateRefreshableEnum(
    Pointer<COMObject> pNamespace,
    Pointer<Utf16> wszClass,
    Pointer<COMObject> pRefresher,
    int lFlags,
    Pointer<COMObject> pContext,
    Pointer<COMObject> pHiPerfEnum,
    Pointer<Int32> plId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pNamespace,
            Pointer<Utf16> wszClass,
            Pointer<COMObject> pRefresher,
            Int32 lFlags,
            Pointer<COMObject> pContext,
            Pointer<COMObject> pHiPerfEnum,
            Pointer<Int32> plId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pNamespace,
            Pointer<Utf16> wszClass,
            Pointer<COMObject> pRefresher,
            int lFlags,
            Pointer<COMObject> pContext,
            Pointer<COMObject> pHiPerfEnum,
            Pointer<Int32> plId,
          )>()(
        ptr.ref.lpVtbl,
        pNamespace,
        wszClass,
        pRefresher,
        lFlags,
        pContext,
        pHiPerfEnum,
        plId,
      );

  int GetObjects(
    Pointer<COMObject> pNamespace,
    int lNumObjects,
    Pointer<Pointer<COMObject>> apObj,
    int lFlags,
    Pointer<COMObject> pContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pNamespace,
            Int32 lNumObjects,
            Pointer<Pointer<COMObject>> apObj,
            Int32 lFlags,
            Pointer<COMObject> pContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pNamespace,
            int lNumObjects,
            Pointer<Pointer<COMObject>> apObj,
            int lFlags,
            Pointer<COMObject> pContext,
          )>()(
        ptr.ref.lpVtbl,
        pNamespace,
        lNumObjects,
        apObj,
        lFlags,
        pContext,
      );
}
