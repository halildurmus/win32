// IBDA_FDC.dart

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
const IID_IBDA_FDC = '{138ADC7E-58AE-437F-B0B4-C9FE19D5B4AC}';

/// {@category Interface}
/// {@category com}
class IBDA_FDC extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IBDA_FDC(Pointer<COMObject> ptr) : super(ptr);

  int GetStatus(
    Pointer<Uint32> CurrentBitrate,
    Pointer<Int32> CarrierLock,
    Pointer<Uint32> CurrentFrequency,
    Pointer<Int32> CurrentSpectrumInversion,
    Pointer<Pointer<Utf16>> CurrentPIDList,
    Pointer<Pointer<Utf16>> CurrentTIDList,
    Pointer<Int32> Overflow,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> CurrentBitrate,
            Pointer<Int32> CarrierLock,
            Pointer<Uint32> CurrentFrequency,
            Pointer<Int32> CurrentSpectrumInversion,
            Pointer<Pointer<Utf16>> CurrentPIDList,
            Pointer<Pointer<Utf16>> CurrentTIDList,
            Pointer<Int32> Overflow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> CurrentBitrate,
            Pointer<Int32> CarrierLock,
            Pointer<Uint32> CurrentFrequency,
            Pointer<Int32> CurrentSpectrumInversion,
            Pointer<Pointer<Utf16>> CurrentPIDList,
            Pointer<Pointer<Utf16>> CurrentTIDList,
            Pointer<Int32> Overflow,
          )>()(
        ptr.ref.lpVtbl,
        CurrentBitrate,
        CarrierLock,
        CurrentFrequency,
        CurrentSpectrumInversion,
        CurrentPIDList,
        CurrentTIDList,
        Overflow,
      );

  int RequestTables(
    Pointer<Utf16> TableIDs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> TableIDs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> TableIDs,
          )>()(
        ptr.ref.lpVtbl,
        TableIDs,
      );

  int AddPid(
    Pointer<Utf16> PidsToAdd,
    Pointer<Uint32> RemainingFilterEntries,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> PidsToAdd,
            Pointer<Uint32> RemainingFilterEntries,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> PidsToAdd,
            Pointer<Uint32> RemainingFilterEntries,
          )>()(
        ptr.ref.lpVtbl,
        PidsToAdd,
        RemainingFilterEntries,
      );

  int RemovePid(
    Pointer<Utf16> PidsToRemove,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> PidsToRemove,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> PidsToRemove,
          )>()(
        ptr.ref.lpVtbl,
        PidsToRemove,
      );

  int AddTid(
    Pointer<Utf16> TidsToAdd,
    Pointer<Pointer<Utf16>> CurrentTidList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> TidsToAdd,
            Pointer<Pointer<Utf16>> CurrentTidList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> TidsToAdd,
            Pointer<Pointer<Utf16>> CurrentTidList,
          )>()(
        ptr.ref.lpVtbl,
        TidsToAdd,
        CurrentTidList,
      );

  int RemoveTid(
    Pointer<Utf16> TidsToRemove,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> TidsToRemove,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> TidsToRemove,
          )>()(
        ptr.ref.lpVtbl,
        TidsToRemove,
      );

  int GetTableSection(
    Pointer<Uint32> Pid,
    int MaxBufferSize,
    Pointer<Uint32> ActualSize,
    Pointer<Uint8> SecBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> Pid,
            Uint32 MaxBufferSize,
            Pointer<Uint32> ActualSize,
            Pointer<Uint8> SecBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> Pid,
            int MaxBufferSize,
            Pointer<Uint32> ActualSize,
            Pointer<Uint8> SecBuffer,
          )>()(
        ptr.ref.lpVtbl,
        Pid,
        MaxBufferSize,
        ActualSize,
        SecBuffer,
      );
}
