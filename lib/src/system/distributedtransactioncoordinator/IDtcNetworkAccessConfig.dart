// IDtcNetworkAccessConfig.dart

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
const IID_IDtcNetworkAccessConfig = '{9797C15D-A428-4291-87B6-0995031A678D}';

/// {@category Interface}
/// {@category com}
class IDtcNetworkAccessConfig extends IUnknown {
  // vtable begins at 3, is 13 entries long.
  IDtcNetworkAccessConfig(Pointer<COMObject> ptr) : super(ptr);

  int GetAnyNetworkAccess(
    Pointer<Int32> pbAnyNetworkAccess,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbAnyNetworkAccess,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbAnyNetworkAccess,
          )>()(
        ptr.ref.lpVtbl,
        pbAnyNetworkAccess,
      );

  int SetAnyNetworkAccess(
    int bAnyNetworkAccess,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bAnyNetworkAccess,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bAnyNetworkAccess,
          )>()(
        ptr.ref.lpVtbl,
        bAnyNetworkAccess,
      );

  int GetNetworkAdministrationAccess(
    Pointer<Int32> pbNetworkAdministrationAccess,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbNetworkAdministrationAccess,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbNetworkAdministrationAccess,
          )>()(
        ptr.ref.lpVtbl,
        pbNetworkAdministrationAccess,
      );

  int SetNetworkAdministrationAccess(
    int bNetworkAdministrationAccess,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bNetworkAdministrationAccess,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bNetworkAdministrationAccess,
          )>()(
        ptr.ref.lpVtbl,
        bNetworkAdministrationAccess,
      );

  int GetNetworkTransactionAccess(
    Pointer<Int32> pbNetworkTransactionAccess,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbNetworkTransactionAccess,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbNetworkTransactionAccess,
          )>()(
        ptr.ref.lpVtbl,
        pbNetworkTransactionAccess,
      );

  int SetNetworkTransactionAccess(
    int bNetworkTransactionAccess,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bNetworkTransactionAccess,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bNetworkTransactionAccess,
          )>()(
        ptr.ref.lpVtbl,
        bNetworkTransactionAccess,
      );

  int GetNetworkClientAccess(
    Pointer<Int32> pbNetworkClientAccess,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbNetworkClientAccess,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbNetworkClientAccess,
          )>()(
        ptr.ref.lpVtbl,
        pbNetworkClientAccess,
      );

  int SetNetworkClientAccess(
    int bNetworkClientAccess,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bNetworkClientAccess,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bNetworkClientAccess,
          )>()(
        ptr.ref.lpVtbl,
        bNetworkClientAccess,
      );

  int GetNetworkTIPAccess(
    Pointer<Int32> pbNetworkTIPAccess,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbNetworkTIPAccess,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbNetworkTIPAccess,
          )>()(
        ptr.ref.lpVtbl,
        pbNetworkTIPAccess,
      );

  int SetNetworkTIPAccess(
    int bNetworkTIPAccess,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bNetworkTIPAccess,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bNetworkTIPAccess,
          )>()(
        ptr.ref.lpVtbl,
        bNetworkTIPAccess,
      );

  int GetXAAccess(
    Pointer<Int32> pbXAAccess,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbXAAccess,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbXAAccess,
          )>()(
        ptr.ref.lpVtbl,
        pbXAAccess,
      );

  int SetXAAccess(
    int bXAAccess,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bXAAccess,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bXAAccess,
          )>()(
        ptr.ref.lpVtbl,
        bXAAccess,
      );

  int RestartDtcService() => ptr.ref.lpVtbl.value
          .elementAt(15)
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
