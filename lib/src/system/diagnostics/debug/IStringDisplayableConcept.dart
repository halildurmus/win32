// IStringDisplayableConcept.dart

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
import '../../../system/diagnostics/debug/IKeyStore.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IStringDisplayableConcept = '{D28E8D70-6C00-4205-940D-501016601EA3}';

/// {@category Interface}
/// {@category com}
class IStringDisplayableConcept extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IStringDisplayableConcept(Pointer<COMObject> ptr) : super(ptr);

  int ToDisplayString(
    Pointer<COMObject> contextObject,
    Pointer<COMObject> metadata,
    Pointer<Pointer<Utf16>> displayString,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> contextObject,
            Pointer<COMObject> metadata,
            Pointer<Pointer<Utf16>> displayString,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> contextObject,
            Pointer<COMObject> metadata,
            Pointer<Pointer<Utf16>> displayString,
          )>()(
        ptr.ref.lpVtbl,
        contextObject,
        metadata,
        displayString,
      );
}
