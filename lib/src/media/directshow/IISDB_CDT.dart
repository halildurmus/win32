// IISDB_CDT.dart

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
import '../../media/directshow/ISectionList.dart';
import '../../media/directshow/IMpeg2Data.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/IGenericDescriptor.dart';

/// @nodoc
const IID_IISDB_CDT = '{25FA92C2-8B80-4787-A841-3A0E8F17984B}';

/// {@category Interface}
/// {@category com}
class IISDB_CDT extends IUnknown {
  // vtable begins at 3, is 12 entries long.
  IISDB_CDT(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> pSectionList,
    Pointer<COMObject> pMPEGData,
    int bSectionNumber,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSectionList,
            Pointer<COMObject> pMPEGData,
            Uint8 bSectionNumber,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSectionList,
            Pointer<COMObject> pMPEGData,
            int bSectionNumber,
          )>()(
        ptr.ref.lpVtbl,
        pSectionList,
        pMPEGData,
        bSectionNumber,
      );

  int GetVersionNumber(
    Pointer<Uint8> pbVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbVal,
          )>()(
        ptr.ref.lpVtbl,
        pbVal,
      );

  int GetDownloadDataId(
    Pointer<Uint16> pwVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pwVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pwVal,
          )>()(
        ptr.ref.lpVtbl,
        pwVal,
      );

  int GetSectionNumber(
    Pointer<Uint8> pbVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbVal,
          )>()(
        ptr.ref.lpVtbl,
        pbVal,
      );

  int GetOriginalNetworkId(
    Pointer<Uint16> pwVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pwVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pwVal,
          )>()(
        ptr.ref.lpVtbl,
        pwVal,
      );

  int GetDataType(
    Pointer<Uint8> pbVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbVal,
          )>()(
        ptr.ref.lpVtbl,
        pbVal,
      );

  int GetCountOfTableDescriptors(
    Pointer<Uint32> pdwVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwVal,
          )>()(
        ptr.ref.lpVtbl,
        pdwVal,
      );

  int GetTableDescriptorByIndex(
    int dwIndex,
    Pointer<Pointer<COMObject>> ppDescriptor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIndex,
            Pointer<Pointer<COMObject>> ppDescriptor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIndex,
            Pointer<Pointer<COMObject>> ppDescriptor,
          )>()(
        ptr.ref.lpVtbl,
        dwIndex,
        ppDescriptor,
      );

  int GetTableDescriptorByTag(
    int bTag,
    Pointer<Uint32> pdwCookie,
    Pointer<Pointer<COMObject>> ppDescriptor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 bTag,
            Pointer<Uint32> pdwCookie,
            Pointer<Pointer<COMObject>> ppDescriptor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bTag,
            Pointer<Uint32> pdwCookie,
            Pointer<Pointer<COMObject>> ppDescriptor,
          )>()(
        ptr.ref.lpVtbl,
        bTag,
        pdwCookie,
        ppDescriptor,
      );

  int GetSizeOfDataModule(
    Pointer<Uint32> pdwVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwVal,
          )>()(
        ptr.ref.lpVtbl,
        pdwVal,
      );

  int GetDataModule(
    Pointer<Pointer<Uint8>> pbData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> pbData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> pbData,
          )>()(
        ptr.ref.lpVtbl,
        pbData,
      );

  int GetVersionHash(
    Pointer<Uint32> pdwVersionHash,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwVersionHash,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwVersionHash,
          )>()(
        ptr.ref.lpVtbl,
        pdwVersionHash,
      );
}
