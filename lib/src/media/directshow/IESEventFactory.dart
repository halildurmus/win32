// IESEventFactory.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/IESEvent.dart';

/// @nodoc
const IID_IESEventFactory = '{506A09B8-7F86-4E04-AC05-3303BFE8FC49}';

/// {@category Interface}
/// {@category com}
class IESEventFactory extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IESEventFactory(Pointer<COMObject> ptr) : super(ptr);

  int CreateESEvent(
    Pointer<COMObject> pServiceProvider,
    int dwEventId,
    GUID guidEventType,
    int dwEventDataLength,
    Pointer<Uint8> pEventData,
    Pointer<Utf16> bstrBaseUrl,
    Pointer<COMObject> pInitContext,
    Pointer<Pointer<COMObject>> ppESEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pServiceProvider,
            Uint32 dwEventId,
            GUID guidEventType,
            Uint32 dwEventDataLength,
            Pointer<Uint8> pEventData,
            Pointer<Utf16> bstrBaseUrl,
            Pointer<COMObject> pInitContext,
            Pointer<Pointer<COMObject>> ppESEvent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pServiceProvider,
            int dwEventId,
            GUID guidEventType,
            int dwEventDataLength,
            Pointer<Uint8> pEventData,
            Pointer<Utf16> bstrBaseUrl,
            Pointer<COMObject> pInitContext,
            Pointer<Pointer<COMObject>> ppESEvent,
          )>()(
        ptr.ref.lpVtbl,
        pServiceProvider,
        dwEventId,
        guidEventType,
        dwEventDataLength,
        pEventData,
        bstrBaseUrl,
        pInitContext,
        ppESEvent,
      );
}

/// @nodoc
const CLSID_ESEventFactory = '{8E8A07DA-71F8-40C1-A929-5E3A868AC2C6}';

/// {@category com}
class ESEventFactory extends IESEventFactory {
  ESEventFactory(Pointer<COMObject> ptr) : super(ptr);

  factory ESEventFactory.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_ESEventFactory);
    final iid = calloc<GUID>()..ref.setGUID(IID_IESEventFactory);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return ESEventFactory(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
