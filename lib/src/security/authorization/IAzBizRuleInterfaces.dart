// IAzBizRuleInterfaces.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IAzBizRuleInterfaces = '{E94128C7-E9DA-44CC-B0BD-53036F3AAB3D}';

/// {@category Interface}
/// {@category com}
class IAzBizRuleInterfaces extends IDispatch {
  // vtable begins at 7, is 6 entries long.
  IAzBizRuleInterfaces(Pointer<COMObject> ptr) : super(ptr);

  int AddInterface(
    Pointer<Utf16> bstrInterfaceName,
    int lInterfaceFlag,
    VARIANT varInterface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrInterfaceName,
            Int32 lInterfaceFlag,
            VARIANT varInterface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrInterfaceName,
            int lInterfaceFlag,
            VARIANT varInterface,
          )>()(
        ptr.ref.lpVtbl,
        bstrInterfaceName,
        lInterfaceFlag,
        varInterface,
      );

  int AddInterfaces(
    VARIANT varInterfaceNames,
    VARIANT varInterfaceFlags,
    VARIANT varInterfaces,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT varInterfaceNames,
            VARIANT varInterfaceFlags,
            VARIANT varInterfaces,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT varInterfaceNames,
            VARIANT varInterfaceFlags,
            VARIANT varInterfaces,
          )>()(
        ptr.ref.lpVtbl,
        varInterfaceNames,
        varInterfaceFlags,
        varInterfaces,
      );

  int GetInterfaceValue(
    Pointer<Utf16> bstrInterfaceName,
    Pointer<Int32> lInterfaceFlag,
    Pointer<VARIANT> varInterface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrInterfaceName,
            Pointer<Int32> lInterfaceFlag,
            Pointer<VARIANT> varInterface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrInterfaceName,
            Pointer<Int32> lInterfaceFlag,
            Pointer<VARIANT> varInterface,
          )>()(
        ptr.ref.lpVtbl,
        bstrInterfaceName,
        lInterfaceFlag,
        varInterface,
      );

  int Remove(
    Pointer<Utf16> bstrInterfaceName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrInterfaceName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrInterfaceName,
          )>()(
        ptr.ref.lpVtbl,
        bstrInterfaceName,
      );

  int RemoveAll() => ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int get Count {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> plCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> plCount,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
