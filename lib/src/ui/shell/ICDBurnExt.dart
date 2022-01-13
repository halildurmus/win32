// ICDBurnExt.dart

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
const IID_ICDBurnExt = '{2271DCCA-74FC-4414-8FB7-C56B05ACE2D7}';

/// {@category Interface}
/// {@category com}
class ICDBurnExt extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ICDBurnExt(Pointer<COMObject> ptr) : super(ptr);

  int GetSupportedActionTypes(
    Pointer<Uint32> pdwActions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwActions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwActions,
          )>()(
        ptr.ref.lpVtbl,
        pdwActions,
      );
}
