// INameSpaceTreeControlDropHandler.dart

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
import '../../ui/shell/IShellItem.dart';
import '../../ui/shell/IShellItemArray.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_INameSpaceTreeControlDropHandler =
    '{F9C665D6-C2F2-4C19-BF33-8322D7352F51}';

/// {@category Interface}
/// {@category com}
class INameSpaceTreeControlDropHandler extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  INameSpaceTreeControlDropHandler(Pointer<COMObject> ptr) : super(ptr);

  int OnDragEnter(
    Pointer<COMObject> psiOver,
    Pointer<COMObject> psiaData,
    int fOutsideSource,
    int grfKeyState,
    Pointer<Uint32> pdwEffect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psiOver,
            Pointer<COMObject> psiaData,
            Int32 fOutsideSource,
            Uint32 grfKeyState,
            Pointer<Uint32> pdwEffect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psiOver,
            Pointer<COMObject> psiaData,
            int fOutsideSource,
            int grfKeyState,
            Pointer<Uint32> pdwEffect,
          )>()(
        ptr.ref.lpVtbl,
        psiOver,
        psiaData,
        fOutsideSource,
        grfKeyState,
        pdwEffect,
      );

  int OnDragOver(
    Pointer<COMObject> psiOver,
    Pointer<COMObject> psiaData,
    int grfKeyState,
    Pointer<Uint32> pdwEffect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psiOver,
            Pointer<COMObject> psiaData,
            Uint32 grfKeyState,
            Pointer<Uint32> pdwEffect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psiOver,
            Pointer<COMObject> psiaData,
            int grfKeyState,
            Pointer<Uint32> pdwEffect,
          )>()(
        ptr.ref.lpVtbl,
        psiOver,
        psiaData,
        grfKeyState,
        pdwEffect,
      );

  int OnDragPosition(
    Pointer<COMObject> psiOver,
    Pointer<COMObject> psiaData,
    int iNewPosition,
    int iOldPosition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psiOver,
            Pointer<COMObject> psiaData,
            Int32 iNewPosition,
            Int32 iOldPosition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psiOver,
            Pointer<COMObject> psiaData,
            int iNewPosition,
            int iOldPosition,
          )>()(
        ptr.ref.lpVtbl,
        psiOver,
        psiaData,
        iNewPosition,
        iOldPosition,
      );

  int OnDrop(
    Pointer<COMObject> psiOver,
    Pointer<COMObject> psiaData,
    int iPosition,
    int grfKeyState,
    Pointer<Uint32> pdwEffect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psiOver,
            Pointer<COMObject> psiaData,
            Int32 iPosition,
            Uint32 grfKeyState,
            Pointer<Uint32> pdwEffect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psiOver,
            Pointer<COMObject> psiaData,
            int iPosition,
            int grfKeyState,
            Pointer<Uint32> pdwEffect,
          )>()(
        ptr.ref.lpVtbl,
        psiOver,
        psiaData,
        iPosition,
        grfKeyState,
        pdwEffect,
      );

  int OnDropPosition(
    Pointer<COMObject> psiOver,
    Pointer<COMObject> psiaData,
    int iNewPosition,
    int iOldPosition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psiOver,
            Pointer<COMObject> psiaData,
            Int32 iNewPosition,
            Int32 iOldPosition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psiOver,
            Pointer<COMObject> psiaData,
            int iNewPosition,
            int iOldPosition,
          )>()(
        ptr.ref.lpVtbl,
        psiOver,
        psiaData,
        iNewPosition,
        iOldPosition,
      );

  int OnDragLeave(
    Pointer<COMObject> psiOver,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psiOver,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psiOver,
          )>()(
        ptr.ref.lpVtbl,
        psiOver,
      );
}
