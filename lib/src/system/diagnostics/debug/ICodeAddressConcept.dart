// ICodeAddressConcept.dart

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
import '../../../system/diagnostics/debug/IModelObject.dart';
import '../../../system/diagnostics/debug/IDebugHostSymbol.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_ICodeAddressConcept = '{C7371568-5C78-4A00-A4AB-6EF8823184CB}';

/// {@category Interface}
/// {@category com}
class ICodeAddressConcept extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ICodeAddressConcept(Pointer<COMObject> ptr) : super(ptr);

  int GetContainingSymbol(
    Pointer<COMObject> pContextObject,
    Pointer<Pointer<COMObject>> ppSymbol,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pContextObject,
            Pointer<Pointer<COMObject>> ppSymbol,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pContextObject,
            Pointer<Pointer<COMObject>> ppSymbol,
          )>()(
        ptr.ref.lpVtbl,
        pContextObject,
        ppSymbol,
      );
}
