// IShellUIHelper7.dart

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

import '../../ui/shell/IShellUIHelper6.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IShellUIHelper7 = '{60E567C8-9573-4AB2-A264-637C6C161CB1}';

/// {@category Interface}
/// {@category com}
class IShellUIHelper7 extends IShellUIHelper6 {
  // vtable begins at 88, is 9 entries long.
  IShellUIHelper7(Pointer<COMObject> ptr) : super(ptr);

  int SetExperimentalFlag(
    Pointer<Utf16> bstrFlagString,
    int vfFlag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(88)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrFlagString,
            Int16 vfFlag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrFlagString,
            int vfFlag,
          )>()(
        ptr.ref.lpVtbl,
        bstrFlagString,
        vfFlag,
      );

  int GetExperimentalFlag(
    Pointer<Utf16> bstrFlagString,
    Pointer<Int16> vfFlag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(89)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrFlagString,
            Pointer<Int16> vfFlag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrFlagString,
            Pointer<Int16> vfFlag,
          )>()(
        ptr.ref.lpVtbl,
        bstrFlagString,
        vfFlag,
      );

  int SetExperimentalValue(
    Pointer<Utf16> bstrValueString,
    int dwValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(90)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrValueString,
            Uint32 dwValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrValueString,
            int dwValue,
          )>()(
        ptr.ref.lpVtbl,
        bstrValueString,
        dwValue,
      );

  int GetExperimentalValue(
    Pointer<Utf16> bstrValueString,
    Pointer<Uint32> pdwValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(91)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrValueString,
            Pointer<Uint32> pdwValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrValueString,
            Pointer<Uint32> pdwValue,
          )>()(
        ptr.ref.lpVtbl,
        bstrValueString,
        pdwValue,
      );

  int ResetAllExperimentalFlagsAndValues() => ptr.ref.lpVtbl.value
          .elementAt(92)
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

  int GetNeedIEAutoLaunchFlag(
    Pointer<Utf16> bstrUrl,
    Pointer<Int16> flag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(93)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrUrl,
            Pointer<Int16> flag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrUrl,
            Pointer<Int16> flag,
          )>()(
        ptr.ref.lpVtbl,
        bstrUrl,
        flag,
      );

  int SetNeedIEAutoLaunchFlag(
    Pointer<Utf16> bstrUrl,
    int flag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(94)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrUrl,
            Int16 flag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrUrl,
            int flag,
          )>()(
        ptr.ref.lpVtbl,
        bstrUrl,
        flag,
      );

  int HasNeedIEAutoLaunchFlag(
    Pointer<Utf16> bstrUrl,
    Pointer<Int16> exists,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(95)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrUrl,
            Pointer<Int16> exists,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrUrl,
            Pointer<Int16> exists,
          )>()(
        ptr.ref.lpVtbl,
        bstrUrl,
        exists,
      );

  int LaunchIE(
    Pointer<Utf16> bstrUrl,
    int automated,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(96)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrUrl,
            Int16 automated,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrUrl,
            int automated,
          )>()(
        ptr.ref.lpVtbl,
        bstrUrl,
        automated,
      );
}
