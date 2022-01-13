// ITTerminalSupport2.dart

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

import '../../devices/tapi/ITTerminalSupport.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../devices/tapi/IEnumPluggableSuperclassInfo.dart';
import '../../devices/tapi/IEnumPluggableTerminalClassInfo.dart';

/// @nodoc
const IID_ITTerminalSupport2 = '{F3EB39BC-1B1F-4E99-A0C0-56305C4DD591}';

/// {@category Interface}
/// {@category com}
class ITTerminalSupport2 extends ITTerminalSupport {
  // vtable begins at 13, is 4 entries long.
  ITTerminalSupport2(Pointer<COMObject> ptr) : super(ptr);

  VARIANT get PluggableSuperclasses {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(13)
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

  int EnumeratePluggableSuperclasses(
    Pointer<Pointer<COMObject>> ppSuperclassEnumerator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSuperclassEnumerator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSuperclassEnumerator,
          )>()(
        ptr.ref.lpVtbl,
        ppSuperclassEnumerator,
      );

  int get_PluggableTerminalClasses(
    Pointer<Utf16> bstrTerminalSuperclass,
    int lMediaType,
    Pointer<VARIANT> pVariant,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrTerminalSuperclass,
            Int32 lMediaType,
            Pointer<VARIANT> pVariant,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrTerminalSuperclass,
            int lMediaType,
            Pointer<VARIANT> pVariant,
          )>()(
        ptr.ref.lpVtbl,
        bstrTerminalSuperclass,
        lMediaType,
        pVariant,
      );

  int EnumeratePluggableTerminalClasses(
    GUID iidTerminalSuperclass,
    int lMediaType,
    Pointer<Pointer<COMObject>> ppClassEnumerator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID iidTerminalSuperclass,
            Int32 lMediaType,
            Pointer<Pointer<COMObject>> ppClassEnumerator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID iidTerminalSuperclass,
            int lMediaType,
            Pointer<Pointer<COMObject>> ppClassEnumerator,
          )>()(
        ptr.ref.lpVtbl,
        iidTerminalSuperclass,
        lMediaType,
        ppClassEnumerator,
      );
}
