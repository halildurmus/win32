// ITfSystemLangBarItemSink.dart

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
import '../../ui/textservices/ITfMenu.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITfSystemLangBarItemSink = '{1449D9AB-13CF-4687-AA3E-8D8B18574396}';

/// {@category Interface}
/// {@category com}
class ITfSystemLangBarItemSink extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ITfSystemLangBarItemSink(Pointer<COMObject> ptr) : super(ptr);

  int InitMenu(
    Pointer<COMObject> pMenu,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pMenu,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pMenu,
          )>()(
        ptr.ref.lpVtbl,
        pMenu,
      );

  int OnMenuSelect(
    int wID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 wID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wID,
          )>()(
        ptr.ref.lpVtbl,
        wID,
      );
}
