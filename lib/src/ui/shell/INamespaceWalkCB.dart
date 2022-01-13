// INamespaceWalkCB.dart

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
import '../../ui/shell/IShellFolder.dart';
import '../../ui/shell/common/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_INamespaceWalkCB = '{D92995F8-CF5E-4A76-BF59-EAD39EA2B97E}';

/// {@category Interface}
/// {@category com}
class INamespaceWalkCB extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  INamespaceWalkCB(Pointer<COMObject> ptr) : super(ptr);

  int FoundItem(
    Pointer<COMObject> psf,
    Pointer<ITEMIDLIST> pidl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psf,
            Pointer<ITEMIDLIST> pidl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psf,
            Pointer<ITEMIDLIST> pidl,
          )>()(
        ptr.ref.lpVtbl,
        psf,
        pidl,
      );

  int EnterFolder(
    Pointer<COMObject> psf,
    Pointer<ITEMIDLIST> pidl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psf,
            Pointer<ITEMIDLIST> pidl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psf,
            Pointer<ITEMIDLIST> pidl,
          )>()(
        ptr.ref.lpVtbl,
        psf,
        pidl,
      );

  int LeaveFolder(
    Pointer<COMObject> psf,
    Pointer<ITEMIDLIST> pidl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psf,
            Pointer<ITEMIDLIST> pidl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psf,
            Pointer<ITEMIDLIST> pidl,
          )>()(
        ptr.ref.lpVtbl,
        psf,
        pidl,
      );

  int InitializeProgressDialog(
    Pointer<Pointer<Utf16>> ppszTitle,
    Pointer<Pointer<Utf16>> ppszCancel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszTitle,
            Pointer<Pointer<Utf16>> ppszCancel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszTitle,
            Pointer<Pointer<Utf16>> ppszCancel,
          )>()(
        ptr.ref.lpVtbl,
        ppszTitle,
        ppszCancel,
      );
}
