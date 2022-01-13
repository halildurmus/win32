// IWebWizardHost2.dart

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

import '../../ui/shell/IWebWizardHost.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWebWizardHost2 = '{F9C013DC-3C23-4041-8E39-CFB402F7EA59}';

/// {@category Interface}
/// {@category com}
class IWebWizardHost2 extends IWebWizardHost {
  // vtable begins at 16, is 1 entries long.
  IWebWizardHost2(Pointer<COMObject> ptr) : super(ptr);

  int SignString(
    Pointer<Utf16> value,
    Pointer<Pointer<Utf16>> signedValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> value,
            Pointer<Pointer<Utf16>> signedValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> value,
            Pointer<Pointer<Utf16>> signedValue,
          )>()(
        ptr.ref.lpVtbl,
        value,
        signedValue,
      );
}
