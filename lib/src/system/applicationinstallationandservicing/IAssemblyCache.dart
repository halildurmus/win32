// IAssemblyCache.dart

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
import '../../system/applicationinstallationandservicing/structs.g.dart';
import '../../system/applicationinstallationandservicing/IAssemblyCacheItem.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IAssemblyCache = '{E707DCDE-D1CD-11D2-BAB9-00C04F8ECEAE}';

/// {@category Interface}
/// {@category com}
class IAssemblyCache extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IAssemblyCache(Pointer<COMObject> ptr) : super(ptr);

  int UninstallAssembly(
    int dwFlags,
    Pointer<Utf16> pszAssemblyName,
    Pointer<FUSION_INSTALL_REFERENCE> pRefData,
    Pointer<Uint32> pulDisposition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<Utf16> pszAssemblyName,
            Pointer<FUSION_INSTALL_REFERENCE> pRefData,
            Pointer<Uint32> pulDisposition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<Utf16> pszAssemblyName,
            Pointer<FUSION_INSTALL_REFERENCE> pRefData,
            Pointer<Uint32> pulDisposition,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        pszAssemblyName,
        pRefData,
        pulDisposition,
      );

  int QueryAssemblyInfo(
    int dwFlags,
    Pointer<Utf16> pszAssemblyName,
    Pointer<ASSEMBLY_INFO> pAsmInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<Utf16> pszAssemblyName,
            Pointer<ASSEMBLY_INFO> pAsmInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<Utf16> pszAssemblyName,
            Pointer<ASSEMBLY_INFO> pAsmInfo,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        pszAssemblyName,
        pAsmInfo,
      );

  int CreateAssemblyCacheItem(
    int dwFlags,
    Pointer pvReserved,
    Pointer<Pointer<COMObject>> ppAsmItem,
    Pointer<Utf16> pszAssemblyName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer pvReserved,
            Pointer<Pointer<COMObject>> ppAsmItem,
            Pointer<Utf16> pszAssemblyName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer pvReserved,
            Pointer<Pointer<COMObject>> ppAsmItem,
            Pointer<Utf16> pszAssemblyName,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        pvReserved,
        ppAsmItem,
        pszAssemblyName,
      );

  int Reserved(
    Pointer<Pointer<COMObject>> ppUnk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppUnk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppUnk,
          )>()(
        ptr.ref.lpVtbl,
        ppUnk,
      );

  int InstallAssembly(
    int dwFlags,
    Pointer<Utf16> pszManifestFilePath,
    Pointer<FUSION_INSTALL_REFERENCE> pRefData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<Utf16> pszManifestFilePath,
            Pointer<FUSION_INSTALL_REFERENCE> pRefData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<Utf16> pszManifestFilePath,
            Pointer<FUSION_INSTALL_REFERENCE> pRefData,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        pszManifestFilePath,
        pRefData,
      );
}
