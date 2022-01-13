// IRadioInstance.dart

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
import '../../devices/portabledevices/structs.g.dart';

/// @nodoc
const IID_IRadioInstance = '{70AA1C9E-F2B4-4C61-86D3-6B9FB75FD1A2}';

/// {@category Interface}
/// {@category com}
class IRadioInstance extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IRadioInstance(Pointer<COMObject> ptr) : super(ptr);

  int GetRadioManagerSignature(
    Pointer<GUID> pguidSignature,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidSignature,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidSignature,
          )>()(
        ptr.ref.lpVtbl,
        pguidSignature,
      );

  int GetInstanceSignature(
    Pointer<Pointer<Utf16>> pbstrId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrId,
          )>()(
        ptr.ref.lpVtbl,
        pbstrId,
      );

  int GetFriendlyName(
    int lcid,
    Pointer<Pointer<Utf16>> pbstrName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 lcid,
            Pointer<Pointer<Utf16>> pbstrName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lcid,
            Pointer<Pointer<Utf16>> pbstrName,
          )>()(
        ptr.ref.lpVtbl,
        lcid,
        pbstrName,
      );

  int GetRadioState(
    Pointer<Int32> pRadioState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pRadioState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pRadioState,
          )>()(
        ptr.ref.lpVtbl,
        pRadioState,
      );

  int SetRadioState(
    int radioState,
    int uTimeoutSec,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 radioState,
            Uint32 uTimeoutSec,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int radioState,
            int uTimeoutSec,
          )>()(
        ptr.ref.lpVtbl,
        radioState,
        uTimeoutSec,
      );

  int IsMultiComm() => ptr.ref.lpVtbl.value
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

  int IsAssociatingDevice() => ptr.ref.lpVtbl.value
          .elementAt(9)
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
