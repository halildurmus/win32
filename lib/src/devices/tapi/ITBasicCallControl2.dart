// ITBasicCallControl2.dart

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

import '../../devices/tapi/ITBasicCallControl.dart';
import '../../foundation/structs.g.dart';
import '../../devices/tapi/structs.g.dart';
import '../../devices/tapi/ITTerminal.dart';

/// @nodoc
const IID_ITBasicCallControl2 = '{161A4A56-1E99-4B3F-A46A-168F38A5EE4C}';

/// {@category Interface}
/// {@category com}
class ITBasicCallControl2 extends ITBasicCallControl {
  // vtable begins at 25, is 3 entries long.
  ITBasicCallControl2(Pointer<COMObject> ptr) : super(ptr);

  int RequestTerminal(
    Pointer<Utf16> bstrTerminalClassGUID,
    int lMediaType,
    int Direction,
    Pointer<Pointer<COMObject>> ppTerminal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrTerminalClassGUID,
            Int32 lMediaType,
            Int32 Direction,
            Pointer<Pointer<COMObject>> ppTerminal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrTerminalClassGUID,
            int lMediaType,
            int Direction,
            Pointer<Pointer<COMObject>> ppTerminal,
          )>()(
        ptr.ref.lpVtbl,
        bstrTerminalClassGUID,
        lMediaType,
        Direction,
        ppTerminal,
      );

  int SelectTerminalOnCall(
    Pointer<COMObject> pTerminal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pTerminal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pTerminal,
          )>()(
        ptr.ref.lpVtbl,
        pTerminal,
      );

  int UnselectTerminalOnCall(
    Pointer<COMObject> pTerminal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pTerminal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pTerminal,
          )>()(
        ptr.ref.lpVtbl,
        pTerminal,
      );
}
