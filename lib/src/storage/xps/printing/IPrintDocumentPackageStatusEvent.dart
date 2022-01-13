// IPrintDocumentPackageStatusEvent.dart

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

import '../../../system/com/IDispatch.dart';
import '../../../storage/xps/printing/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IPrintDocumentPackageStatusEvent =
    '{ED90C8AD-5C34-4D05-A1EC-0E8A9B3AD7AF}';

/// {@category Interface}
/// {@category com}
class IPrintDocumentPackageStatusEvent extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  IPrintDocumentPackageStatusEvent(Pointer<COMObject> ptr) : super(ptr);

  int PackageStatusUpdated(
    Pointer<PrintDocumentPackageStatus> packageStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PrintDocumentPackageStatus> packageStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PrintDocumentPackageStatus> packageStatus,
          )>()(
        ptr.ref.lpVtbl,
        packageStatus,
      );
}
