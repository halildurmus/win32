// IShellIconOverlayManager.dart

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
const IID_IShellIconOverlayManager = '{F10B5E34-DD3B-42A7-AA7D-2F4EC54BB09B}';

/// {@category Interface}
/// {@category com}
class IShellIconOverlayManager extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IShellIconOverlayManager(Pointer<COMObject> ptr) : super(ptr);

  int GetFileOverlayInfo(
    Pointer<Utf16> pwszPath,
    int dwAttrib,
    Pointer<Int32> pIndex,
    int dwflags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszPath,
            Uint32 dwAttrib,
            Pointer<Int32> pIndex,
            Uint32 dwflags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszPath,
            int dwAttrib,
            Pointer<Int32> pIndex,
            int dwflags,
          )>()(
        ptr.ref.lpVtbl,
        pwszPath,
        dwAttrib,
        pIndex,
        dwflags,
      );

  int GetReservedOverlayInfo(
    Pointer<Utf16> pwszPath,
    int dwAttrib,
    Pointer<Int32> pIndex,
    int dwflags,
    int iReservedID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszPath,
            Uint32 dwAttrib,
            Pointer<Int32> pIndex,
            Uint32 dwflags,
            Int32 iReservedID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszPath,
            int dwAttrib,
            Pointer<Int32> pIndex,
            int dwflags,
            int iReservedID,
          )>()(
        ptr.ref.lpVtbl,
        pwszPath,
        dwAttrib,
        pIndex,
        dwflags,
        iReservedID,
      );

  int RefreshOverlayImages(
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
      );

  int LoadNonloadedOverlayIdentifiers() => ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int OverlayIndexFromImageIndex(
    int iImage,
    Pointer<Int32> piIndex,
    int fAdd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iImage,
            Pointer<Int32> piIndex,
            Int32 fAdd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iImage,
            Pointer<Int32> piIndex,
            int fAdd,
          )>()(
        ptr.ref.lpVtbl,
        iImage,
        piIndex,
        fAdd,
      );
}
