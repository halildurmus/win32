// IUPnPDeviceControlHttpHeaders.dart

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
const IID_IUPnPDeviceControlHttpHeaders =
    '{204810BB-73B2-11D4-BF42-00B0D0118B56}';

/// {@category Interface}
/// {@category com}
class IUPnPDeviceControlHttpHeaders extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUPnPDeviceControlHttpHeaders(Pointer<COMObject> ptr) : super(ptr);

  int GetAdditionalResponseHeaders(
    Pointer<Pointer<Utf16>> bstrHttpResponseHeaders,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> bstrHttpResponseHeaders,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> bstrHttpResponseHeaders,
          )>()(
        ptr.ref.lpVtbl,
        bstrHttpResponseHeaders,
      );
}
