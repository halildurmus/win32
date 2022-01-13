// IMFMediaEngineEMENotify.dart

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
const IID_IMFMediaEngineEMENotify = '{9E184D15-CDB7-4F86-B49E-566689F4A601}';

/// {@category Interface}
/// {@category com}
class IMFMediaEngineEMENotify extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMFMediaEngineEMENotify(Pointer<COMObject> ptr) : super(ptr);

  void Encrypted(
    Pointer<Uint8> pbInitData,
    int cb,
    Pointer<Utf16> bstrInitDataType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Uint8> pbInitData,
            Uint32 cb,
            Pointer<Utf16> bstrInitDataType,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Uint8> pbInitData,
            int cb,
            Pointer<Utf16> bstrInitDataType,
          )>()(
        ptr.ref.lpVtbl,
        pbInitData,
        cb,
        bstrInitDataType,
      );

  void WaitingForKey() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
