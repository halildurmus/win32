// IUPnPDeviceDocumentAccessEx.dart

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
const IID_IUPnPDeviceDocumentAccessEx =
    '{C4BC4050-6178-4BD1-A4B8-6398321F3247}';

/// {@category Interface}
/// {@category com}
class IUPnPDeviceDocumentAccessEx extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUPnPDeviceDocumentAccessEx(Pointer<COMObject> ptr) : super(ptr);

  int GetDocument(
    Pointer<Pointer<Utf16>> pbstrDocument,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrDocument,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrDocument,
          )>()(
        ptr.ref.lpVtbl,
        pbstrDocument,
      );
}
