// IStreamBufferInitialize.dart

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
import '../../system/registry/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IStreamBufferInitialize = '{9CE50F2D-6BA7-40FB-A034-50B1A674EC78}';

/// {@category Interface}
/// {@category com}
class IStreamBufferInitialize extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IStreamBufferInitialize(Pointer<COMObject> ptr) : super(ptr);

  int SetHKEY(
    int hkeyRoot,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hkeyRoot,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hkeyRoot,
          )>()(
        ptr.ref.lpVtbl,
        hkeyRoot,
      );

  int SetSIDs(
    int cSIDs,
    Pointer<IntPtr> ppSID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cSIDs,
            Pointer<IntPtr> ppSID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cSIDs,
            Pointer<IntPtr> ppSID,
          )>()(
        ptr.ref.lpVtbl,
        cSIDs,
        ppSID,
      );
}
