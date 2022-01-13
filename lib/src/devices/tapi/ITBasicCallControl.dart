// ITBasicCallControl.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';
import '../../devices/tapi/structs.g.dart';
import '../../devices/tapi/ITBasicCallControl.dart';

/// @nodoc
const IID_ITBasicCallControl = '{B1EFC389-9355-11D0-835C-00AA003CCABD}';

/// {@category Interface}
/// {@category com}
class ITBasicCallControl extends IDispatch {
  // vtable begins at 7, is 18 entries long.
  ITBasicCallControl(Pointer<COMObject> ptr) : super(ptr);

  int Connect(
    int fSync,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 fSync,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fSync,
          )>()(
        ptr.ref.lpVtbl,
        fSync,
      );

  int Answer() => ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int Disconnect(
    int code,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 code,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int code,
          )>()(
        ptr.ref.lpVtbl,
        code,
      );

  int Hold(
    int fHold,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 fHold,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fHold,
          )>()(
        ptr.ref.lpVtbl,
        fHold,
      );

  int HandoffDirect(
    Pointer<Utf16> pApplicationName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pApplicationName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pApplicationName,
          )>()(
        ptr.ref.lpVtbl,
        pApplicationName,
      );

  int HandoffIndirect(
    int lMediaType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lMediaType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lMediaType,
          )>()(
        ptr.ref.lpVtbl,
        lMediaType,
      );

  int Conference(
    Pointer<COMObject> pCall,
    int fSync,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCall,
            Int16 fSync,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCall,
            int fSync,
          )>()(
        ptr.ref.lpVtbl,
        pCall,
        fSync,
      );

  int Transfer(
    Pointer<COMObject> pCall,
    int fSync,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCall,
            Int16 fSync,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCall,
            int fSync,
          )>()(
        ptr.ref.lpVtbl,
        pCall,
        fSync,
      );

  int BlindTransfer(
    Pointer<Utf16> pDestAddress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pDestAddress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pDestAddress,
          )>()(
        ptr.ref.lpVtbl,
        pDestAddress,
      );

  int SwapHold(
    Pointer<COMObject> pCall,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCall,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCall,
          )>()(
        ptr.ref.lpVtbl,
        pCall,
      );

  int ParkDirect(
    Pointer<Utf16> pParkAddress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pParkAddress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pParkAddress,
          )>()(
        ptr.ref.lpVtbl,
        pParkAddress,
      );

  int ParkIndirect(
    Pointer<Pointer<Utf16>> ppNonDirAddress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppNonDirAddress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppNonDirAddress,
          )>()(
        ptr.ref.lpVtbl,
        ppNonDirAddress,
      );

  int Unpark() => ptr.ref.lpVtbl.value
          .elementAt(19)
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

  int SetQOS(
    int lMediaType,
    int ServiceLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lMediaType,
            Int32 ServiceLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lMediaType,
            int ServiceLevel,
          )>()(
        ptr.ref.lpVtbl,
        lMediaType,
        ServiceLevel,
      );

  int Pickup(
    Pointer<Utf16> pGroupID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pGroupID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pGroupID,
          )>()(
        ptr.ref.lpVtbl,
        pGroupID,
      );

  int Dial(
    Pointer<Utf16> pDestAddress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pDestAddress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pDestAddress,
          )>()(
        ptr.ref.lpVtbl,
        pDestAddress,
      );

  int Finish(
    int finishMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 finishMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int finishMode,
          )>()(
        ptr.ref.lpVtbl,
        finishMode,
      );

  int RemoveFromConference() => ptr.ref.lpVtbl.value
          .elementAt(24)
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
