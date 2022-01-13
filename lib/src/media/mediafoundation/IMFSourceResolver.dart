// IMFSourceResolver.dart

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
import '../../ui/shell/propertiessystem/IPropertyStore.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../media/mediafoundation/IMFByteStream.dart';
import '../../media/mediafoundation/IMFAsyncCallback.dart';
import '../../media/mediafoundation/IMFAsyncResult.dart';

/// @nodoc
const IID_IMFSourceResolver = '{FBE5A32D-A497-4B61-BB85-97B1A848A6E3}';

/// {@category Interface}
/// {@category com}
class IMFSourceResolver extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IMFSourceResolver(Pointer<COMObject> ptr) : super(ptr);

  int CreateObjectFromURL(
    Pointer<Utf16> pwszURL,
    int dwFlags,
    Pointer<COMObject> pProps,
    Pointer<Int32> pObjectType,
    Pointer<Pointer<COMObject>> ppObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszURL,
            Uint32 dwFlags,
            Pointer<COMObject> pProps,
            Pointer<Int32> pObjectType,
            Pointer<Pointer<COMObject>> ppObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszURL,
            int dwFlags,
            Pointer<COMObject> pProps,
            Pointer<Int32> pObjectType,
            Pointer<Pointer<COMObject>> ppObject,
          )>()(
        ptr.ref.lpVtbl,
        pwszURL,
        dwFlags,
        pProps,
        pObjectType,
        ppObject,
      );

  int CreateObjectFromByteStream(
    Pointer<COMObject> pByteStream,
    Pointer<Utf16> pwszURL,
    int dwFlags,
    Pointer<COMObject> pProps,
    Pointer<Int32> pObjectType,
    Pointer<Pointer<COMObject>> ppObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pByteStream,
            Pointer<Utf16> pwszURL,
            Uint32 dwFlags,
            Pointer<COMObject> pProps,
            Pointer<Int32> pObjectType,
            Pointer<Pointer<COMObject>> ppObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pByteStream,
            Pointer<Utf16> pwszURL,
            int dwFlags,
            Pointer<COMObject> pProps,
            Pointer<Int32> pObjectType,
            Pointer<Pointer<COMObject>> ppObject,
          )>()(
        ptr.ref.lpVtbl,
        pByteStream,
        pwszURL,
        dwFlags,
        pProps,
        pObjectType,
        ppObject,
      );

  int BeginCreateObjectFromURL(
    Pointer<Utf16> pwszURL,
    int dwFlags,
    Pointer<COMObject> pProps,
    Pointer<Pointer<COMObject>> ppIUnknownCancelCookie,
    Pointer<COMObject> pCallback,
    Pointer<COMObject> punkState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszURL,
            Uint32 dwFlags,
            Pointer<COMObject> pProps,
            Pointer<Pointer<COMObject>> ppIUnknownCancelCookie,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> punkState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszURL,
            int dwFlags,
            Pointer<COMObject> pProps,
            Pointer<Pointer<COMObject>> ppIUnknownCancelCookie,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> punkState,
          )>()(
        ptr.ref.lpVtbl,
        pwszURL,
        dwFlags,
        pProps,
        ppIUnknownCancelCookie,
        pCallback,
        punkState,
      );

  int EndCreateObjectFromURL(
    Pointer<COMObject> pResult,
    Pointer<Int32> pObjectType,
    Pointer<Pointer<COMObject>> ppObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResult,
            Pointer<Int32> pObjectType,
            Pointer<Pointer<COMObject>> ppObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResult,
            Pointer<Int32> pObjectType,
            Pointer<Pointer<COMObject>> ppObject,
          )>()(
        ptr.ref.lpVtbl,
        pResult,
        pObjectType,
        ppObject,
      );

  int BeginCreateObjectFromByteStream(
    Pointer<COMObject> pByteStream,
    Pointer<Utf16> pwszURL,
    int dwFlags,
    Pointer<COMObject> pProps,
    Pointer<Pointer<COMObject>> ppIUnknownCancelCookie,
    Pointer<COMObject> pCallback,
    Pointer<COMObject> punkState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pByteStream,
            Pointer<Utf16> pwszURL,
            Uint32 dwFlags,
            Pointer<COMObject> pProps,
            Pointer<Pointer<COMObject>> ppIUnknownCancelCookie,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> punkState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pByteStream,
            Pointer<Utf16> pwszURL,
            int dwFlags,
            Pointer<COMObject> pProps,
            Pointer<Pointer<COMObject>> ppIUnknownCancelCookie,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> punkState,
          )>()(
        ptr.ref.lpVtbl,
        pByteStream,
        pwszURL,
        dwFlags,
        pProps,
        ppIUnknownCancelCookie,
        pCallback,
        punkState,
      );

  int EndCreateObjectFromByteStream(
    Pointer<COMObject> pResult,
    Pointer<Int32> pObjectType,
    Pointer<Pointer<COMObject>> ppObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResult,
            Pointer<Int32> pObjectType,
            Pointer<Pointer<COMObject>> ppObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResult,
            Pointer<Int32> pObjectType,
            Pointer<Pointer<COMObject>> ppObject,
          )>()(
        ptr.ref.lpVtbl,
        pResult,
        pObjectType,
        ppObject,
      );

  int CancelObjectCreation(
    Pointer<COMObject> pIUnknownCancelCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIUnknownCancelCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIUnknownCancelCookie,
          )>()(
        ptr.ref.lpVtbl,
        pIUnknownCancelCookie,
      );
}
