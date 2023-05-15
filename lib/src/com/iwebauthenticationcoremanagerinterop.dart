// iwebauthenticationcoremanagerinterop.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../structs.g.dart';
import '../utils.dart';
import '../variant.dart';
import '../win32/ole32.g.dart';
import 'iinspectable.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IWebAuthenticationCoreManagerInterop =
    '{f4b8e804-811e-4436-b69c-44cb67b72084}';

/// Provides Win32 apps with access to certain functions of
/// WebAuthenticationCoreManager that are otherwise available only to UWP
/// apps.
///
/// {@category Interface}
/// {@category com}
class IWebAuthenticationCoreManagerInterop extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IWebAuthenticationCoreManagerInterop(super.ptr);

  factory IWebAuthenticationCoreManagerInterop.from(IUnknown interface) =>
      IWebAuthenticationCoreManagerInterop(
          interface.toInterface(IID_IWebAuthenticationCoreManagerInterop));

  int requestTokenForWindowAsync(int appWindow, Pointer<COMObject> request,
          Pointer<GUID> riid, Pointer<Pointer> asyncInfo) =>
      ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              IntPtr appWindow,
                              Pointer<COMObject> request,
                              Pointer<GUID> riid,
                              Pointer<Pointer> asyncInfo)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      int appWindow,
                      Pointer<COMObject> request,
                      Pointer<GUID> riid,
                      Pointer<Pointer> asyncInfo)>()(
          ptr.ref.lpVtbl, appWindow, request, riid, asyncInfo);

  int requestTokenWithWebAccountForWindowAsync(
          int appWindow,
          Pointer<COMObject> request,
          Pointer<COMObject> webAccount,
          Pointer<GUID> riid,
          Pointer<Pointer> asyncInfo) =>
      ptr.ref.vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              IntPtr appWindow,
                              Pointer<COMObject> request,
                              Pointer<COMObject> webAccount,
                              Pointer<GUID> riid,
                              Pointer<Pointer> asyncInfo)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      int appWindow,
                      Pointer<COMObject> request,
                      Pointer<COMObject> webAccount,
                      Pointer<GUID> riid,
                      Pointer<Pointer> asyncInfo)>()(
          ptr.ref.lpVtbl, appWindow, request, webAccount, riid, asyncInfo);
}
