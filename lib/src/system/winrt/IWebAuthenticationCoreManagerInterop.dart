// IWebAuthenticationCoreManagerInterop.dart

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

import '../../system/winrt/IInspectable.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWebAuthenticationCoreManagerInterop =
    '{F4B8E804-811E-4436-B69C-44CB67B72084}';

/// {@category Interface}
/// {@category com}
class IWebAuthenticationCoreManagerInterop extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IWebAuthenticationCoreManagerInterop(Pointer<COMObject> ptr) : super(ptr);

  int RequestTokenForWindowAsync(
    int appWindow,
    Pointer<COMObject> request,
    Pointer<GUID> riid,
    Pointer<Pointer> asyncInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr appWindow,
            Pointer<COMObject> request,
            Pointer<GUID> riid,
            Pointer<Pointer> asyncInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int appWindow,
            Pointer<COMObject> request,
            Pointer<GUID> riid,
            Pointer<Pointer> asyncInfo,
          )>()(
        ptr.ref.lpVtbl,
        appWindow,
        request,
        riid,
        asyncInfo,
      );

  int RequestTokenWithWebAccountForWindowAsync(
    int appWindow,
    Pointer<COMObject> request,
    Pointer<COMObject> webAccount,
    Pointer<GUID> riid,
    Pointer<Pointer> asyncInfo,
  ) =>
      ptr.ref.lpVtbl.value
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
            Pointer<Pointer> asyncInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int appWindow,
            Pointer<COMObject> request,
            Pointer<COMObject> webAccount,
            Pointer<GUID> riid,
            Pointer<Pointer> asyncInfo,
          )>()(
        ptr.ref.lpVtbl,
        appWindow,
        request,
        webAccount,
        riid,
        asyncInfo,
      );
}
