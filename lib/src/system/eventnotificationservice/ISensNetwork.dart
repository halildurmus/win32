// ISensNetwork.dart

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
import '../../system/eventnotificationservice/structs.g.dart';

/// @nodoc
const IID_ISensNetwork = '{D597BAB1-5B9F-11D1-8DD2-00AA004ABD5E}';

/// {@category Interface}
/// {@category com}
class ISensNetwork extends IDispatch {
  // vtable begins at 7, is 5 entries long.
  ISensNetwork(Pointer<COMObject> ptr) : super(ptr);

  int ConnectionMade(
    Pointer<Utf16> bstrConnection,
    int ulType,
    Pointer<SENS_QOCINFO> lpQOCInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrConnection,
            Uint32 ulType,
            Pointer<SENS_QOCINFO> lpQOCInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrConnection,
            int ulType,
            Pointer<SENS_QOCINFO> lpQOCInfo,
          )>()(
        ptr.ref.lpVtbl,
        bstrConnection,
        ulType,
        lpQOCInfo,
      );

  int ConnectionMadeNoQOCInfo(
    Pointer<Utf16> bstrConnection,
    int ulType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrConnection,
            Uint32 ulType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrConnection,
            int ulType,
          )>()(
        ptr.ref.lpVtbl,
        bstrConnection,
        ulType,
      );

  int ConnectionLost(
    Pointer<Utf16> bstrConnection,
    int ulType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrConnection,
            Uint32 ulType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrConnection,
            int ulType,
          )>()(
        ptr.ref.lpVtbl,
        bstrConnection,
        ulType,
      );

  int DestinationReachable(
    Pointer<Utf16> bstrDestination,
    Pointer<Utf16> bstrConnection,
    int ulType,
    Pointer<SENS_QOCINFO> lpQOCInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrDestination,
            Pointer<Utf16> bstrConnection,
            Uint32 ulType,
            Pointer<SENS_QOCINFO> lpQOCInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrDestination,
            Pointer<Utf16> bstrConnection,
            int ulType,
            Pointer<SENS_QOCINFO> lpQOCInfo,
          )>()(
        ptr.ref.lpVtbl,
        bstrDestination,
        bstrConnection,
        ulType,
        lpQOCInfo,
      );

  int DestinationReachableNoQOCInfo(
    Pointer<Utf16> bstrDestination,
    Pointer<Utf16> bstrConnection,
    int ulType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrDestination,
            Pointer<Utf16> bstrConnection,
            Uint32 ulType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrDestination,
            Pointer<Utf16> bstrConnection,
            int ulType,
          )>()(
        ptr.ref.lpVtbl,
        bstrDestination,
        bstrConnection,
        ulType,
      );
}
