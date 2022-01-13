// ITfToolTipUIElement.dart

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

import '../../ui/textservices/ITfUIElement.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITfToolTipUIElement = '{52B18B5C-555D-46B2-B00A-FA680144FBDB}';

/// {@category Interface}
/// {@category com}
class ITfToolTipUIElement extends ITfUIElement {
  // vtable begins at 7, is 1 entries long.
  ITfToolTipUIElement(Pointer<COMObject> ptr) : super(ptr);

  int GetString(
    Pointer<Pointer<Utf16>> pstr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pstr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pstr,
          )>()(
        ptr.ref.lpVtbl,
        pstr,
      );
}
