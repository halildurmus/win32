// IWorkspaceReportMessage.dart

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
const IID_IWorkspaceReportMessage = '{A7C06739-500F-4E8C-99A8-2BD6955899EB}';

/// {@category Interface}
/// {@category com}
class IWorkspaceReportMessage extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IWorkspaceReportMessage(Pointer<COMObject> ptr) : super(ptr);

  int RegisterErrorLogMessage(
    Pointer<Utf16> bstrMessage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrMessage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrMessage,
          )>()(
        ptr.ref.lpVtbl,
        bstrMessage,
      );

  int IsErrorMessageRegistered(
    Pointer<Utf16> bstrWkspId,
    int dwErrorType,
    Pointer<Utf16> bstrErrorMessageType,
    int dwErrorCode,
    Pointer<Int16> pfErrorExist,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrWkspId,
            Uint32 dwErrorType,
            Pointer<Utf16> bstrErrorMessageType,
            Uint32 dwErrorCode,
            Pointer<Int16> pfErrorExist,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrWkspId,
            int dwErrorType,
            Pointer<Utf16> bstrErrorMessageType,
            int dwErrorCode,
            Pointer<Int16> pfErrorExist,
          )>()(
        ptr.ref.lpVtbl,
        bstrWkspId,
        dwErrorType,
        bstrErrorMessageType,
        dwErrorCode,
        pfErrorExist,
      );

  int RegisterErrorEvent(
    Pointer<Utf16> bstrWkspId,
    int dwErrorType,
    Pointer<Utf16> bstrErrorMessageType,
    int dwErrorCode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrWkspId,
            Uint32 dwErrorType,
            Pointer<Utf16> bstrErrorMessageType,
            Uint32 dwErrorCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrWkspId,
            int dwErrorType,
            Pointer<Utf16> bstrErrorMessageType,
            int dwErrorCode,
          )>()(
        ptr.ref.lpVtbl,
        bstrWkspId,
        dwErrorType,
        bstrErrorMessageType,
        dwErrorCode,
      );
}
