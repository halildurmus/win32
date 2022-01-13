// IWABExtInit.dart

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
import '../../system/addressbook/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWABExtInit = '{EA22EBF0-87A4-11D1-9ACF-00A0C91F9C8B}';

/// {@category Interface}
/// {@category com}
class IWABExtInit extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWABExtInit(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<WABEXTDISPLAY> lpWABExtDisplay,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WABEXTDISPLAY> lpWABExtDisplay,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WABEXTDISPLAY> lpWABExtDisplay,
          )>()(
        ptr.ref.lpVtbl,
        lpWABExtDisplay,
      );
}
