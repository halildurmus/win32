// IWbemUnboundObjectSink.dart

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
import '../../system/wmi/IWbemClassObject.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWbemUnboundObjectSink = '{E246107B-B06E-11D0-AD61-00C04FD8FDFF}';

/// {@category Interface}
/// {@category com}
class IWbemUnboundObjectSink extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWbemUnboundObjectSink(Pointer<COMObject> ptr) : super(ptr);

  int IndicateToConsumer(
    Pointer<COMObject> pLogicalConsumer,
    int lNumObjects,
    Pointer<Pointer<COMObject>> apObjects,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pLogicalConsumer,
            Int32 lNumObjects,
            Pointer<Pointer<COMObject>> apObjects,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pLogicalConsumer,
            int lNumObjects,
            Pointer<Pointer<COMObject>> apObjects,
          )>()(
        ptr.ref.lpVtbl,
        pLogicalConsumer,
        lNumObjects,
        apObjects,
      );
}
