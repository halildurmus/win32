// IGroupPolicyObject.dart

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
import '../../ui/controls/structs.g.dart';

/// @nodoc
const IID_IGroupPolicyObject = '{EA502723-A23D-11D1-A7D3-0000F87571E3}';

/// {@category Interface}
/// {@category com}
class IGroupPolicyObject extends IUnknown {
  // vtable begins at 3, is 18 entries long.
  IGroupPolicyObject(Pointer<COMObject> ptr) : super(ptr);

  int New(
    Pointer<Utf16> pszDomainName,
    Pointer<Utf16> pszDisplayName,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszDomainName,
            Pointer<Utf16> pszDisplayName,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszDomainName,
            Pointer<Utf16> pszDisplayName,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pszDomainName,
        pszDisplayName,
        dwFlags,
      );

  int OpenDSGPO(
    Pointer<Utf16> pszPath,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPath,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPath,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pszPath,
        dwFlags,
      );

  int OpenLocalMachineGPO(
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
      );

  int OpenRemoteMachineGPO(
    Pointer<Utf16> pszComputerName,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszComputerName,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszComputerName,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pszComputerName,
        dwFlags,
      );

  int Save(
    int bMachine,
    int bAdd,
    Pointer<GUID> pGuidExtension,
    Pointer<GUID> pGuid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bMachine,
            Int32 bAdd,
            Pointer<GUID> pGuidExtension,
            Pointer<GUID> pGuid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bMachine,
            int bAdd,
            Pointer<GUID> pGuidExtension,
            Pointer<GUID> pGuid,
          )>()(
        ptr.ref.lpVtbl,
        bMachine,
        bAdd,
        pGuidExtension,
        pGuid,
      );

  int Delete() => ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int GetName(
    Pointer<Utf16> pszName,
    int cchMaxLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
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
          .elementAt(10)
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

  int SetDisplayName(
    Pointer<Utf16> pszName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszName,
          )>()(
        ptr.ref.lpVtbl,
        pszName,
      );

  int GetPath(
    Pointer<Utf16> pszPath,
    int cchMaxLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPath,
            Int32 cchMaxLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPath,
            int cchMaxLength,
          )>()(
        ptr.ref.lpVtbl,
        pszPath,
        cchMaxLength,
      );

  int GetDSPath(
    int dwSection,
    Pointer<Utf16> pszPath,
    int cchMaxPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
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
          .elementAt(14)
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

  int GetRegistryKey(
    int dwSection,
    Pointer<IntPtr> hKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
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

  int GetOptions(
    Pointer<Uint32> dwOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
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

  int SetOptions(
    int dwOptions,
    int dwMask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOptions,
            Uint32 dwMask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOptions,
            int dwMask,
          )>()(
        ptr.ref.lpVtbl,
        dwOptions,
        dwMask,
      );

  int GetType(
    Pointer<Int32> gpoType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
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

  int GetMachineName(
    Pointer<Utf16> pszName,
    int cchMaxLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
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

  int GetPropertySheetPages(
    Pointer<Pointer<IntPtr>> hPages,
    Pointer<Uint32> uPageCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<IntPtr>> hPages,
            Pointer<Uint32> uPageCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<IntPtr>> hPages,
            Pointer<Uint32> uPageCount,
          )>()(
        ptr.ref.lpVtbl,
        hPages,
        uPageCount,
      );
}
