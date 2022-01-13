// IEventObjectChange2.dart

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
const IID_IEventObjectChange2 = '{7701A9C3-BD68-438F-83E0-67BF4F53A422}';

/// {@category Interface}
/// {@category com}
class IEventObjectChange2 extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IEventObjectChange2(Pointer<COMObject> ptr) : super(ptr);

  int ChangedSubscription(
    Pointer<COMEVENTSYSCHANGEINFO> pInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMEVENTSYSCHANGEINFO> pInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMEVENTSYSCHANGEINFO> pInfo,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
      );

  int ChangedEventClass(
    Pointer<COMEVENTSYSCHANGEINFO> pInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMEVENTSYSCHANGEINFO> pInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMEVENTSYSCHANGEINFO> pInfo,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
      );
}

/// @nodoc
const CLSID_EventObjectChange2 = '{BB07BACD-CD56-4E63-A8FF-CBF0355FB9F4}';

/// {@category com}
class EventObjectChange2 extends IEventObjectChange2 {
  EventObjectChange2(Pointer<COMObject> ptr) : super(ptr);

  factory EventObjectChange2.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_EventObjectChange2);
    final iid = calloc<GUID>()..ref.setGUID(IID_IEventObjectChange2);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return EventObjectChange2(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
