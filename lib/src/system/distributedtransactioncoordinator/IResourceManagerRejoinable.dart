// IResourceManagerRejoinable.dart

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

import '../../system/distributedtransactioncoordinator/IResourceManager2.dart';
import '../../system/distributedtransactioncoordinator/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IResourceManagerRejoinable = '{6F6DE620-B5DF-4F3E-9CFA-C8AEBD05172B}';

/// {@category Interface}
/// {@category com}
class IResourceManagerRejoinable extends IResourceManager2 {
  // vtable begins at 9, is 1 entries long.
  IResourceManagerRejoinable(Pointer<COMObject> ptr) : super(ptr);

  int Rejoin(
    Pointer<Uint8> pPrepInfo,
    int cbPrepInfo,
    int lTimeout,
    Pointer<Int32> pXactStat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pPrepInfo,
            Uint32 cbPrepInfo,
            Uint32 lTimeout,
            Pointer<Int32> pXactStat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pPrepInfo,
            int cbPrepInfo,
            int lTimeout,
            Pointer<Int32> pXactStat,
          )>()(
        ptr.ref.lpVtbl,
        pPrepInfo,
        cbPrepInfo,
        lTimeout,
        pXactStat,
      );
}
