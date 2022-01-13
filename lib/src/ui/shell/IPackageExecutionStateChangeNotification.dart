// IPackageExecutionStateChangeNotification.dart

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
import '../../ui/shell/structs.g.dart';

/// @nodoc
const IID_IPackageExecutionStateChangeNotification =
    '{1BB12A62-2AD8-432B-8CCF-0C2C52AFCD5B}';

/// {@category Interface}
/// {@category com}
class IPackageExecutionStateChangeNotification extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IPackageExecutionStateChangeNotification(Pointer<COMObject> ptr) : super(ptr);

  int OnStateChanged(
    Pointer<Utf16> pszPackageFullName,
    int pesNewState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPackageFullName,
            Int32 pesNewState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPackageFullName,
            int pesNewState,
          )>()(
        ptr.ref.lpVtbl,
        pszPackageFullName,
        pesNewState,
      );
}
