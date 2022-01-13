// IMediaRadioManager.dart

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
import '../../devices/portabledevices/IRadioInstanceCollection.dart';
import '../../foundation/structs.g.dart';
import '../../devices/portabledevices/structs.g.dart';

/// @nodoc
const IID_IMediaRadioManager = '{6CFDCAB5-FC47-42A5-9241-074B58830E73}';

/// {@category Interface}
/// {@category com}
class IMediaRadioManager extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMediaRadioManager(Pointer<COMObject> ptr) : super(ptr);

  int GetRadioInstances(
    Pointer<Pointer<COMObject>> ppCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppCollection,
          )>()(
        ptr.ref.lpVtbl,
        ppCollection,
      );

  int OnSystemRadioStateChange(
    int sysRadioState,
    int uTimeoutSec,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 sysRadioState,
            Uint32 uTimeoutSec,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int sysRadioState,
            int uTimeoutSec,
          )>()(
        ptr.ref.lpVtbl,
        sysRadioState,
        uTimeoutSec,
      );
}
