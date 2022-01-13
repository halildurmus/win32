// IInputObjectSite.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IInputObjectSite = '{F1DB8392-7331-11D0-8C99-00A0C92DBFE8}';

/// {@category Interface}
/// {@category com}
class IInputObjectSite extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IInputObjectSite(Pointer<COMObject> ptr) : super(ptr);

  int OnFocusChangeIS(
    Pointer<COMObject> punkObj,
    int fSetFocus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punkObj,
            Int32 fSetFocus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punkObj,
            int fSetFocus,
          )>()(
        ptr.ref.lpVtbl,
        punkObj,
        fSetFocus,
      );
}
