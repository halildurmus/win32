// IEventObjectChange.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../system/com/events/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IEventObjectChange = '{F4A07D70-2E25-11D1-9964-00C04FBBB345}';

/// {@category Interface}
/// {@category com}
class IEventObjectChange extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IEventObjectChange(Pointer<COMObject> ptr) : super(ptr);

  int ChangedSubscription(
    int changeType,
    Pointer<Utf16> bstrSubscriptionID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 changeType,
            Pointer<Utf16> bstrSubscriptionID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int changeType,
            Pointer<Utf16> bstrSubscriptionID,
          )>()(
        ptr.ref.lpVtbl,
        changeType,
        bstrSubscriptionID,
      );

  int ChangedEventClass(
    int changeType,
    Pointer<Utf16> bstrEventClassID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 changeType,
            Pointer<Utf16> bstrEventClassID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int changeType,
            Pointer<Utf16> bstrEventClassID,
          )>()(
        ptr.ref.lpVtbl,
        changeType,
        bstrEventClassID,
      );

  int ChangedPublisher(
    int changeType,
    Pointer<Utf16> bstrPublisherID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 changeType,
            Pointer<Utf16> bstrPublisherID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int changeType,
            Pointer<Utf16> bstrPublisherID,
          )>()(
        ptr.ref.lpVtbl,
        changeType,
        bstrPublisherID,
      );
}

/// @nodoc
const CLSID_EventObjectChange = '{D0565000-9DF4-11D1-A281-00C04FCA0AA7}';

/// {@category com}
class EventObjectChange extends IEventObjectChange {
  EventObjectChange(Pointer<COMObject> ptr) : super(ptr);

  factory EventObjectChange.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_EventObjectChange);
    final iid = calloc<GUID>()..ref.setGUID(IID_IEventObjectChange);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return EventObjectChange(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
