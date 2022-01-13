// IWSManEx3.dart

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

import '../../system/remotemanagement/IWSManEx2.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWSManEx3 = '{6400E966-011D-4EAC-8474-049E0848AFAD}';

/// {@category Interface}
/// {@category com}
class IWSManEx3 extends IWSManEx2 {
  // vtable begins at 32, is 7 entries long.
  IWSManEx3(Pointer<COMObject> ptr) : super(ptr);

  int SessionFlagUTF16(
    Pointer<Int32> flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> flags,
          )>()(
        ptr.ref.lpVtbl,
        flags,
      );

  int SessionFlagUseCredSsp(
    Pointer<Int32> flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> flags,
          )>()(
        ptr.ref.lpVtbl,
        flags,
      );

  int EnumerationFlagAssociationInstance(
    Pointer<Int32> flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> flags,
          )>()(
        ptr.ref.lpVtbl,
        flags,
      );

  int EnumerationFlagAssociatedInstance(
    Pointer<Int32> flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> flags,
          )>()(
        ptr.ref.lpVtbl,
        flags,
      );

  int SessionFlagSkipRevocationCheck(
    Pointer<Int32> flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> flags,
          )>()(
        ptr.ref.lpVtbl,
        flags,
      );

  int SessionFlagAllowNegotiateImplicitCredentials(
    Pointer<Int32> flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> flags,
          )>()(
        ptr.ref.lpVtbl,
        flags,
      );

  int SessionFlagUseSsl(
    Pointer<Int32> flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> flags,
          )>()(
        ptr.ref.lpVtbl,
        flags,
      );
}
