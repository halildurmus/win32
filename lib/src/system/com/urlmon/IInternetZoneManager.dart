// IInternetZoneManager.dart

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

import '../../../system/com/IUnknown.dart';
import '../../../system/com/urlmon/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IInternetZoneManager = '{79EAC9EF-BAF9-11CE-8C82-00AA004BA90B}';

/// {@category Interface}
/// {@category com}
class IInternetZoneManager extends IUnknown {
  // vtable begins at 3, is 12 entries long.
  IInternetZoneManager(Pointer<COMObject> ptr) : super(ptr);

  int GetZoneAttributes(
    int dwZone,
    Pointer<ZONEATTRIBUTES> pZoneAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwZone,
            Pointer<ZONEATTRIBUTES> pZoneAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwZone,
            Pointer<ZONEATTRIBUTES> pZoneAttributes,
          )>()(
        ptr.ref.lpVtbl,
        dwZone,
        pZoneAttributes,
      );

  int SetZoneAttributes(
    int dwZone,
    Pointer<ZONEATTRIBUTES> pZoneAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwZone,
            Pointer<ZONEATTRIBUTES> pZoneAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwZone,
            Pointer<ZONEATTRIBUTES> pZoneAttributes,
          )>()(
        ptr.ref.lpVtbl,
        dwZone,
        pZoneAttributes,
      );

  int GetZoneCustomPolicy(
    int dwZone,
    Pointer<GUID> guidKey,
    Pointer<Pointer<Uint8>> ppPolicy,
    Pointer<Uint32> pcbPolicy,
    int urlZoneReg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwZone,
            Pointer<GUID> guidKey,
            Pointer<Pointer<Uint8>> ppPolicy,
            Pointer<Uint32> pcbPolicy,
            Int32 urlZoneReg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwZone,
            Pointer<GUID> guidKey,
            Pointer<Pointer<Uint8>> ppPolicy,
            Pointer<Uint32> pcbPolicy,
            int urlZoneReg,
          )>()(
        ptr.ref.lpVtbl,
        dwZone,
        guidKey,
        ppPolicy,
        pcbPolicy,
        urlZoneReg,
      );

  int SetZoneCustomPolicy(
    int dwZone,
    Pointer<GUID> guidKey,
    Pointer<Uint8> pPolicy,
    int cbPolicy,
    int urlZoneReg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwZone,
            Pointer<GUID> guidKey,
            Pointer<Uint8> pPolicy,
            Uint32 cbPolicy,
            Int32 urlZoneReg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwZone,
            Pointer<GUID> guidKey,
            Pointer<Uint8> pPolicy,
            int cbPolicy,
            int urlZoneReg,
          )>()(
        ptr.ref.lpVtbl,
        dwZone,
        guidKey,
        pPolicy,
        cbPolicy,
        urlZoneReg,
      );

  int GetZoneActionPolicy(
    int dwZone,
    int dwAction,
    Pointer<Uint8> pPolicy,
    int cbPolicy,
    int urlZoneReg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwZone,
            Uint32 dwAction,
            Pointer<Uint8> pPolicy,
            Uint32 cbPolicy,
            Int32 urlZoneReg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwZone,
            int dwAction,
            Pointer<Uint8> pPolicy,
            int cbPolicy,
            int urlZoneReg,
          )>()(
        ptr.ref.lpVtbl,
        dwZone,
        dwAction,
        pPolicy,
        cbPolicy,
        urlZoneReg,
      );

  int SetZoneActionPolicy(
    int dwZone,
    int dwAction,
    Pointer<Uint8> pPolicy,
    int cbPolicy,
    int urlZoneReg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwZone,
            Uint32 dwAction,
            Pointer<Uint8> pPolicy,
            Uint32 cbPolicy,
            Int32 urlZoneReg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwZone,
            int dwAction,
            Pointer<Uint8> pPolicy,
            int cbPolicy,
            int urlZoneReg,
          )>()(
        ptr.ref.lpVtbl,
        dwZone,
        dwAction,
        pPolicy,
        cbPolicy,
        urlZoneReg,
      );

  int PromptAction(
    int dwAction,
    int hwndParent,
    Pointer<Utf16> pwszUrl,
    Pointer<Utf16> pwszText,
    int dwPromptFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwAction,
            IntPtr hwndParent,
            Pointer<Utf16> pwszUrl,
            Pointer<Utf16> pwszText,
            Uint32 dwPromptFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwAction,
            int hwndParent,
            Pointer<Utf16> pwszUrl,
            Pointer<Utf16> pwszText,
            int dwPromptFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwAction,
        hwndParent,
        pwszUrl,
        pwszText,
        dwPromptFlags,
      );

  int LogAction(
    int dwAction,
    Pointer<Utf16> pwszUrl,
    Pointer<Utf16> pwszText,
    int dwLogFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwAction,
            Pointer<Utf16> pwszUrl,
            Pointer<Utf16> pwszText,
            Uint32 dwLogFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwAction,
            Pointer<Utf16> pwszUrl,
            Pointer<Utf16> pwszText,
            int dwLogFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwAction,
        pwszUrl,
        pwszText,
        dwLogFlags,
      );

  int CreateZoneEnumerator(
    Pointer<Uint32> pdwEnum,
    Pointer<Uint32> pdwCount,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwEnum,
            Pointer<Uint32> pdwCount,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwEnum,
            Pointer<Uint32> pdwCount,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pdwEnum,
        pdwCount,
        dwFlags,
      );

  int GetZoneAt(
    int dwEnum,
    int dwIndex,
    Pointer<Uint32> pdwZone,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwEnum,
            Uint32 dwIndex,
            Pointer<Uint32> pdwZone,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwEnum,
            int dwIndex,
            Pointer<Uint32> pdwZone,
          )>()(
        ptr.ref.lpVtbl,
        dwEnum,
        dwIndex,
        pdwZone,
      );

  int DestroyZoneEnumerator(
    int dwEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwEnum,
          )>()(
        ptr.ref.lpVtbl,
        dwEnum,
      );

  int CopyTemplatePoliciesToZone(
    int dwTemplate,
    int dwZone,
    int dwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwTemplate,
            Uint32 dwZone,
            Uint32 dwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwTemplate,
            int dwZone,
            int dwReserved,
          )>()(
        ptr.ref.lpVtbl,
        dwTemplate,
        dwZone,
        dwReserved,
      );
}
