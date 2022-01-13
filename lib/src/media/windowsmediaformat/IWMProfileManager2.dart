// IWMProfileManager2.dart

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

import '../../media/windowsmediaformat/IWMProfileManager.dart';
import '../../media/windowsmediaformat/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMProfileManager2 = '{7A924E51-73C1-494D-8019-23D37ED9B89A}';

/// {@category Interface}
/// {@category com}
class IWMProfileManager2 extends IWMProfileManager {
  // vtable begins at 9, is 2 entries long.
  IWMProfileManager2(Pointer<COMObject> ptr) : super(ptr);

  int GetSystemProfileVersion(
    Pointer<Int32> pdwVersion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pdwVersion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pdwVersion,
          )>()(
        ptr.ref.lpVtbl,
        pdwVersion,
      );

  int SetSystemProfileVersion(
    int dwVersion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 dwVersion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwVersion,
          )>()(
        ptr.ref.lpVtbl,
        dwVersion,
      );
}
