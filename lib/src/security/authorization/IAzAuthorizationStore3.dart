// IAzAuthorizationStore3.dart

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

import '../../security/authorization/IAzAuthorizationStore2.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IAzAuthorizationStore3 = '{ABC08425-0C86-4FA0-9BE3-7189956C926E}';

/// {@category Interface}
/// {@category com}
class IAzAuthorizationStore3 extends IAzAuthorizationStore2 {
  // vtable begins at 60, is 5 entries long.
  IAzAuthorizationStore3(Pointer<COMObject> ptr) : super(ptr);

  int IsUpdateNeeded(
    Pointer<Int16> pbIsUpdateNeeded,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(60)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pbIsUpdateNeeded,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pbIsUpdateNeeded,
          )>()(
        ptr.ref.lpVtbl,
        pbIsUpdateNeeded,
      );

  int BizruleGroupSupported(
    Pointer<Int16> pbSupported,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(61)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pbSupported,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pbSupported,
          )>()(
        ptr.ref.lpVtbl,
        pbSupported,
      );

  int UpgradeStoresFunctionalLevel(
    int lFunctionalLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(62)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFunctionalLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFunctionalLevel,
          )>()(
        ptr.ref.lpVtbl,
        lFunctionalLevel,
      );

  int IsFunctionalLevelUpgradeSupported(
    int lFunctionalLevel,
    Pointer<Int16> pbSupported,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(63)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFunctionalLevel,
            Pointer<Int16> pbSupported,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFunctionalLevel,
            Pointer<Int16> pbSupported,
          )>()(
        ptr.ref.lpVtbl,
        lFunctionalLevel,
        pbSupported,
      );

  int GetSchemaVersion(
    Pointer<Int32> plMajorVersion,
    Pointer<Int32> plMinorVersion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(64)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plMajorVersion,
            Pointer<Int32> plMinorVersion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plMajorVersion,
            Pointer<Int32> plMinorVersion,
          )>()(
        ptr.ref.lpVtbl,
        plMajorVersion,
        plMinorVersion,
      );
}
