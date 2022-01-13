// IDynamicHWHandler.dart

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
const IID_IDynamicHWHandler = '{DC2601D7-059E-42FC-A09D-2AFD21B6D5F7}';

/// {@category Interface}
/// {@category com}
class IDynamicHWHandler extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDynamicHWHandler(Pointer<COMObject> ptr) : super(ptr);

  int GetDynamicInfo(
    Pointer<Utf16> pszDeviceID,
    int dwContentType,
    Pointer<Pointer<Utf16>> ppszAction,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszDeviceID,
            Uint32 dwContentType,
            Pointer<Pointer<Utf16>> ppszAction,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszDeviceID,
            int dwContentType,
            Pointer<Pointer<Utf16>> ppszAction,
          )>()(
        ptr.ref.lpVtbl,
        pszDeviceID,
        dwContentType,
        ppszAction,
      );
}
