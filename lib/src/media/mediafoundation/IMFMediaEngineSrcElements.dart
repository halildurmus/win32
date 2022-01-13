// IMFMediaEngineSrcElements.dart

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

/// @nodoc
const IID_IMFMediaEngineSrcElements = '{7A5E5354-B114-4C72-B991-3131D75032EA}';

/// {@category Interface}
/// {@category com}
class IMFMediaEngineSrcElements extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IMFMediaEngineSrcElements(Pointer<COMObject> ptr) : super(ptr);

  int GetLength() => ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetURL(
    int index,
    Pointer<Pointer<Utf16>> pURL,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<Pointer<Utf16>> pURL,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<Pointer<Utf16>> pURL,
          )>()(
        ptr.ref.lpVtbl,
        index,
        pURL,
      );

  int GetType(
    int index,
    Pointer<Pointer<Utf16>> pType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<Pointer<Utf16>> pType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<Pointer<Utf16>> pType,
          )>()(
        ptr.ref.lpVtbl,
        index,
        pType,
      );

  int GetMedia(
    int index,
    Pointer<Pointer<Utf16>> pMedia,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<Pointer<Utf16>> pMedia,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<Pointer<Utf16>> pMedia,
          )>()(
        ptr.ref.lpVtbl,
        index,
        pMedia,
      );

  int AddElement(
    Pointer<Utf16> pURL,
    Pointer<Utf16> pType,
    Pointer<Utf16> pMedia,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pURL,
            Pointer<Utf16> pType,
            Pointer<Utf16> pMedia,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pURL,
            Pointer<Utf16> pType,
            Pointer<Utf16> pMedia,
          )>()(
        ptr.ref.lpVtbl,
        pURL,
        pType,
        pMedia,
      );

  int RemoveAllElements() => ptr.ref.lpVtbl.value
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
}
