// IPrepareInfo.dart

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
const IID_IPrepareInfo = '{80C7BFD0-87EE-11CE-8081-0080C758527E}';

/// {@category Interface}
/// {@category com}
class IPrepareInfo extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IPrepareInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetPrepareInfoSize(
    Pointer<Uint32> pcbPrepInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcbPrepInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcbPrepInfo,
          )>()(
        ptr.ref.lpVtbl,
        pcbPrepInfo,
      );

  int GetPrepareInfo(
    Pointer<Uint8> pPrepInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pPrepInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pPrepInfo,
          )>()(
        ptr.ref.lpVtbl,
        pPrepInfo,
      );
}
