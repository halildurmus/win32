// IShellApp.dart

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
import '../../ui/shell/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IShellApp = '{A3E14960-935F-11D1-B8B8-006008059382}';

/// {@category Interface}
/// {@category com}
class IShellApp extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IShellApp(Pointer<COMObject> ptr) : super(ptr);

  int GetAppInfo(
    Pointer<APPINFODATA> pai,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<APPINFODATA> pai,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<APPINFODATA> pai,
          )>()(
        ptr.ref.lpVtbl,
        pai,
      );

  int GetPossibleActions(
    Pointer<Uint32> pdwActions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwActions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwActions,
          )>()(
        ptr.ref.lpVtbl,
        pdwActions,
      );

  int GetSlowAppInfo(
    Pointer<SLOWAPPINFO> psaid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SLOWAPPINFO> psaid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SLOWAPPINFO> psaid,
          )>()(
        ptr.ref.lpVtbl,
        psaid,
      );

  int GetCachedSlowAppInfo(
    Pointer<SLOWAPPINFO> psaid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SLOWAPPINFO> psaid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SLOWAPPINFO> psaid,
          )>()(
        ptr.ref.lpVtbl,
        psaid,
      );

  int IsInstalled() => ptr.ref.lpVtbl.value
          .elementAt(7)
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
