// IShellDispatch2.dart

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

import '../../ui/shell/IShellDispatch.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IShellDispatch2 = '{A4C6892C-3BA9-11D2-9DEA-00C04FB16162}';

/// {@category Interface}
/// {@category com}
class IShellDispatch2 extends IShellDispatch {
  // vtable begins at 30, is 9 entries long.
  IShellDispatch2(Pointer<COMObject> ptr) : super(ptr);

  int IsRestricted(
    Pointer<Utf16> Group,
    Pointer<Utf16> Restriction,
    Pointer<Int32> plRestrictValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Group,
            Pointer<Utf16> Restriction,
            Pointer<Int32> plRestrictValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Group,
            Pointer<Utf16> Restriction,
            Pointer<Int32> plRestrictValue,
          )>()(
        ptr.ref.lpVtbl,
        Group,
        Restriction,
        plRestrictValue,
      );

  int ShellExecute(
    Pointer<Utf16> File,
    VARIANT vArgs,
    VARIANT vDir,
    VARIANT vOperation,
    VARIANT vShow,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> File,
            VARIANT vArgs,
            VARIANT vDir,
            VARIANT vOperation,
            VARIANT vShow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> File,
            VARIANT vArgs,
            VARIANT vDir,
            VARIANT vOperation,
            VARIANT vShow,
          )>()(
        ptr.ref.lpVtbl,
        File,
        vArgs,
        vDir,
        vOperation,
        vShow,
      );

  int FindPrinter(
    Pointer<Utf16> name,
    Pointer<Utf16> location,
    Pointer<Utf16> model,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> name,
            Pointer<Utf16> location,
            Pointer<Utf16> model,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> name,
            Pointer<Utf16> location,
            Pointer<Utf16> model,
          )>()(
        ptr.ref.lpVtbl,
        name,
        location,
        model,
      );

  int GetSystemInformation(
    Pointer<Utf16> name,
    Pointer<VARIANT> pv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> name,
            Pointer<VARIANT> pv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> name,
            Pointer<VARIANT> pv,
          )>()(
        ptr.ref.lpVtbl,
        name,
        pv,
      );

  int ServiceStart(
    Pointer<Utf16> ServiceName,
    VARIANT Persistent,
    Pointer<VARIANT> pSuccess,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> ServiceName,
            VARIANT Persistent,
            Pointer<VARIANT> pSuccess,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> ServiceName,
            VARIANT Persistent,
            Pointer<VARIANT> pSuccess,
          )>()(
        ptr.ref.lpVtbl,
        ServiceName,
        Persistent,
        pSuccess,
      );

  int ServiceStop(
    Pointer<Utf16> ServiceName,
    VARIANT Persistent,
    Pointer<VARIANT> pSuccess,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> ServiceName,
            VARIANT Persistent,
            Pointer<VARIANT> pSuccess,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> ServiceName,
            VARIANT Persistent,
            Pointer<VARIANT> pSuccess,
          )>()(
        ptr.ref.lpVtbl,
        ServiceName,
        Persistent,
        pSuccess,
      );

  int IsServiceRunning(
    Pointer<Utf16> ServiceName,
    Pointer<VARIANT> pRunning,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> ServiceName,
            Pointer<VARIANT> pRunning,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> ServiceName,
            Pointer<VARIANT> pRunning,
          )>()(
        ptr.ref.lpVtbl,
        ServiceName,
        pRunning,
      );

  int CanStartStopService(
    Pointer<Utf16> ServiceName,
    Pointer<VARIANT> pCanStartStop,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> ServiceName,
            Pointer<VARIANT> pCanStartStop,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> ServiceName,
            Pointer<VARIANT> pCanStartStop,
          )>()(
        ptr.ref.lpVtbl,
        ServiceName,
        pCanStartStop,
      );

  int ShowBrowserBar(
    Pointer<Utf16> bstrClsid,
    VARIANT bShow,
    Pointer<VARIANT> pSuccess,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrClsid,
            VARIANT bShow,
            Pointer<VARIANT> pSuccess,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrClsid,
            VARIANT bShow,
            Pointer<VARIANT> pSuccess,
          )>()(
        ptr.ref.lpVtbl,
        bstrClsid,
        bShow,
        pSuccess,
      );
}
