// IActiveIMMRegistrar.dart

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

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IActiveIMMRegistrar = '{B3458082-BD00-11D1-939B-0060B067B86E}';

/// {@category Interface}
/// {@category com}
class IActiveIMMRegistrar extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IActiveIMMRegistrar(Pointer<COMObject> ptr) : super(ptr);

  int RegisterIME(
    Pointer<GUID> rclsid,
    int lgid,
    Pointer<Utf16> pszIconFile,
    Pointer<Utf16> pszDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsid,
            Uint16 lgid,
            Pointer<Utf16> pszIconFile,
            Pointer<Utf16> pszDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsid,
            int lgid,
            Pointer<Utf16> pszIconFile,
            Pointer<Utf16> pszDesc,
          )>()(
        ptr.ref.lpVtbl,
        rclsid,
        lgid,
        pszIconFile,
        pszDesc,
      );

  int UnregisterIME(
    Pointer<GUID> rclsid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsid,
          )>()(
        ptr.ref.lpVtbl,
        rclsid,
      );
}
