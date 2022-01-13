// ISAXErrorHandler.dart

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
import '../../../data/xml/msxml/ISAXLocator.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_ISAXErrorHandler = '{A60511C4-CCF5-479E-98A3-DC8DC545B7D0}';

/// {@category Interface}
/// {@category com}
class ISAXErrorHandler extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ISAXErrorHandler(Pointer<COMObject> ptr) : super(ptr);

  int error(
    Pointer<COMObject> pLocator,
    Pointer<Utf16> pwchErrorMessage,
    int hrErrorCode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pLocator,
            Pointer<Utf16> pwchErrorMessage,
            Int32 hrErrorCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pLocator,
            Pointer<Utf16> pwchErrorMessage,
            int hrErrorCode,
          )>()(
        ptr.ref.lpVtbl,
        pLocator,
        pwchErrorMessage,
        hrErrorCode,
      );

  int fatalError(
    Pointer<COMObject> pLocator,
    Pointer<Utf16> pwchErrorMessage,
    int hrErrorCode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pLocator,
            Pointer<Utf16> pwchErrorMessage,
            Int32 hrErrorCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pLocator,
            Pointer<Utf16> pwchErrorMessage,
            int hrErrorCode,
          )>()(
        ptr.ref.lpVtbl,
        pLocator,
        pwchErrorMessage,
        hrErrorCode,
      );

  int ignorableWarning(
    Pointer<COMObject> pLocator,
    Pointer<Utf16> pwchErrorMessage,
    int hrErrorCode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pLocator,
            Pointer<Utf16> pwchErrorMessage,
            Int32 hrErrorCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pLocator,
            Pointer<Utf16> pwchErrorMessage,
            int hrErrorCode,
          )>()(
        ptr.ref.lpVtbl,
        pLocator,
        pwchErrorMessage,
        hrErrorCode,
      );
}
