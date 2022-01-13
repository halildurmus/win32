// IAppxPackagingDiagnosticEventSink.dart

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
import '../../../storage/packaging/appx/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IAppxPackagingDiagnosticEventSink =
    '{17239D47-6ADB-45D2-80F6-F9CBC3BF059D}';

/// {@category Interface}
/// {@category com}
class IAppxPackagingDiagnosticEventSink extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IAppxPackagingDiagnosticEventSink(Pointer<COMObject> ptr) : super(ptr);

  int ReportContextChange(
    int changeType,
    int contextId,
    Pointer<Utf8> contextName,
    Pointer<Utf16> contextMessage,
    Pointer<Utf16> detailsMessage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 changeType,
            Int32 contextId,
            Pointer<Utf8> contextName,
            Pointer<Utf16> contextMessage,
            Pointer<Utf16> detailsMessage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int changeType,
            int contextId,
            Pointer<Utf8> contextName,
            Pointer<Utf16> contextMessage,
            Pointer<Utf16> detailsMessage,
          )>()(
        ptr.ref.lpVtbl,
        changeType,
        contextId,
        contextName,
        contextMessage,
        detailsMessage,
      );

  int ReportError(
    Pointer<Utf16> errorMessage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> errorMessage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> errorMessage,
          )>()(
        ptr.ref.lpVtbl,
        errorMessage,
      );
}
