// IMbnMultiCarrierEvents.dart

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
import '../../networkmanagement/mobilebroadband/IMbnMultiCarrier.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMbnMultiCarrierEvents = '{DCDDDAB6-2021-4BBB-AAEE-338E368AF6FA}';

/// {@category Interface}
/// {@category com}
class IMbnMultiCarrierEvents extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IMbnMultiCarrierEvents(Pointer<COMObject> ptr) : super(ptr);

  int OnSetHomeProviderComplete(
    Pointer<COMObject> mbnInterface,
    int requestID,
    int status,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> mbnInterface,
            Uint32 requestID,
            Int32 status,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> mbnInterface,
            int requestID,
            int status,
          )>()(
        ptr.ref.lpVtbl,
        mbnInterface,
        requestID,
        status,
      );

  int OnCurrentCellularClassChange(
    Pointer<COMObject> mbnInterface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> mbnInterface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> mbnInterface,
          )>()(
        ptr.ref.lpVtbl,
        mbnInterface,
      );

  int OnPreferredProvidersChange(
    Pointer<COMObject> mbnInterface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> mbnInterface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> mbnInterface,
          )>()(
        ptr.ref.lpVtbl,
        mbnInterface,
      );

  int OnScanNetworkComplete(
    Pointer<COMObject> mbnInterface,
    int requestID,
    int status,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> mbnInterface,
            Uint32 requestID,
            Int32 status,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> mbnInterface,
            int requestID,
            int status,
          )>()(
        ptr.ref.lpVtbl,
        mbnInterface,
        requestID,
        status,
      );

  int OnInterfaceCapabilityChange(
    Pointer<COMObject> mbnInterface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> mbnInterface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> mbnInterface,
          )>()(
        ptr.ref.lpVtbl,
        mbnInterface,
      );
}
