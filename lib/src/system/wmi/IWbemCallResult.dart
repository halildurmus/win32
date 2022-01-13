// IWbemCallResult.dart

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
import '../../system/wmi/IWbemClassObject.dart';
import '../../foundation/structs.g.dart';
import '../../system/wmi/IWbemServices.dart';

/// @nodoc
const IID_IWbemCallResult = '{44ACA675-E8FC-11D0-A07C-00C04FB68820}';

/// {@category Interface}
/// {@category com}
class IWbemCallResult extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IWbemCallResult(Pointer<COMObject> ptr) : super(ptr);

  int GetResultObject(
    int lTimeout,
    Pointer<Pointer<COMObject>> ppResultObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lTimeout,
            Pointer<Pointer<COMObject>> ppResultObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lTimeout,
            Pointer<Pointer<COMObject>> ppResultObject,
          )>()(
        ptr.ref.lpVtbl,
        lTimeout,
        ppResultObject,
      );

  int GetResultString(
    int lTimeout,
    Pointer<Pointer<Utf16>> pstrResultString,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lTimeout,
            Pointer<Pointer<Utf16>> pstrResultString,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lTimeout,
            Pointer<Pointer<Utf16>> pstrResultString,
          )>()(
        ptr.ref.lpVtbl,
        lTimeout,
        pstrResultString,
      );

  int GetResultServices(
    int lTimeout,
    Pointer<Pointer<COMObject>> ppServices,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lTimeout,
            Pointer<Pointer<COMObject>> ppServices,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lTimeout,
            Pointer<Pointer<COMObject>> ppServices,
          )>()(
        ptr.ref.lpVtbl,
        lTimeout,
        ppServices,
      );

  int GetCallStatus(
    int lTimeout,
    Pointer<Int32> plStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lTimeout,
            Pointer<Int32> plStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lTimeout,
            Pointer<Int32> plStatus,
          )>()(
        ptr.ref.lpVtbl,
        lTimeout,
        plStatus,
      );
}
