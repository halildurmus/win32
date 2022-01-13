// IDebugDocumentContext.dart

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
import '../../../system/diagnostics/debug/IDebugDocument.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/IEnumDebugCodeContexts.dart';

/// @nodoc
const IID_IDebugDocumentContext = '{51973C28-CB0C-11D0-B5C9-00A0244A0E7A}';

/// {@category Interface}
/// {@category com}
class IDebugDocumentContext extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDebugDocumentContext(Pointer<COMObject> ptr) : super(ptr);

  int GetDocument(
    Pointer<Pointer<COMObject>> ppsd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppsd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppsd,
          )>()(
        ptr.ref.lpVtbl,
        ppsd,
      );

  int EnumCodeContexts(
    Pointer<Pointer<COMObject>> ppescc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppescc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppescc,
          )>()(
        ptr.ref.lpVtbl,
        ppescc,
      );
}
