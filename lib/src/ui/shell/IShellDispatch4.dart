// IShellDispatch4.dart

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

import '../../ui/shell/IShellDispatch3.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IShellDispatch4 = '{EFD84B2D-4BCF-4298-BE25-EB542A59FBDA}';

/// {@category Interface}
/// {@category com}
class IShellDispatch4 extends IShellDispatch3 {
  // vtable begins at 40, is 4 entries long.
  IShellDispatch4(Pointer<COMObject> ptr) : super(ptr);

  int WindowsSecurity() => ptr.ref.lpVtbl.value
          .elementAt(40)
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

  int ToggleDesktop() => ptr.ref.lpVtbl.value
          .elementAt(41)
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

  int ExplorerPolicy(
    Pointer<Utf16> bstrPolicyName,
    Pointer<VARIANT> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrPolicyName,
            Pointer<VARIANT> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrPolicyName,
            Pointer<VARIANT> pValue,
          )>()(
        ptr.ref.lpVtbl,
        bstrPolicyName,
        pValue,
      );

  int GetSetting(
    int lSetting,
    Pointer<Int16> pResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lSetting,
            Pointer<Int16> pResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lSetting,
            Pointer<Int16> pResult,
          )>()(
        ptr.ref.lpVtbl,
        lSetting,
        pResult,
      );
}
