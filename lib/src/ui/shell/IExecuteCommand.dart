// IExecuteCommand.dart

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
const IID_IExecuteCommand = '{7F9185B0-CB92-43C5-80A9-92277A4F7B54}';

/// {@category Interface}
/// {@category com}
class IExecuteCommand extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IExecuteCommand(Pointer<COMObject> ptr) : super(ptr);

  int SetKeyState(
    int grfKeyState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 grfKeyState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int grfKeyState,
          )>()(
        ptr.ref.lpVtbl,
        grfKeyState,
      );

  int SetParameters(
    Pointer<Utf16> pszParameters,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszParameters,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszParameters,
          )>()(
        ptr.ref.lpVtbl,
        pszParameters,
      );

  int SetPosition(
    POINT pt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            POINT pt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            POINT pt,
          )>()(
        ptr.ref.lpVtbl,
        pt,
      );

  int SetShowWindow(
    int nShow,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nShow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nShow,
          )>()(
        ptr.ref.lpVtbl,
        nShow,
      );

  int SetNoShowUI(
    int fNoShowUI,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fNoShowUI,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fNoShowUI,
          )>()(
        ptr.ref.lpVtbl,
        fNoShowUI,
      );

  int SetDirectory(
    Pointer<Utf16> pszDirectory,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszDirectory,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszDirectory,
          )>()(
        ptr.ref.lpVtbl,
        pszDirectory,
      );

  int Execute() => ptr.ref.lpVtbl.value
          .elementAt(9)
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
