// IDiscRecorder.dart

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
import '../../storage/imapi/structs.g.dart';
import '../../system/com/structuredstorage/IPropertyStorage.dart';

/// @nodoc
const IID_IDiscRecorder = '{85AC9776-CA88-4CF2-894E-09598C078A41}';

/// {@category Interface}
/// {@category com}
class IDiscRecorder extends IUnknown {
  // vtable begins at 3, is 15 entries long.
  IDiscRecorder(Pointer<COMObject> ptr) : super(ptr);

  int Init(
    Pointer<Uint8> pbyUniqueID,
    int nulIDSize,
    int nulDriveNumber,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbyUniqueID,
            Uint32 nulIDSize,
            Uint32 nulDriveNumber,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbyUniqueID,
            int nulIDSize,
            int nulDriveNumber,
          )>()(
        ptr.ref.lpVtbl,
        pbyUniqueID,
        nulIDSize,
        nulDriveNumber,
      );

  int GetRecorderGUID(
    Pointer<Uint8> pbyUniqueID,
    int ulBufferSize,
    Pointer<Uint32> pulReturnSizeRequired,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbyUniqueID,
            Uint32 ulBufferSize,
            Pointer<Uint32> pulReturnSizeRequired,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbyUniqueID,
            int ulBufferSize,
            Pointer<Uint32> pulReturnSizeRequired,
          )>()(
        ptr.ref.lpVtbl,
        pbyUniqueID,
        ulBufferSize,
        pulReturnSizeRequired,
      );

  int GetRecorderType(
    Pointer<Int32> fTypeCode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> fTypeCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> fTypeCode,
          )>()(
        ptr.ref.lpVtbl,
        fTypeCode,
      );

  int GetDisplayNames(
    Pointer<Pointer<Utf16>> pbstrVendorID,
    Pointer<Pointer<Utf16>> pbstrProductID,
    Pointer<Pointer<Utf16>> pbstrRevision,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrVendorID,
            Pointer<Pointer<Utf16>> pbstrProductID,
            Pointer<Pointer<Utf16>> pbstrRevision,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrVendorID,
            Pointer<Pointer<Utf16>> pbstrProductID,
            Pointer<Pointer<Utf16>> pbstrRevision,
          )>()(
        ptr.ref.lpVtbl,
        pbstrVendorID,
        pbstrProductID,
        pbstrRevision,
      );

  int GetBasePnPID(
    Pointer<Pointer<Utf16>> pbstrBasePnPID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrBasePnPID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrBasePnPID,
          )>()(
        ptr.ref.lpVtbl,
        pbstrBasePnPID,
      );

  int GetPath(
    Pointer<Pointer<Utf16>> pbstrPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrPath,
          )>()(
        ptr.ref.lpVtbl,
        pbstrPath,
      );

  int GetRecorderProperties(
    Pointer<Pointer<COMObject>> ppPropStg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPropStg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPropStg,
          )>()(
        ptr.ref.lpVtbl,
        ppPropStg,
      );

  int SetRecorderProperties(
    Pointer<COMObject> pPropStg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPropStg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPropStg,
          )>()(
        ptr.ref.lpVtbl,
        pPropStg,
      );

  int GetRecorderState(
    Pointer<Uint32> pulDevStateFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulDevStateFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulDevStateFlags,
          )>()(
        ptr.ref.lpVtbl,
        pulDevStateFlags,
      );

  int OpenExclusive() => ptr.ref.lpVtbl.value
          .elementAt(12)
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

  int QueryMediaType(
    Pointer<Int32> fMediaType,
    Pointer<Int32> fMediaFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> fMediaType,
            Pointer<Int32> fMediaFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> fMediaType,
            Pointer<Int32> fMediaFlags,
          )>()(
        ptr.ref.lpVtbl,
        fMediaType,
        fMediaFlags,
      );

  int QueryMediaInfo(
    Pointer<Uint8> pbSessions,
    Pointer<Uint8> pbLastTrack,
    Pointer<Uint32> ulStartAddress,
    Pointer<Uint32> ulNextWritable,
    Pointer<Uint32> ulFreeBlocks,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbSessions,
            Pointer<Uint8> pbLastTrack,
            Pointer<Uint32> ulStartAddress,
            Pointer<Uint32> ulNextWritable,
            Pointer<Uint32> ulFreeBlocks,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbSessions,
            Pointer<Uint8> pbLastTrack,
            Pointer<Uint32> ulStartAddress,
            Pointer<Uint32> ulNextWritable,
            Pointer<Uint32> ulFreeBlocks,
          )>()(
        ptr.ref.lpVtbl,
        pbSessions,
        pbLastTrack,
        ulStartAddress,
        ulNextWritable,
        ulFreeBlocks,
      );

  int Eject() => ptr.ref.lpVtbl.value
          .elementAt(15)
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

  int Erase(
    int bFullErase,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 bFullErase,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bFullErase,
          )>()(
        ptr.ref.lpVtbl,
        bFullErase,
      );

  int Close() => ptr.ref.lpVtbl.value
          .elementAt(17)
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
}
