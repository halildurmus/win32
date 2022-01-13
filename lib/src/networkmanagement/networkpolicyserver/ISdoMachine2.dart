// ISdoMachine2.dart

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

import '../../networkmanagement/networkpolicyserver/ISdoMachine.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_ISdoMachine2 = '{518E5FFE-D8CE-4F7E-A5DB-B40A35419D3B}';

/// {@category Interface}
/// {@category com}
class ISdoMachine2 extends ISdoMachine {
  // vtable begins at 16, is 5 entries long.
  ISdoMachine2(Pointer<COMObject> ptr) : super(ptr);

  int GetTemplatesSDO(
    Pointer<Utf16> bstrServiceName,
    Pointer<Pointer<COMObject>> ppTemplatesSDO,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrServiceName,
            Pointer<Pointer<COMObject>> ppTemplatesSDO,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrServiceName,
            Pointer<Pointer<COMObject>> ppTemplatesSDO,
          )>()(
        ptr.ref.lpVtbl,
        bstrServiceName,
        ppTemplatesSDO,
      );

  int EnableTemplates() => ptr.ref.lpVtbl.value
          .elementAt(17)
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

  int SyncConfigAgainstTemplates(
    Pointer<Utf16> bstrServiceName,
    Pointer<Pointer<COMObject>> ppConfigRoot,
    Pointer<Pointer<COMObject>> ppTemplatesRoot,
    int bForcedSync,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrServiceName,
            Pointer<Pointer<COMObject>> ppConfigRoot,
            Pointer<Pointer<COMObject>> ppTemplatesRoot,
            Int16 bForcedSync,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrServiceName,
            Pointer<Pointer<COMObject>> ppConfigRoot,
            Pointer<Pointer<COMObject>> ppTemplatesRoot,
            int bForcedSync,
          )>()(
        ptr.ref.lpVtbl,
        bstrServiceName,
        ppConfigRoot,
        ppTemplatesRoot,
        bForcedSync,
      );

  int ImportRemoteTemplates(
    Pointer<COMObject> pLocalTemplatesRoot,
    Pointer<Utf16> bstrRemoteMachineName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pLocalTemplatesRoot,
            Pointer<Utf16> bstrRemoteMachineName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pLocalTemplatesRoot,
            Pointer<Utf16> bstrRemoteMachineName,
          )>()(
        ptr.ref.lpVtbl,
        pLocalTemplatesRoot,
        bstrRemoteMachineName,
      );

  int Reload() => ptr.ref.lpVtbl.value
          .elementAt(20)
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
