// ITravelLogClient.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/IStream.dart';
import '../../ui/shell/structs.g.dart';

/// @nodoc
const IID_ITravelLogClient = '{241C033E-E659-43DA-AA4D-4086DBC4758D}';

/// {@category Interface}
/// {@category com}
class ITravelLogClient extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ITravelLogClient(Pointer<COMObject> ptr) : super(ptr);

  int FindWindowByIndex(
    int dwID,
    Pointer<Pointer<COMObject>> ppunk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwID,
            Pointer<Pointer<COMObject>> ppunk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwID,
            Pointer<Pointer<COMObject>> ppunk,
          )>()(
        ptr.ref.lpVtbl,
        dwID,
        ppunk,
      );

  int GetWindowData(
    Pointer<COMObject> pStream,
    Pointer<WINDOWDATA> pWinData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pStream,
            Pointer<WINDOWDATA> pWinData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pStream,
            Pointer<WINDOWDATA> pWinData,
          )>()(
        ptr.ref.lpVtbl,
        pStream,
        pWinData,
      );

  int LoadHistoryPosition(
    Pointer<Utf16> pszUrlLocation,
    int dwPosition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszUrlLocation,
            Uint32 dwPosition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszUrlLocation,
            int dwPosition,
          )>()(
        ptr.ref.lpVtbl,
        pszUrlLocation,
        dwPosition,
      );
}
