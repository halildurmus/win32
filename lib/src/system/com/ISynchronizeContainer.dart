// ISynchronizeContainer.dart

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
import '../../system/com/ISynchronize.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISynchronizeContainer = '{00000033-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class ISynchronizeContainer extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ISynchronizeContainer(Pointer<COMObject> ptr) : super(ptr);

  int AddSynchronize(
    Pointer<COMObject> pSync,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSync,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSync,
          )>()(
        ptr.ref.lpVtbl,
        pSync,
      );

  int WaitMultiple(
    int dwFlags,
    int dwTimeOut,
    Pointer<Pointer<COMObject>> ppSync,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Uint32 dwTimeOut,
            Pointer<Pointer<COMObject>> ppSync,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            int dwTimeOut,
            Pointer<Pointer<COMObject>> ppSync,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        dwTimeOut,
        ppSync,
      );
}
