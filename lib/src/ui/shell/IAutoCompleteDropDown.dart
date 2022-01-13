// IAutoCompleteDropDown.dart

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

import '../../system/com/IUnknown.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IAutoCompleteDropDown = '{3CD141F4-3C6A-11D2-BCAA-00C04FD929DB}';

/// {@category Interface}
/// {@category com}
class IAutoCompleteDropDown extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IAutoCompleteDropDown(Pointer<COMObject> ptr) : super(ptr);

  int GetDropDownStatus(
    Pointer<Uint32> pdwFlags,
    Pointer<Pointer<Utf16>> ppwszString,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwFlags,
            Pointer<Pointer<Utf16>> ppwszString,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwFlags,
            Pointer<Pointer<Utf16>> ppwszString,
          )>()(
        ptr.ref.lpVtbl,
        pdwFlags,
        ppwszString,
      );

  int ResetEnumerator() => ptr.ref.lpVtbl.value
          .elementAt(4)
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
