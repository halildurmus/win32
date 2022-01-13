// ITfInsertAtSelection.dart

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
import '../../ui/textservices/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../ui/textservices/ITfRange.dart';
import '../../system/com/IDataObject.dart';

/// @nodoc
const IID_ITfInsertAtSelection = '{55CE16BA-3014-41C1-9CEB-FADE1446AC6C}';

/// {@category Interface}
/// {@category com}
class ITfInsertAtSelection extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ITfInsertAtSelection(Pointer<COMObject> ptr) : super(ptr);

  int InsertTextAtSelection(
    int ec,
    int dwFlags,
    Pointer<Utf16> pchText,
    int cch,
    Pointer<Pointer<COMObject>> ppRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ec,
            Uint32 dwFlags,
            Pointer<Utf16> pchText,
            Int32 cch,
            Pointer<Pointer<COMObject>> ppRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ec,
            int dwFlags,
            Pointer<Utf16> pchText,
            int cch,
            Pointer<Pointer<COMObject>> ppRange,
          )>()(
        ptr.ref.lpVtbl,
        ec,
        dwFlags,
        pchText,
        cch,
        ppRange,
      );

  int InsertEmbeddedAtSelection(
    int ec,
    int dwFlags,
    Pointer<COMObject> pDataObject,
    Pointer<Pointer<COMObject>> ppRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ec,
            Uint32 dwFlags,
            Pointer<COMObject> pDataObject,
            Pointer<Pointer<COMObject>> ppRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ec,
            int dwFlags,
            Pointer<COMObject> pDataObject,
            Pointer<Pointer<COMObject>> ppRange,
          )>()(
        ptr.ref.lpVtbl,
        ec,
        dwFlags,
        pDataObject,
        ppRange,
      );
}
