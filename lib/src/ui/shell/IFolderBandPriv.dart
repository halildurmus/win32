// IFolderBandPriv.dart

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
const IID_IFolderBandPriv = '{47C01F95-E185-412C-B5C5-4F27DF965AEA}';

/// {@category Interface}
/// {@category com}
class IFolderBandPriv extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IFolderBandPriv(Pointer<COMObject> ptr) : super(ptr);

  int SetCascade(
    int fCascade,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fCascade,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fCascade,
          )>()(
        ptr.ref.lpVtbl,
        fCascade,
      );

  int SetAccelerators(
    int fAccelerators,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fAccelerators,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fAccelerators,
          )>()(
        ptr.ref.lpVtbl,
        fAccelerators,
      );

  int SetNoIcons(
    int fNoIcons,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fNoIcons,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fNoIcons,
          )>()(
        ptr.ref.lpVtbl,
        fNoIcons,
      );

  int SetNoText(
    int fNoText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fNoText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fNoText,
          )>()(
        ptr.ref.lpVtbl,
        fNoText,
      );
}
