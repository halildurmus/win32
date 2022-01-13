// ITTerminalSupport.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../devices/tapi/IEnumTerminal.dart';
import '../../devices/tapi/IEnumTerminalClass.dart';
import '../../devices/tapi/structs.g.dart';
import '../../devices/tapi/ITTerminal.dart';

/// @nodoc
const IID_ITTerminalSupport = '{B1EFC385-9355-11D0-835C-00AA003CCABD}';

/// {@category Interface}
/// {@category com}
class ITTerminalSupport extends IDispatch {
  // vtable begins at 7, is 6 entries long.
  ITTerminalSupport(Pointer<COMObject> ptr) : super(ptr);

  VARIANT get StaticTerminals {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pVariant,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pVariant,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int EnumerateStaticTerminals(
    Pointer<Pointer<COMObject>> ppTerminalEnumerator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTerminalEnumerator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTerminalEnumerator,
          )>()(
        ptr.ref.lpVtbl,
        ppTerminalEnumerator,
      );

  VARIANT get DynamicTerminalClasses {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pVariant,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pVariant,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int EnumerateDynamicTerminalClasses(
    Pointer<Pointer<COMObject>> ppTerminalClassEnumerator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTerminalClassEnumerator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTerminalClassEnumerator,
          )>()(
        ptr.ref.lpVtbl,
        ppTerminalClassEnumerator,
      );

  int CreateTerminal(
    Pointer<Utf16> pTerminalClass,
    int lMediaType,
    int Direction,
    Pointer<Pointer<COMObject>> ppTerminal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pTerminalClass,
            Int32 lMediaType,
            Int32 Direction,
            Pointer<Pointer<COMObject>> ppTerminal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pTerminalClass,
            int lMediaType,
            int Direction,
            Pointer<Pointer<COMObject>> ppTerminal,
          )>()(
        ptr.ref.lpVtbl,
        pTerminalClass,
        lMediaType,
        Direction,
        ppTerminal,
      );

  int GetDefaultStaticTerminal(
    int lMediaType,
    int Direction,
    Pointer<Pointer<COMObject>> ppTerminal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lMediaType,
            Int32 Direction,
            Pointer<Pointer<COMObject>> ppTerminal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lMediaType,
            int Direction,
            Pointer<Pointer<COMObject>> ppTerminal,
          )>()(
        ptr.ref.lpVtbl,
        lMediaType,
        Direction,
        ppTerminal,
      );
}
