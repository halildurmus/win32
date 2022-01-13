// IWbemObjectSink.dart

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

/// @nodoc
const IID_IWbemObjectSink = '{7C857801-7381-11CF-884D-00AA004B2E24}';

/// {@category Interface}
/// {@category com}
class IWbemObjectSink extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWbemObjectSink(Pointer<COMObject> ptr) : super(ptr);

  int Indicate(
    int lObjectCount,
    Pointer<Pointer<COMObject>> apObjArray,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lObjectCount,
            Pointer<Pointer<COMObject>> apObjArray,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lObjectCount,
            Pointer<Pointer<COMObject>> apObjArray,
          )>()(
        ptr.ref.lpVtbl,
        lObjectCount,
        apObjArray,
      );

  int SetStatus(
    int lFlags,
    int hResult,
    Pointer<Utf16> strParam,
    Pointer<COMObject> pObjParam,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
            Int32 hResult,
            Pointer<Utf16> strParam,
            Pointer<COMObject> pObjParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            int hResult,
            Pointer<Utf16> strParam,
            Pointer<COMObject> pObjParam,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        hResult,
        strParam,
        pObjParam,
      );
}
