// IBackgroundCopyError.dart

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
import '../../networking/backgroundintelligenttransferservice/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../networking/backgroundintelligenttransferservice/IBackgroundCopyFile.dart';

/// @nodoc
const IID_IBackgroundCopyError = '{19C613A0-FCB8-4F28-81AE-897C3D078F81}';

/// {@category Interface}
/// {@category com}
class IBackgroundCopyError extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IBackgroundCopyError(Pointer<COMObject> ptr) : super(ptr);

  int GetError(
    Pointer<Int32> pContext,
    Pointer<Int32> pCode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pContext,
            Pointer<Int32> pCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pContext,
            Pointer<Int32> pCode,
          )>()(
        ptr.ref.lpVtbl,
        pContext,
        pCode,
      );

  int GetFile(
    Pointer<Pointer<COMObject>> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pVal,
          )>()(
        ptr.ref.lpVtbl,
        pVal,
      );

  int GetErrorDescription(
    int LanguageId,
    Pointer<Pointer<Utf16>> pErrorDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 LanguageId,
            Pointer<Pointer<Utf16>> pErrorDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int LanguageId,
            Pointer<Pointer<Utf16>> pErrorDescription,
          )>()(
        ptr.ref.lpVtbl,
        LanguageId,
        pErrorDescription,
      );

  int GetErrorContextDescription(
    int LanguageId,
    Pointer<Pointer<Utf16>> pContextDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 LanguageId,
            Pointer<Pointer<Utf16>> pContextDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int LanguageId,
            Pointer<Pointer<Utf16>> pContextDescription,
          )>()(
        ptr.ref.lpVtbl,
        LanguageId,
        pContextDescription,
      );

  int GetProtocol(
    Pointer<Pointer<Utf16>> pProtocol,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pProtocol,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pProtocol,
          )>()(
        ptr.ref.lpVtbl,
        pProtocol,
      );
}
