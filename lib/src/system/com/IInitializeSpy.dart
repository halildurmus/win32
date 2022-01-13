// IInitializeSpy.dart

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
const IID_IInitializeSpy = '{00000034-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IInitializeSpy extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IInitializeSpy(Pointer<COMObject> ptr) : super(ptr);

  int PreInitialize(
    int dwCoInit,
    int dwCurThreadAptRefs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwCoInit,
            Uint32 dwCurThreadAptRefs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwCoInit,
            int dwCurThreadAptRefs,
          )>()(
        ptr.ref.lpVtbl,
        dwCoInit,
        dwCurThreadAptRefs,
      );

  int PostInitialize(
    int hrCoInit,
    int dwCoInit,
    int dwNewThreadAptRefs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hrCoInit,
            Uint32 dwCoInit,
            Uint32 dwNewThreadAptRefs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hrCoInit,
            int dwCoInit,
            int dwNewThreadAptRefs,
          )>()(
        ptr.ref.lpVtbl,
        hrCoInit,
        dwCoInit,
        dwNewThreadAptRefs,
      );

  int PreUninitialize(
    int dwCurThreadAptRefs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwCurThreadAptRefs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwCurThreadAptRefs,
          )>()(
        ptr.ref.lpVtbl,
        dwCurThreadAptRefs,
      );

  int PostUninitialize(
    int dwNewThreadAptRefs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwNewThreadAptRefs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwNewThreadAptRefs,
          )>()(
        ptr.ref.lpVtbl,
        dwNewThreadAptRefs,
      );
}
