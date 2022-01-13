// IMbnMultiCarrier.dart

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
import '../../networkmanagement/mobilebroadband/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/structs.g.dart';

/// @nodoc
const IID_IMbnMultiCarrier = '{DCBBBAB6-2020-4BBB-AAEE-338E368AF6FA}';

/// {@category Interface}
/// {@category com}
class IMbnMultiCarrier extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IMbnMultiCarrier(Pointer<COMObject> ptr) : super(ptr);

  int SetHomeProvider(
    Pointer<MBN_PROVIDER2> homeProvider,
    Pointer<Uint32> requestID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MBN_PROVIDER2> homeProvider,
            Pointer<Uint32> requestID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MBN_PROVIDER2> homeProvider,
            Pointer<Uint32> requestID,
          )>()(
        ptr.ref.lpVtbl,
        homeProvider,
        requestID,
      );

  int GetPreferredProviders(
    Pointer<Pointer<SAFEARRAY>> preferredMulticarrierProviders,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> preferredMulticarrierProviders,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> preferredMulticarrierProviders,
          )>()(
        ptr.ref.lpVtbl,
        preferredMulticarrierProviders,
      );

  int GetVisibleProviders(
    Pointer<Uint32> age,
    Pointer<Pointer<SAFEARRAY>> visibleProviders,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> age,
            Pointer<Pointer<SAFEARRAY>> visibleProviders,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> age,
            Pointer<Pointer<SAFEARRAY>> visibleProviders,
          )>()(
        ptr.ref.lpVtbl,
        age,
        visibleProviders,
      );

  int GetSupportedCellularClasses(
    Pointer<Pointer<SAFEARRAY>> cellularClasses,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> cellularClasses,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> cellularClasses,
          )>()(
        ptr.ref.lpVtbl,
        cellularClasses,
      );

  int GetCurrentCellularClass(
    Pointer<Int32> currentCellularClass,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> currentCellularClass,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> currentCellularClass,
          )>()(
        ptr.ref.lpVtbl,
        currentCellularClass,
      );

  int ScanNetwork(
    Pointer<Uint32> requestID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> requestID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> requestID,
          )>()(
        ptr.ref.lpVtbl,
        requestID,
      );
}
