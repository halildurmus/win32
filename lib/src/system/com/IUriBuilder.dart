// IUriBuilder.dart

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
import '../../system/com/IUri.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IUriBuilder = '{4221B2E1-8955-46C0-BD5B-DE9897565DE7}';

/// {@category Interface}
/// {@category com}
class IUriBuilder extends IUnknown {
  // vtable begins at 3, is 23 entries long.
  IUriBuilder(Pointer<COMObject> ptr) : super(ptr);

  int CreateUriSimple(
    int dwAllowEncodingPropertyMask,
    int dwReserved,
    Pointer<Pointer<COMObject>> ppIUri,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwAllowEncodingPropertyMask,
            IntPtr dwReserved,
            Pointer<Pointer<COMObject>> ppIUri,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwAllowEncodingPropertyMask,
            int dwReserved,
            Pointer<Pointer<COMObject>> ppIUri,
          )>()(
        ptr.ref.lpVtbl,
        dwAllowEncodingPropertyMask,
        dwReserved,
        ppIUri,
      );

  int CreateUri(
    int dwCreateFlags,
    int dwAllowEncodingPropertyMask,
    int dwReserved,
    Pointer<Pointer<COMObject>> ppIUri,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwCreateFlags,
            Uint32 dwAllowEncodingPropertyMask,
            IntPtr dwReserved,
            Pointer<Pointer<COMObject>> ppIUri,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwCreateFlags,
            int dwAllowEncodingPropertyMask,
            int dwReserved,
            Pointer<Pointer<COMObject>> ppIUri,
          )>()(
        ptr.ref.lpVtbl,
        dwCreateFlags,
        dwAllowEncodingPropertyMask,
        dwReserved,
        ppIUri,
      );

  int CreateUriWithFlags(
    int dwCreateFlags,
    int dwUriBuilderFlags,
    int dwAllowEncodingPropertyMask,
    int dwReserved,
    Pointer<Pointer<COMObject>> ppIUri,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwCreateFlags,
            Uint32 dwUriBuilderFlags,
            Uint32 dwAllowEncodingPropertyMask,
            IntPtr dwReserved,
            Pointer<Pointer<COMObject>> ppIUri,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwCreateFlags,
            int dwUriBuilderFlags,
            int dwAllowEncodingPropertyMask,
            int dwReserved,
            Pointer<Pointer<COMObject>> ppIUri,
          )>()(
        ptr.ref.lpVtbl,
        dwCreateFlags,
        dwUriBuilderFlags,
        dwAllowEncodingPropertyMask,
        dwReserved,
        ppIUri,
      );

  int GetIUri(
    Pointer<Pointer<COMObject>> ppIUri,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIUri,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIUri,
          )>()(
        ptr.ref.lpVtbl,
        ppIUri,
      );

  int SetIUri(
    Pointer<COMObject> pIUri,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIUri,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIUri,
          )>()(
        ptr.ref.lpVtbl,
        pIUri,
      );

  int GetFragment(
    Pointer<Uint32> pcchFragment,
    Pointer<Pointer<Utf16>> ppwzFragment,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcchFragment,
            Pointer<Pointer<Utf16>> ppwzFragment,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcchFragment,
            Pointer<Pointer<Utf16>> ppwzFragment,
          )>()(
        ptr.ref.lpVtbl,
        pcchFragment,
        ppwzFragment,
      );

  int GetHost(
    Pointer<Uint32> pcchHost,
    Pointer<Pointer<Utf16>> ppwzHost,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcchHost,
            Pointer<Pointer<Utf16>> ppwzHost,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcchHost,
            Pointer<Pointer<Utf16>> ppwzHost,
          )>()(
        ptr.ref.lpVtbl,
        pcchHost,
        ppwzHost,
      );

  int GetPassword(
    Pointer<Uint32> pcchPassword,
    Pointer<Pointer<Utf16>> ppwzPassword,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcchPassword,
            Pointer<Pointer<Utf16>> ppwzPassword,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcchPassword,
            Pointer<Pointer<Utf16>> ppwzPassword,
          )>()(
        ptr.ref.lpVtbl,
        pcchPassword,
        ppwzPassword,
      );

  int GetPath(
    Pointer<Uint32> pcchPath,
    Pointer<Pointer<Utf16>> ppwzPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcchPath,
            Pointer<Pointer<Utf16>> ppwzPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcchPath,
            Pointer<Pointer<Utf16>> ppwzPath,
          )>()(
        ptr.ref.lpVtbl,
        pcchPath,
        ppwzPath,
      );

  int GetPort(
    Pointer<Int32> pfHasPort,
    Pointer<Uint32> pdwPort,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfHasPort,
            Pointer<Uint32> pdwPort,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfHasPort,
            Pointer<Uint32> pdwPort,
          )>()(
        ptr.ref.lpVtbl,
        pfHasPort,
        pdwPort,
      );

  int GetQuery(
    Pointer<Uint32> pcchQuery,
    Pointer<Pointer<Utf16>> ppwzQuery,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcchQuery,
            Pointer<Pointer<Utf16>> ppwzQuery,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcchQuery,
            Pointer<Pointer<Utf16>> ppwzQuery,
          )>()(
        ptr.ref.lpVtbl,
        pcchQuery,
        ppwzQuery,
      );

  int GetSchemeName(
    Pointer<Uint32> pcchSchemeName,
    Pointer<Pointer<Utf16>> ppwzSchemeName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcchSchemeName,
            Pointer<Pointer<Utf16>> ppwzSchemeName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcchSchemeName,
            Pointer<Pointer<Utf16>> ppwzSchemeName,
          )>()(
        ptr.ref.lpVtbl,
        pcchSchemeName,
        ppwzSchemeName,
      );

  int GetUserName(
    Pointer<Uint32> pcchUserName,
    Pointer<Pointer<Utf16>> ppwzUserName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcchUserName,
            Pointer<Pointer<Utf16>> ppwzUserName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcchUserName,
            Pointer<Pointer<Utf16>> ppwzUserName,
          )>()(
        ptr.ref.lpVtbl,
        pcchUserName,
        ppwzUserName,
      );

  int SetFragment(
    Pointer<Utf16> pwzNewValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwzNewValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwzNewValue,
          )>()(
        ptr.ref.lpVtbl,
        pwzNewValue,
      );

  int SetHost(
    Pointer<Utf16> pwzNewValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwzNewValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwzNewValue,
          )>()(
        ptr.ref.lpVtbl,
        pwzNewValue,
      );

  int SetPassword(
    Pointer<Utf16> pwzNewValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwzNewValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwzNewValue,
          )>()(
        ptr.ref.lpVtbl,
        pwzNewValue,
      );

  int SetPath(
    Pointer<Utf16> pwzNewValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwzNewValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwzNewValue,
          )>()(
        ptr.ref.lpVtbl,
        pwzNewValue,
      );

  int SetPort(
    int fHasPort,
    int dwNewValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fHasPort,
            Uint32 dwNewValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fHasPort,
            int dwNewValue,
          )>()(
        ptr.ref.lpVtbl,
        fHasPort,
        dwNewValue,
      );

  int SetQuery(
    Pointer<Utf16> pwzNewValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwzNewValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwzNewValue,
          )>()(
        ptr.ref.lpVtbl,
        pwzNewValue,
      );

  int SetSchemeName(
    Pointer<Utf16> pwzNewValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwzNewValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwzNewValue,
          )>()(
        ptr.ref.lpVtbl,
        pwzNewValue,
      );

  int SetUserName(
    Pointer<Utf16> pwzNewValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwzNewValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwzNewValue,
          )>()(
        ptr.ref.lpVtbl,
        pwzNewValue,
      );

  int RemoveProperties(
    int dwPropertyMask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwPropertyMask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwPropertyMask,
          )>()(
        ptr.ref.lpVtbl,
        dwPropertyMask,
      );

  int HasBeenModified(
    Pointer<Int32> pfModified,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfModified,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfModified,
          )>()(
        ptr.ref.lpVtbl,
        pfModified,
      );
}
