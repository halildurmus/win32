// ICodeInstall.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/urlmon/IWindowForBindingUI.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_ICodeInstall = '{79EAC9D1-BAF9-11CE-8C82-00AA004BA90B}';

/// {@category Interface}
/// {@category com}
class ICodeInstall extends IWindowForBindingUI {
  // vtable begins at 4, is 1 entries long.
  ICodeInstall(Pointer<COMObject> ptr) : super(ptr);

  int OnCodeInstallProblem(
    int ulStatusCode,
    Pointer<Utf16> szDestination,
    Pointer<Utf16> szSource,
    int dwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulStatusCode,
            Pointer<Utf16> szDestination,
            Pointer<Utf16> szSource,
            Uint32 dwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulStatusCode,
            Pointer<Utf16> szDestination,
            Pointer<Utf16> szSource,
            int dwReserved,
          )>()(
        ptr.ref.lpVtbl,
        ulStatusCode,
        szDestination,
        szSource,
        dwReserved,
      );
}
