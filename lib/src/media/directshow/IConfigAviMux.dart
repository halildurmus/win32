// IConfigAviMux.dart

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
const IID_IConfigAviMux = '{5ACD6AA0-F482-11CE-8B67-00AA00A3F1A6}';

/// {@category Interface}
/// {@category com}
class IConfigAviMux extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IConfigAviMux(Pointer<COMObject> ptr) : super(ptr);

  int SetMasterStream(
    int iStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iStream,
          )>()(
        ptr.ref.lpVtbl,
        iStream,
      );

  int GetMasterStream(
    Pointer<Int32> pStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pStream,
          )>()(
        ptr.ref.lpVtbl,
        pStream,
      );

  int SetOutputCompatibilityIndex(
    int fOldIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fOldIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fOldIndex,
          )>()(
        ptr.ref.lpVtbl,
        fOldIndex,
      );

  int GetOutputCompatibilityIndex(
    Pointer<Int32> pfOldIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfOldIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfOldIndex,
          )>()(
        ptr.ref.lpVtbl,
        pfOldIndex,
      );
}
