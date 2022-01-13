// IWTSProtocolLogonErrorRedirector.dart

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
import '../../system/remotedesktop/structs.g.dart';

/// @nodoc
const IID_IWTSProtocolLogonErrorRedirector =
    '{FD9B61A7-2916-4627-8DEE-4328711AD6CB}';

/// {@category Interface}
/// {@category com}
class IWTSProtocolLogonErrorRedirector extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IWTSProtocolLogonErrorRedirector(Pointer<COMObject> ptr) : super(ptr);

  int OnBeginPainting() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int RedirectStatus(
    Pointer<Utf16> pszMessage,
    Pointer<Int32> pResponse,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszMessage,
            Pointer<Int32> pResponse,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszMessage,
            Pointer<Int32> pResponse,
          )>()(
        ptr.ref.lpVtbl,
        pszMessage,
        pResponse,
      );

  int RedirectMessage(
    Pointer<Utf16> pszCaption,
    Pointer<Utf16> pszMessage,
    int uType,
    Pointer<Int32> pResponse,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszCaption,
            Pointer<Utf16> pszMessage,
            Uint32 uType,
            Pointer<Int32> pResponse,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszCaption,
            Pointer<Utf16> pszMessage,
            int uType,
            Pointer<Int32> pResponse,
          )>()(
        ptr.ref.lpVtbl,
        pszCaption,
        pszMessage,
        uType,
        pResponse,
      );

  int RedirectLogonError(
    int ntsStatus,
    int ntsSubstatus,
    Pointer<Utf16> pszCaption,
    Pointer<Utf16> pszMessage,
    int uType,
    Pointer<Int32> pResponse,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 ntsStatus,
            Int32 ntsSubstatus,
            Pointer<Utf16> pszCaption,
            Pointer<Utf16> pszMessage,
            Uint32 uType,
            Pointer<Int32> pResponse,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ntsStatus,
            int ntsSubstatus,
            Pointer<Utf16> pszCaption,
            Pointer<Utf16> pszMessage,
            int uType,
            Pointer<Int32> pResponse,
          )>()(
        ptr.ref.lpVtbl,
        ntsStatus,
        ntsSubstatus,
        pszCaption,
        pszMessage,
        uType,
        pResponse,
      );
}
