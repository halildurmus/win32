// INetCfgComponent.dart

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
import '../../specialTypes.dart';

/// @nodoc
const IID_INetCfgComponent = '{C0E8AE99-306E-11D1-AACF-00805FC1270E}';

/// {@category Interface}
/// {@category com}
class INetCfgComponent extends IUnknown {
  // vtable begins at 3, is 12 entries long.
  INetCfgComponent(Pointer<COMObject> ptr) : super(ptr);

  int GetDisplayName(
    Pointer<Pointer<Utf16>> ppszwDisplayName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszwDisplayName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszwDisplayName,
          )>()(
        ptr.ref.lpVtbl,
        ppszwDisplayName,
      );

  int SetDisplayName(
    Pointer<Utf16> pszwDisplayName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszwDisplayName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszwDisplayName,
          )>()(
        ptr.ref.lpVtbl,
        pszwDisplayName,
      );

  int GetHelpText(
    Pointer<Pointer<Utf16>> pszwHelpText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pszwHelpText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pszwHelpText,
          )>()(
        ptr.ref.lpVtbl,
        pszwHelpText,
      );

  int GetId(
    Pointer<Pointer<Utf16>> ppszwId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszwId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszwId,
          )>()(
        ptr.ref.lpVtbl,
        ppszwId,
      );

  int GetCharacteristics(
    Pointer<Uint32> pdwCharacteristics,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwCharacteristics,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwCharacteristics,
          )>()(
        ptr.ref.lpVtbl,
        pdwCharacteristics,
      );

  int GetInstanceGuid(
    Pointer<GUID> pGuid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pGuid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pGuid,
          )>()(
        ptr.ref.lpVtbl,
        pGuid,
      );

  int GetPnpDevNodeId(
    Pointer<Pointer<Utf16>> ppszwDevNodeId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszwDevNodeId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszwDevNodeId,
          )>()(
        ptr.ref.lpVtbl,
        ppszwDevNodeId,
      );

  int GetClassGuid(
    Pointer<GUID> pGuid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pGuid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pGuid,
          )>()(
        ptr.ref.lpVtbl,
        pGuid,
      );

  int GetBindName(
    Pointer<Pointer<Utf16>> ppszwBindName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszwBindName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszwBindName,
          )>()(
        ptr.ref.lpVtbl,
        ppszwBindName,
      );

  int GetDeviceStatus(
    Pointer<Uint32> pulStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulStatus,
          )>()(
        ptr.ref.lpVtbl,
        pulStatus,
      );

  int OpenParamKey(
    Pointer<IntPtr> phkey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> phkey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> phkey,
          )>()(
        ptr.ref.lpVtbl,
        phkey,
      );

  int RaisePropertyUi(
    int hwndParent,
    int dwFlags,
    Pointer<COMObject> punkContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndParent,
            Uint32 dwFlags,
            Pointer<COMObject> punkContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndParent,
            int dwFlags,
            Pointer<COMObject> punkContext,
          )>()(
        ptr.ref.lpVtbl,
        hwndParent,
        dwFlags,
        punkContext,
      );
}
