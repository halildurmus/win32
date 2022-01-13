// IRawElementProviderSimple2.dart

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

import '../../ui/accessibility/IRawElementProviderSimple.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IRawElementProviderSimple2 = '{A0A839A9-8DA1-4A82-806A-8E0D44E79F56}';

/// {@category Interface}
/// {@category com}
class IRawElementProviderSimple2 extends IRawElementProviderSimple {
  // vtable begins at 7, is 1 entries long.
  IRawElementProviderSimple2(Pointer<COMObject> ptr) : super(ptr);

  int ShowContextMenu() => ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
