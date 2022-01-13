// IBackgroundCopyJobHttpOptions3.dart

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

import '../../networking/backgroundintelligenttransferservice/IBackgroundCopyJobHttpOptions2.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IBackgroundCopyJobHttpOptions3 =
    '{8A9263D3-FD4C-4EDA-9B28-30132A4D4E3C}';

/// {@category Interface}
/// {@category com}
class IBackgroundCopyJobHttpOptions3 extends IBackgroundCopyJobHttpOptions2 {
  // vtable begins at 13, is 2 entries long.
  IBackgroundCopyJobHttpOptions3(Pointer<COMObject> ptr) : super(ptr);

  int SetServerCertificateValidationInterface(
    Pointer<COMObject> certValidationCallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> certValidationCallback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> certValidationCallback,
          )>()(
        ptr.ref.lpVtbl,
        certValidationCallback,
      );

  int MakeCustomHeadersWriteOnly() => ptr.ref.lpVtbl.value
          .elementAt(14)
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
