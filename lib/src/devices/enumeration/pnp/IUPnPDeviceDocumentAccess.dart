// IUPnPDeviceDocumentAccess.dart

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
const IID_IUPnPDeviceDocumentAccess = '{E7772804-3287-418E-9072-CF2B47238981}';

/// {@category Interface}
/// {@category com}
class IUPnPDeviceDocumentAccess extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUPnPDeviceDocumentAccess(Pointer<COMObject> ptr) : super(ptr);

  int GetDocumentURL(
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
