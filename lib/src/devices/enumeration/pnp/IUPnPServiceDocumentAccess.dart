// IUPnPServiceDocumentAccess.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IUPnPServiceDocumentAccess = '{21905529-0A5E-4589-825D-7E6D87EA6998}';

/// {@category Interface}
/// {@category com}
class IUPnPServiceDocumentAccess extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IUPnPServiceDocumentAccess(Pointer<COMObject> ptr) : super(ptr);

  int GetDocumentURL(
    Pointer<Pointer<Utf16>> pbstrDocUrl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrDocUrl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrDocUrl,
          )>()(
        ptr.ref.lpVtbl,
        pbstrDocUrl,
      );

  int GetDocument(
    Pointer<Pointer<Utf16>> pbstrDoc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrDoc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrDoc,
          )>()(
        ptr.ref.lpVtbl,
        pbstrDoc,
      );
}
