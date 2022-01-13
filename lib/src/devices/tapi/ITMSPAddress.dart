// ITMSPAddress.dart

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
import '../../specialTypes.dart';

/// @nodoc
const IID_ITMSPAddress = '{EE3BD600-3868-11D2-A045-00C04FB6809F}';

/// {@category Interface}
/// {@category com}
class ITMSPAddress extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  ITMSPAddress(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<Int32> hEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> hEvent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> hEvent,
          )>()(
        ptr.ref.lpVtbl,
        hEvent,
      );

  int Shutdown() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int CreateMSPCall(
    Pointer<Int32> hCall,
    int dwReserved,
    int dwMediaType,
    Pointer<COMObject> pOuterUnknown,
    Pointer<Pointer<COMObject>> ppStreamControl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> hCall,
            Uint32 dwReserved,
            Uint32 dwMediaType,
            Pointer<COMObject> pOuterUnknown,
            Pointer<Pointer<COMObject>> ppStreamControl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> hCall,
            int dwReserved,
            int dwMediaType,
            Pointer<COMObject> pOuterUnknown,
            Pointer<Pointer<COMObject>> ppStreamControl,
          )>()(
        ptr.ref.lpVtbl,
        hCall,
        dwReserved,
        dwMediaType,
        pOuterUnknown,
        ppStreamControl,
      );

  int ShutdownMSPCall(
    Pointer<COMObject> pStreamControl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pStreamControl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pStreamControl,
          )>()(
        ptr.ref.lpVtbl,
        pStreamControl,
      );

  int ReceiveTSPData(
    Pointer<COMObject> pMSPCall,
    Pointer<Uint8> pBuffer,
    int dwSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pMSPCall,
            Pointer<Uint8> pBuffer,
            Uint32 dwSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pMSPCall,
            Pointer<Uint8> pBuffer,
            int dwSize,
          )>()(
        ptr.ref.lpVtbl,
        pMSPCall,
        pBuffer,
        dwSize,
      );

  int GetEvent(
    Pointer<Uint32> pdwSize,
    Pointer<Uint8> pEventBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwSize,
            Pointer<Uint8> pEventBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwSize,
            Pointer<Uint8> pEventBuffer,
          )>()(
        ptr.ref.lpVtbl,
        pdwSize,
        pEventBuffer,
      );
}
