// INetCfgSysPrep.dart

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
const IID_INetCfgSysPrep = '{C0E8AE98-306E-11D1-AACF-00805FC1270E}';

/// {@category Interface}
/// {@category com}
class INetCfgSysPrep extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  INetCfgSysPrep(Pointer<COMObject> ptr) : super(ptr);

  int HrSetupSetFirstDword(
    Pointer<Utf16> pwszSection,
    Pointer<Utf16> pwszKey,
    int dwValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszSection,
            Pointer<Utf16> pwszKey,
            Uint32 dwValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszSection,
            Pointer<Utf16> pwszKey,
            int dwValue,
          )>()(
        ptr.ref.lpVtbl,
        pwszSection,
        pwszKey,
        dwValue,
      );

  int HrSetupSetFirstString(
    Pointer<Utf16> pwszSection,
    Pointer<Utf16> pwszKey,
    Pointer<Utf16> pwszValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszSection,
            Pointer<Utf16> pwszKey,
            Pointer<Utf16> pwszValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszSection,
            Pointer<Utf16> pwszKey,
            Pointer<Utf16> pwszValue,
          )>()(
        ptr.ref.lpVtbl,
        pwszSection,
        pwszKey,
        pwszValue,
      );

  int HrSetupSetFirstStringAsBool(
    Pointer<Utf16> pwszSection,
    Pointer<Utf16> pwszKey,
    int fValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszSection,
            Pointer<Utf16> pwszKey,
            Int32 fValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszSection,
            Pointer<Utf16> pwszKey,
            int fValue,
          )>()(
        ptr.ref.lpVtbl,
        pwszSection,
        pwszKey,
        fValue,
      );

  int HrSetupSetFirstMultiSzField(
    Pointer<Utf16> pwszSection,
    Pointer<Utf16> pwszKey,
    Pointer<Utf16> pmszValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszSection,
            Pointer<Utf16> pwszKey,
            Pointer<Utf16> pmszValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszSection,
            Pointer<Utf16> pwszKey,
            Pointer<Utf16> pmszValue,
          )>()(
        ptr.ref.lpVtbl,
        pwszSection,
        pwszKey,
        pmszValue,
      );
}
