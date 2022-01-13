// IAccessibleWinSAT.dart

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

import '../../ui/accessibility/IAccessible.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IAccessibleWinSAT = '{30E6018A-94A8-4FF8-A69A-71B67413F07B}';

/// {@category Interface}
/// {@category com}
class IAccessibleWinSAT extends IAccessible {
  // vtable begins at 28, is 1 entries long.
  IAccessibleWinSAT(Pointer<COMObject> ptr) : super(ptr);

  int SetAccessiblityData(
    Pointer<Utf16> wsName,
    Pointer<Utf16> wsValue,
    Pointer<Utf16> wsDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wsName,
            Pointer<Utf16> wsValue,
            Pointer<Utf16> wsDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wsName,
            Pointer<Utf16> wsValue,
            Pointer<Utf16> wsDesc,
          )>()(
        ptr.ref.lpVtbl,
        wsName,
        wsValue,
        wsDesc,
      );
}
