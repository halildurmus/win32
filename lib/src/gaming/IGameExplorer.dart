// IGameExplorer.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../ole32.dart';
import '../utils.dart';

import '../system/com/IUnknown.dart';
import '../foundation/structs.g.dart';
import '../gaming/structs.g.dart';

/// @nodoc
const IID_IGameExplorer = '{E7B2FB72-D728-49B3-A5F2-18EBF5F1349E}';

/// {@category Interface}
/// {@category com}
class IGameExplorer extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IGameExplorer(Pointer<COMObject> ptr) : super(ptr);

  int AddGame(
    Pointer<Utf16> bstrGDFBinaryPath,
    Pointer<Utf16> bstrGameInstallDirectory,
    int installScope,
    Pointer<GUID> pguidInstanceID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrGDFBinaryPath,
            Pointer<Utf16> bstrGameInstallDirectory,
            Int32 installScope,
            Pointer<GUID> pguidInstanceID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrGDFBinaryPath,
            Pointer<Utf16> bstrGameInstallDirectory,
            int installScope,
            Pointer<GUID> pguidInstanceID,
          )>()(
        ptr.ref.lpVtbl,
        bstrGDFBinaryPath,
        bstrGameInstallDirectory,
        installScope,
        pguidInstanceID,
      );

  int RemoveGame(
    GUID guidInstanceID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID guidInstanceID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID guidInstanceID,
          )>()(
        ptr.ref.lpVtbl,
        guidInstanceID,
      );

  int UpdateGame(
    GUID guidInstanceID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID guidInstanceID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID guidInstanceID,
          )>()(
        ptr.ref.lpVtbl,
        guidInstanceID,
      );

  int VerifyAccess(
    Pointer<Utf16> bstrGDFBinaryPath,
    Pointer<Int32> pfHasAccess,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrGDFBinaryPath,
            Pointer<Int32> pfHasAccess,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrGDFBinaryPath,
            Pointer<Int32> pfHasAccess,
          )>()(
        ptr.ref.lpVtbl,
        bstrGDFBinaryPath,
        pfHasAccess,
      );
}

/// @nodoc
const CLSID_GameExplorer = '{9A5EA990-3034-4D6F-9128-01F3C61022BC}';

/// {@category com}
class GameExplorer extends IGameExplorer {
  GameExplorer(Pointer<COMObject> ptr) : super(ptr);

  factory GameExplorer.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_GameExplorer);
    final iid = calloc<GUID>()..ref.setGUID(IID_IGameExplorer);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return GameExplorer(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
