// IQueryCodePage.dart

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
const IID_IQueryCodePage = '{C7B236CE-EE80-11D0-985F-006008059382}';

/// {@category Interface}
/// {@category com}
class IQueryCodePage extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IQueryCodePage(Pointer<COMObject> ptr) : super(ptr);

  int GetCodePage(
    Pointer<Uint32> puiCodePage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> puiCodePage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> puiCodePage,
          )>()(
        ptr.ref.lpVtbl,
        puiCodePage,
      );

  int SetCodePage(
    int uiCodePage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uiCodePage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uiCodePage,
          )>()(
        ptr.ref.lpVtbl,
        uiCodePage,
      );
}
