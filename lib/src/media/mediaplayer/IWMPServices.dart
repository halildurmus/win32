// IWMPServices.dart

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
import '../../media/mediaplayer/structs.g.dart';

/// @nodoc
const IID_IWMPServices = '{AFB6B76B-1E20-4198-83B3-191DB6E0B149}';

/// {@category Interface}
/// {@category com}
class IWMPServices extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWMPServices(Pointer<COMObject> ptr) : super(ptr);

  int GetStreamTime(
    Pointer<Int64> prt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> prt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> prt,
          )>()(
        ptr.ref.lpVtbl,
        prt,
      );

  int GetStreamState(
    Pointer<Int32> pState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pState,
          )>()(
        ptr.ref.lpVtbl,
        pState,
      );
}
