// IBDA_SignalProperties.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IBDA_SignalProperties = '{D2F1644B-B409-11D2-BC69-00A0C9EE9E16}';

/// {@category Interface}
/// {@category com}
class IBDA_SignalProperties extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IBDA_SignalProperties(Pointer<COMObject> ptr) : super(ptr);

  int PutNetworkType(
    Pointer<GUID> guidNetworkType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidNetworkType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidNetworkType,
          )>()(
        ptr.ref.lpVtbl,
        guidNetworkType,
      );

  int GetNetworkType(
    Pointer<GUID> pguidNetworkType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidNetworkType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidNetworkType,
          )>()(
        ptr.ref.lpVtbl,
        pguidNetworkType,
      );

  int PutSignalSource(
    int ulSignalSource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulSignalSource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulSignalSource,
          )>()(
        ptr.ref.lpVtbl,
        ulSignalSource,
      );

  int GetSignalSource(
    Pointer<Uint32> pulSignalSource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulSignalSource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulSignalSource,
          )>()(
        ptr.ref.lpVtbl,
        pulSignalSource,
      );

  int PutTuningSpace(
    Pointer<GUID> guidTuningSpace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidTuningSpace,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidTuningSpace,
          )>()(
        ptr.ref.lpVtbl,
        guidTuningSpace,
      );

  int GetTuningSpace(
    Pointer<GUID> pguidTuingSpace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidTuingSpace,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidTuingSpace,
          )>()(
        ptr.ref.lpVtbl,
        pguidTuingSpace,
      );
}
