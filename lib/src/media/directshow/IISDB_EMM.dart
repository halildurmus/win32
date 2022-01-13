// IISDB_EMM.dart

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
import '../../specialTypes.dart';

/// @nodoc
const IID_IISDB_EMM = '{0EDB556D-43AD-4938-9668-321B2FFECFD3}';

/// {@category Interface}
/// {@category com}
class IISDB_EMM extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IISDB_EMM(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> pSectionList,
    Pointer<COMObject> pMPEGData,
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
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSectionList,
            Pointer<COMObject> pMPEGData,
          )>()(
        ptr.ref.lpVtbl,
        pSectionList,
        pMPEGData,
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

  int GetTableIdExtension(
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

  int GetDataBytes(
    Pointer<Uint16> pwBufferLength,
    Pointer<Uint8> pbBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pwBufferLength,
            Pointer<Uint8> pbBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pwBufferLength,
            Pointer<Uint8> pbBuffer,
          )>()(
        ptr.ref.lpVtbl,
        pwBufferLength,
        pbBuffer,
      );

  int GetSharedEmmMessage(
    Pointer<Uint16> pwLength,
    Pointer<Pointer<Uint8>> ppbMessage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pwLength,
            Pointer<Pointer<Uint8>> ppbMessage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pwLength,
            Pointer<Pointer<Uint8>> ppbMessage,
          )>()(
        ptr.ref.lpVtbl,
        pwLength,
        ppbMessage,
      );

  int GetIndividualEmmMessage(
    Pointer<COMObject> pUnknown,
    Pointer<Uint16> pwLength,
    Pointer<Pointer<Uint8>> ppbMessage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pUnknown,
            Pointer<Uint16> pwLength,
            Pointer<Pointer<Uint8>> ppbMessage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pUnknown,
            Pointer<Uint16> pwLength,
            Pointer<Pointer<Uint8>> ppbMessage,
          )>()(
        ptr.ref.lpVtbl,
        pUnknown,
        pwLength,
        ppbMessage,
      );

  int GetVersionHash(
    Pointer<Uint32> pdwVersionHash,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
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
