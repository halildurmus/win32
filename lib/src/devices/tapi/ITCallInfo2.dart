// ITCallInfo2.dart

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

import '../../devices/tapi/ITCallInfo.dart';
import '../../devices/tapi/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITCallInfo2 = '{94D70CA6-7AB0-4DAA-81CA-B8F8643FAEC1}';

/// {@category Interface}
/// {@category com}
class ITCallInfo2 extends ITCallInfo {
  // vtable begins at 20, is 2 entries long.
  ITCallInfo2(Pointer<COMObject> ptr) : super(ptr);

  int get_EventFilter(
    int TapiEvent,
    int lSubEvent,
    Pointer<Int16> pEnable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 TapiEvent,
            Int32 lSubEvent,
            Pointer<Int16> pEnable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int TapiEvent,
            int lSubEvent,
            Pointer<Int16> pEnable,
          )>()(
        ptr.ref.lpVtbl,
        TapiEvent,
        lSubEvent,
        pEnable,
      );

  int put_EventFilter(
    int TapiEvent,
    int lSubEvent,
    int bEnable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 TapiEvent,
            Int32 lSubEvent,
            Int16 bEnable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int TapiEvent,
            int lSubEvent,
            int bEnable,
          )>()(
        ptr.ref.lpVtbl,
        TapiEvent,
        lSubEvent,
        bEnable,
      );
}
