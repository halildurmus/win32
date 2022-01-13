// IDirectInput2W.dart

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

import '../../devices/humaninterfacedevice/IDirectInput.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDirectInput2W = '{5944E663-AA8A-11CF-BFC7-444553540000}';

/// {@category Interface}
/// {@category com}
class IDirectInput2W extends IDirectInputW {
  // vtable begins at 8, is 1 entries long.
  IDirectInput2W(Pointer<COMObject> ptr) : super(ptr);

  int FindDevice(
    Pointer<GUID> param0,
    Pointer<Utf16> param1,
    Pointer<GUID> param2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> param0,
            Pointer<Utf16> param1,
            Pointer<GUID> param2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> param0,
            Pointer<Utf16> param1,
            Pointer<GUID> param2,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
      );
}
