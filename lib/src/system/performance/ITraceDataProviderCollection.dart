// ITraceDataProviderCollection.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../system/performance/ITraceDataProvider.dart';
import '../../system/performance/ITraceDataProviderCollection.dart';

/// @nodoc
const IID_ITraceDataProviderCollection =
    '{03837510-098B-11D8-9414-505054503030}';

/// {@category Interface}
/// {@category com}
class ITraceDataProviderCollection extends IDispatch {
  // vtable begins at 7, is 10 entries long.
  ITraceDataProviderCollection(Pointer<COMObject> ptr) : super(ptr);

  int get Count {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> retVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> retVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get_Item(
    VARIANT index,
    Pointer<Pointer<COMObject>> ppProvider,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT index,
            Pointer<Pointer<COMObject>> ppProvider,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT index,
            Pointer<Pointer<COMObject>> ppProvider,
          )>()(
        ptr.ref.lpVtbl,
        index,
        ppProvider,
      );

  Pointer<COMObject> get NewEnum {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> retVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> retVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int Add(
    Pointer<COMObject> pProvider,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pProvider,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pProvider,
          )>()(
        ptr.ref.lpVtbl,
        pProvider,
      );

  int Remove(
    VARIANT vProvider,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT vProvider,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT vProvider,
          )>()(
        ptr.ref.lpVtbl,
        vProvider,
      );

  int Clear() => ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int AddRange(
    Pointer<COMObject> providers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> providers,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> providers,
          )>()(
        ptr.ref.lpVtbl,
        providers,
      );

  int CreateTraceDataProvider(
    Pointer<Pointer<COMObject>> Provider,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> Provider,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> Provider,
          )>()(
        ptr.ref.lpVtbl,
        Provider,
      );

  int GetTraceDataProviders(
    Pointer<Utf16> server,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> server,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> server,
          )>()(
        ptr.ref.lpVtbl,
        server,
      );

  int GetTraceDataProvidersByProcess(
    Pointer<Utf16> Server,
    int Pid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Server,
            Uint32 Pid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Server,
            int Pid,
          )>()(
        ptr.ref.lpVtbl,
        Server,
        Pid,
      );
}

/// @nodoc
const CLSID_TraceDataProviderCollection =
    '{03837511-098B-11D8-9414-505054503030}';

/// {@category com}
class TraceDataProviderCollection extends ITraceDataProviderCollection {
  TraceDataProviderCollection(Pointer<COMObject> ptr) : super(ptr);

  factory TraceDataProviderCollection.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()
      ..ref.setGUID(CLSID_TraceDataProviderCollection);
    final iid = calloc<GUID>()..ref.setGUID(IID_ITraceDataProviderCollection);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return TraceDataProviderCollection(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
