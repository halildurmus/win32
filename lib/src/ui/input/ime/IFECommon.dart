// IFECommon.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';
import '../../../ui/input/ime/structs.g.dart';

/// @nodoc
const IID_IFECommon = '{019F7151-E6DB-11D0-83C3-00C04FDDB82E}';

/// {@category Interface}
/// {@category com}
class IFECommon extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IFECommon(Pointer<COMObject> ptr) : super(ptr);

  int IsDefaultIME(
    Pointer<Utf8> szName,
    int cszName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> szName,
            Int32 cszName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> szName,
            int cszName,
          )>()(
        ptr.ref.lpVtbl,
        szName,
        cszName,
      );

  int SetDefaultIME() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int InvokeWordRegDialog(
    Pointer<IMEDLG> pimedlg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IMEDLG> pimedlg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IMEDLG> pimedlg,
          )>()(
        ptr.ref.lpVtbl,
        pimedlg,
      );

  int InvokeDictToolDialog(
    Pointer<IMEDLG> pimedlg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IMEDLG> pimedlg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IMEDLG> pimedlg,
          )>()(
        ptr.ref.lpVtbl,
        pimedlg,
      );
}
