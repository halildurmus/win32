// IACList.dart

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
const IID_IACList = '{77A130B0-94FD-11D0-A544-00C04FD7D062}';

/// {@category Interface}
/// {@category com}
class IACList extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IACList(Pointer<COMObject> ptr) : super(ptr);

  int Expand(
    Pointer<Utf16> pszExpand,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszExpand,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszExpand,
          )>()(
        ptr.ref.lpVtbl,
        pszExpand,
      );
}
