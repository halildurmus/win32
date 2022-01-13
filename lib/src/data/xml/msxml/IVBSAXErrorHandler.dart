// IVBSAXErrorHandler.dart

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
import '../../../data/xml/msxml/IVBSAXLocator.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IVBSAXErrorHandler = '{D963D3FE-173C-4862-9095-B92F66995F52}';

/// {@category Interface}
/// {@category com}
class IVBSAXErrorHandler extends IDispatch {
  // vtable begins at 7, is 3 entries long.
  IVBSAXErrorHandler(Pointer<COMObject> ptr) : super(ptr);

  int error(
    Pointer<COMObject> oLocator,
    Pointer<Pointer<Utf16>> strErrorMessage,
    int nErrorCode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> oLocator,
            Pointer<Pointer<Utf16>> strErrorMessage,
            Int32 nErrorCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> oLocator,
            Pointer<Pointer<Utf16>> strErrorMessage,
            int nErrorCode,
          )>()(
        ptr.ref.lpVtbl,
        oLocator,
        strErrorMessage,
        nErrorCode,
      );

  int fatalError(
    Pointer<COMObject> oLocator,
    Pointer<Pointer<Utf16>> strErrorMessage,
    int nErrorCode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> oLocator,
            Pointer<Pointer<Utf16>> strErrorMessage,
            Int32 nErrorCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> oLocator,
            Pointer<Pointer<Utf16>> strErrorMessage,
            int nErrorCode,
          )>()(
        ptr.ref.lpVtbl,
        oLocator,
        strErrorMessage,
        nErrorCode,
      );

  int ignorableWarning(
    Pointer<COMObject> oLocator,
    Pointer<Pointer<Utf16>> strErrorMessage,
    int nErrorCode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> oLocator,
            Pointer<Pointer<Utf16>> strErrorMessage,
            Int32 nErrorCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> oLocator,
            Pointer<Pointer<Utf16>> strErrorMessage,
            int nErrorCode,
          )>()(
        ptr.ref.lpVtbl,
        oLocator,
        strErrorMessage,
        nErrorCode,
      );
}
