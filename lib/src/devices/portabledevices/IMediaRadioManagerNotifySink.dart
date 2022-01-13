// IMediaRadioManagerNotifySink.dart

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
import '../../devices/portabledevices/IRadioInstance.dart';
import '../../foundation/structs.g.dart';
import '../../devices/portabledevices/structs.g.dart';

/// @nodoc
const IID_IMediaRadioManagerNotifySink =
    '{89D81F5F-C147-49ED-A11C-77B20C31E7C9}';

/// {@category Interface}
/// {@category com}
class IMediaRadioManagerNotifySink extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMediaRadioManagerNotifySink(Pointer<COMObject> ptr) : super(ptr);

  int OnInstanceAdd(
    Pointer<COMObject> pRadioInstance,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pRadioInstance,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pRadioInstance,
          )>()(
        ptr.ref.lpVtbl,
        pRadioInstance,
      );

  int OnInstanceRemove(
    Pointer<Utf16> bstrRadioInstanceId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrRadioInstanceId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrRadioInstanceId,
          )>()(
        ptr.ref.lpVtbl,
        bstrRadioInstanceId,
      );

  int OnInstanceRadioChange(
    Pointer<Utf16> bstrRadioInstanceId,
    int radioState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrRadioInstanceId,
            Int32 radioState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrRadioInstanceId,
            int radioState,
          )>()(
        ptr.ref.lpVtbl,
        bstrRadioInstanceId,
        radioState,
      );
}
