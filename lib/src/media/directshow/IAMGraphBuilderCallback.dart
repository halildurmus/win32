// IAMGraphBuilderCallback.dart

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
import '../../system/com/IMoniker.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/IBaseFilter.dart';

/// @nodoc
const IID_IAMGraphBuilderCallback = '{4995F511-9DDB-4F12-BD3B-F04611807B79}';

/// {@category Interface}
/// {@category com}
class IAMGraphBuilderCallback extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IAMGraphBuilderCallback(Pointer<COMObject> ptr) : super(ptr);

  int SelectedFilter(
    Pointer<COMObject> pMon,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pMon,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pMon,
          )>()(
        ptr.ref.lpVtbl,
        pMon,
      );

  int CreatedFilter(
    Pointer<COMObject> pFil,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFil,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFil,
          )>()(
        ptr.ref.lpVtbl,
        pFil,
      );
}
