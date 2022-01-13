// ISpeechResourceLoader.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_ISpeechResourceLoader = '{B9AC5783-FCD0-4B21-B119-B4F8DA8FD2C3}';

/// {@category Interface}
/// {@category com}
class ISpeechResourceLoader extends IDispatch {
  // vtable begins at 7, is 3 entries long.
  ISpeechResourceLoader(Pointer<COMObject> ptr) : super(ptr);

  int LoadResource(
    Pointer<Utf16> bstrResourceUri,
    int fAlwaysReload,
    Pointer<Pointer<COMObject>> pStream,
    Pointer<Pointer<Utf16>> pbstrMIMEType,
    Pointer<Int16> pfModified,
    Pointer<Pointer<Utf16>> pbstrRedirectUrl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrResourceUri,
            Int16 fAlwaysReload,
            Pointer<Pointer<COMObject>> pStream,
            Pointer<Pointer<Utf16>> pbstrMIMEType,
            Pointer<Int16> pfModified,
            Pointer<Pointer<Utf16>> pbstrRedirectUrl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrResourceUri,
            int fAlwaysReload,
            Pointer<Pointer<COMObject>> pStream,
            Pointer<Pointer<Utf16>> pbstrMIMEType,
            Pointer<Int16> pfModified,
            Pointer<Pointer<Utf16>> pbstrRedirectUrl,
          )>()(
        ptr.ref.lpVtbl,
        bstrResourceUri,
        fAlwaysReload,
        pStream,
        pbstrMIMEType,
        pfModified,
        pbstrRedirectUrl,
      );

  int GetLocalCopy(
    Pointer<Utf16> bstrResourceUri,
    Pointer<Pointer<Utf16>> pbstrLocalPath,
    Pointer<Pointer<Utf16>> pbstrMIMEType,
    Pointer<Pointer<Utf16>> pbstrRedirectUrl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrResourceUri,
            Pointer<Pointer<Utf16>> pbstrLocalPath,
            Pointer<Pointer<Utf16>> pbstrMIMEType,
            Pointer<Pointer<Utf16>> pbstrRedirectUrl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrResourceUri,
            Pointer<Pointer<Utf16>> pbstrLocalPath,
            Pointer<Pointer<Utf16>> pbstrMIMEType,
            Pointer<Pointer<Utf16>> pbstrRedirectUrl,
          )>()(
        ptr.ref.lpVtbl,
        bstrResourceUri,
        pbstrLocalPath,
        pbstrMIMEType,
        pbstrRedirectUrl,
      );

  int ReleaseLocalCopy(
    Pointer<Utf16> pbstrLocalPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pbstrLocalPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pbstrLocalPath,
          )>()(
        ptr.ref.lpVtbl,
        pbstrLocalPath,
      );
}
