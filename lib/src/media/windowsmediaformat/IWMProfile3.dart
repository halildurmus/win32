// IWMProfile3.dart

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

import '../../media/windowsmediaformat/IWMProfile2.dart';
import '../../media/windowsmediaformat/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../media/windowsmediaformat/IWMBandwidthSharing.dart';
import '../../media/windowsmediaformat/IWMStreamPrioritization.dart';

/// @nodoc
const IID_IWMProfile3 = '{00EF96CC-A461-4546-8BCD-C9A28F0E06F5}';

/// {@category Interface}
/// {@category com}
class IWMProfile3 extends IWMProfile2 {
  // vtable begins at 22, is 12 entries long.
  IWMProfile3(Pointer<COMObject> ptr) : super(ptr);

  int GetStorageFormat(
    Pointer<Int32> pnStorageFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pnStorageFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pnStorageFormat,
          )>()(
        ptr.ref.lpVtbl,
        pnStorageFormat,
      );

  int SetStorageFormat(
    int nStorageFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nStorageFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nStorageFormat,
          )>()(
        ptr.ref.lpVtbl,
        nStorageFormat,
      );

  int GetBandwidthSharingCount(
    Pointer<Uint32> pcBS,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcBS,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcBS,
          )>()(
        ptr.ref.lpVtbl,
        pcBS,
      );

  int GetBandwidthSharing(
    int dwBSIndex,
    Pointer<Pointer<COMObject>> ppBS,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwBSIndex,
            Pointer<Pointer<COMObject>> ppBS,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwBSIndex,
            Pointer<Pointer<COMObject>> ppBS,
          )>()(
        ptr.ref.lpVtbl,
        dwBSIndex,
        ppBS,
      );

  int RemoveBandwidthSharing(
    Pointer<COMObject> pBS,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pBS,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pBS,
          )>()(
        ptr.ref.lpVtbl,
        pBS,
      );

  int AddBandwidthSharing(
    Pointer<COMObject> pBS,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pBS,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pBS,
          )>()(
        ptr.ref.lpVtbl,
        pBS,
      );

  int CreateNewBandwidthSharing(
    Pointer<Pointer<COMObject>> ppBS,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppBS,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppBS,
          )>()(
        ptr.ref.lpVtbl,
        ppBS,
      );

  int GetStreamPrioritization(
    Pointer<Pointer<COMObject>> ppSP,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSP,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSP,
          )>()(
        ptr.ref.lpVtbl,
        ppSP,
      );

  int SetStreamPrioritization(
    Pointer<COMObject> pSP,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSP,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSP,
          )>()(
        ptr.ref.lpVtbl,
        pSP,
      );

  int RemoveStreamPrioritization() => ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int CreateNewStreamPrioritization(
    Pointer<Pointer<COMObject>> ppSP,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSP,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSP,
          )>()(
        ptr.ref.lpVtbl,
        ppSP,
      );

  int GetExpectedPacketCount(
    int msDuration,
    Pointer<Uint64> pcPackets,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 msDuration,
            Pointer<Uint64> pcPackets,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int msDuration,
            Pointer<Uint64> pcPackets,
          )>()(
        ptr.ref.lpVtbl,
        msDuration,
        pcPackets,
      );
}
