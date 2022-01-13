// IGraphConfig.dart

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
import '../../media/directshow/IPin.dart';
import '../../media/directshow/structs.g.dart';
import '../../media/directshow/IBaseFilter.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/IGraphConfigCallback.dart';
import '../../media/directshow/IEnumFilters.dart';
import '../../media/directshow/IPinConnection.dart';

/// @nodoc
const IID_IGraphConfig = '{03A1EB8E-32BF-4245-8502-114D08A9CB88}';

/// {@category Interface}
/// {@category com}
class IGraphConfig extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  IGraphConfig(Pointer<COMObject> ptr) : super(ptr);

  int Reconnect(
    Pointer<COMObject> pOutputPin,
    Pointer<COMObject> pInputPin,
    Pointer<AM_MEDIA_TYPE> pmtFirstConnection,
    Pointer<COMObject> pUsingFilter,
    int hAbortEvent,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pOutputPin,
            Pointer<COMObject> pInputPin,
            Pointer<AM_MEDIA_TYPE> pmtFirstConnection,
            Pointer<COMObject> pUsingFilter,
            IntPtr hAbortEvent,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pOutputPin,
            Pointer<COMObject> pInputPin,
            Pointer<AM_MEDIA_TYPE> pmtFirstConnection,
            Pointer<COMObject> pUsingFilter,
            int hAbortEvent,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pOutputPin,
        pInputPin,
        pmtFirstConnection,
        pUsingFilter,
        hAbortEvent,
        dwFlags,
      );

  int Reconfigure(
    Pointer<COMObject> pCallback,
    Pointer pvContext,
    int dwFlags,
    int hAbortEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCallback,
            Pointer pvContext,
            Uint32 dwFlags,
            IntPtr hAbortEvent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCallback,
            Pointer pvContext,
            int dwFlags,
            int hAbortEvent,
          )>()(
        ptr.ref.lpVtbl,
        pCallback,
        pvContext,
        dwFlags,
        hAbortEvent,
      );

  int AddFilterToCache(
    Pointer<COMObject> pFilter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFilter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFilter,
          )>()(
        ptr.ref.lpVtbl,
        pFilter,
      );

  int EnumCacheFilter(
    Pointer<Pointer<COMObject>> pEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pEnum,
          )>()(
        ptr.ref.lpVtbl,
        pEnum,
      );

  int RemoveFilterFromCache(
    Pointer<COMObject> pFilter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFilter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFilter,
          )>()(
        ptr.ref.lpVtbl,
        pFilter,
      );

  int GetStartTime(
    Pointer<Int64> prtStart,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> prtStart,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> prtStart,
          )>()(
        ptr.ref.lpVtbl,
        prtStart,
      );

  int PushThroughData(
    Pointer<COMObject> pOutputPin,
    Pointer<COMObject> pConnection,
    int hEventAbort,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pOutputPin,
            Pointer<COMObject> pConnection,
            IntPtr hEventAbort,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pOutputPin,
            Pointer<COMObject> pConnection,
            int hEventAbort,
          )>()(
        ptr.ref.lpVtbl,
        pOutputPin,
        pConnection,
        hEventAbort,
      );

  int SetFilterFlags(
    Pointer<COMObject> pFilter,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFilter,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFilter,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pFilter,
        dwFlags,
      );

  int GetFilterFlags(
    Pointer<COMObject> pFilter,
    Pointer<Uint32> pdwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFilter,
            Pointer<Uint32> pdwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFilter,
            Pointer<Uint32> pdwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pFilter,
        pdwFlags,
      );

  int RemoveFilterEx(
    Pointer<COMObject> pFilter,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFilter,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFilter,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        pFilter,
        Flags,
      );
}
