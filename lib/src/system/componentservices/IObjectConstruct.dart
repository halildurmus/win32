// IObjectConstruct.dart

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
import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IObjectConstruct = '{41C4F8B3-7439-11D2-98CB-00C04F8EE1C4}';

/// {@category Interface}
/// {@category com}
class IObjectConstruct extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IObjectConstruct(Pointer<COMObject> ptr) : super(ptr);

  int Construct(
    Pointer<COMObject> pCtorObj,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCtorObj,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCtorObj,
          )>()(
        ptr.ref.lpVtbl,
        pCtorObj,
      );
}
