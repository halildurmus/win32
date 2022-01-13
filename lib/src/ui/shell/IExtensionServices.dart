// IExtensionServices.dart

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
const IID_IExtensionServices = '{79EAC9CB-BAF9-11CE-8C82-00AA004BA90B}';

/// {@category Interface}
/// {@category com}
class IExtensionServices extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IExtensionServices(Pointer<COMObject> ptr) : super(ptr);

  int SetAdditionalHeaders(
    Pointer<Utf16> pwzAdditionalHeaders,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwzAdditionalHeaders,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwzAdditionalHeaders,
          )>()(
        ptr.ref.lpVtbl,
        pwzAdditionalHeaders,
      );

  int SetAuthenticateData(
    int phwnd,
    Pointer<Utf16> pwzUsername,
    Pointer<Utf16> pwzPassword,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr phwnd,
            Pointer<Utf16> pwzUsername,
            Pointer<Utf16> pwzPassword,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int phwnd,
            Pointer<Utf16> pwzUsername,
            Pointer<Utf16> pwzPassword,
          )>()(
        ptr.ref.lpVtbl,
        phwnd,
        pwzUsername,
        pwzPassword,
      );
}
