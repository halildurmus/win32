// IWbemEventConsumerProvider.dart

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
import '../../system/wmi/IWbemUnboundObjectSink.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWbemEventConsumerProvider = '{E246107A-B06E-11D0-AD61-00C04FD8FDFF}';

/// {@category Interface}
/// {@category com}
class IWbemEventConsumerProvider extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWbemEventConsumerProvider(Pointer<COMObject> ptr) : super(ptr);

  int FindConsumer(
    Pointer<COMObject> pLogicalConsumer,
    Pointer<Pointer<COMObject>> ppConsumer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pLogicalConsumer,
            Pointer<Pointer<COMObject>> ppConsumer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pLogicalConsumer,
            Pointer<Pointer<COMObject>> ppConsumer,
          )>()(
        ptr.ref.lpVtbl,
        pLogicalConsumer,
        ppConsumer,
      );
}
