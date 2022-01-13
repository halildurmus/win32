// IGPEInformation.dart

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
import '../../system/registry/structs.g.dart';
import '../../system/grouppolicy/structs.g.dart';

/// @nodoc
const IID_IGPEInformation = '{8FC0B735-A0E1-11D1-A7D3-0000F87571E3}';

/// {@category Interface}
/// {@category com}
class IGPEInformation extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  IGPEInformation(Pointer<COMObject> ptr) : super(ptr);

  int GetName(
    Pointer<Utf16> pszName,
    int cchMaxLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszName,
            Int32 cchMaxLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszName,
            int cchMaxLength,
          )>()(
        ptr.ref.lpVtbl,
        pszName,
        cchMaxLength,
      );

  int GetDisplayName(
    Pointer<Utf16> pszName,
    int cchMaxLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszName,
            Int32 cchMaxLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszName,
            int cchMaxLength,
          )>()(
        ptr.ref.lpVtbl,
        pszName,
        cchMaxLength,
      );

  int GetRegistryKey(
    int dwSection,
    Pointer<IntPtr> hKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSection,
            Pointer<IntPtr> hKey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSection,
            Pointer<IntPtr> hKey,
          )>()(
        ptr.ref.lpVtbl,
        dwSection,
        hKey,
      );

  int GetDSPath(
    int dwSection,
    Pointer<Utf16> pszPath,
    int cchMaxPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSection,
            Pointer<Utf16> pszPath,
            Int32 cchMaxPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSection,
            Pointer<Utf16> pszPath,
            int cchMaxPath,
          )>()(
        ptr.ref.lpVtbl,
        dwSection,
        pszPath,
        cchMaxPath,
      );

  int GetFileSysPath(
    int dwSection,
    Pointer<Utf16> pszPath,
    int cchMaxPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSection,
            Pointer<Utf16> pszPath,
            Int32 cchMaxPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSection,
            Pointer<Utf16> pszPath,
            int cchMaxPath,
          )>()(
        ptr.ref.lpVtbl,
        dwSection,
        pszPath,
        cchMaxPath,
      );

  int GetOptions(
    Pointer<Uint32> dwOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> dwOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> dwOptions,
          )>()(
        ptr.ref.lpVtbl,
        dwOptions,
      );

  int GetType(
    Pointer<Int32> gpoType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> gpoType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> gpoType,
          )>()(
        ptr.ref.lpVtbl,
        gpoType,
      );

  int GetHint(
    Pointer<Int32> gpHint,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> gpHint,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> gpHint,
          )>()(
        ptr.ref.lpVtbl,
        gpHint,
      );

  int PolicyChanged(
    int bMachine,
    int bAdd,
    Pointer<GUID> pGuidExtension,
    Pointer<GUID> pGuidSnapin,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bMachine,
            Int32 bAdd,
            Pointer<GUID> pGuidExtension,
            Pointer<GUID> pGuidSnapin,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bMachine,
            int bAdd,
            Pointer<GUID> pGuidExtension,
            Pointer<GUID> pGuidSnapin,
          )>()(
        ptr.ref.lpVtbl,
        bMachine,
        bAdd,
        pGuidExtension,
        pGuidSnapin,
      );
}
