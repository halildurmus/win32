// ICreateProcessInputs.dart

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
const IID_ICreateProcessInputs = '{F6EF6140-E26F-4D82-BAC4-E9BA5FD239A8}';

/// {@category Interface}
/// {@category com}
class ICreateProcessInputs extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  ICreateProcessInputs(Pointer<COMObject> ptr) : super(ptr);

  int GetCreateFlags(
    Pointer<Uint32> pdwCreationFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwCreationFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwCreationFlags,
          )>()(
        ptr.ref.lpVtbl,
        pdwCreationFlags,
      );

  int SetCreateFlags(
    int dwCreationFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwCreationFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwCreationFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwCreationFlags,
      );

  int AddCreateFlags(
    int dwCreationFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwCreationFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwCreationFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwCreationFlags,
      );

  int SetHotKey(
    int wHotKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wHotKey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wHotKey,
          )>()(
        ptr.ref.lpVtbl,
        wHotKey,
      );

  int AddStartupFlags(
    int dwStartupInfoFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStartupInfoFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStartupInfoFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwStartupInfoFlags,
      );

  int SetTitle(
    Pointer<Utf16> pszTitle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszTitle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszTitle,
          )>()(
        ptr.ref.lpVtbl,
        pszTitle,
      );

  int SetEnvironmentVariable(
    Pointer<Utf16> pszName,
    Pointer<Utf16> pszValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszName,
            Pointer<Utf16> pszValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszName,
            Pointer<Utf16> pszValue,
          )>()(
        ptr.ref.lpVtbl,
        pszName,
        pszValue,
      );
}
