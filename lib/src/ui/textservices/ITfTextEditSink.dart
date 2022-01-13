// ITfTextEditSink.dart

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
import '../../ui/textservices/ITfContext.dart';
import '../../ui/textservices/ITfEditRecord.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITfTextEditSink = '{8127D409-CCD3-4683-967A-B43D5B482BF7}';

/// {@category Interface}
/// {@category com}
class ITfTextEditSink extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ITfTextEditSink(Pointer<COMObject> ptr) : super(ptr);

  int OnEndEdit(
    Pointer<COMObject> pic,
    int ecReadOnly,
    Pointer<COMObject> pEditRecord,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pic,
            Uint32 ecReadOnly,
            Pointer<COMObject> pEditRecord,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pic,
            int ecReadOnly,
            Pointer<COMObject> pEditRecord,
          )>()(
        ptr.ref.lpVtbl,
        pic,
        ecReadOnly,
        pEditRecord,
      );
}
