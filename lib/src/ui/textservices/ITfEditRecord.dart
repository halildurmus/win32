// ITfEditRecord.dart

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
import '../../ui/textservices/structs.g.dart';
import '../../ui/textservices/IEnumTfRanges.dart';

/// @nodoc
const IID_ITfEditRecord = '{42D4D099-7C1A-4A89-B836-6C6F22160DF0}';

/// {@category Interface}
/// {@category com}
class ITfEditRecord extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ITfEditRecord(Pointer<COMObject> ptr) : super(ptr);

  int GetSelectionStatus(
    Pointer<Int32> pfChanged,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfChanged,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfChanged,
          )>()(
        ptr.ref.lpVtbl,
        pfChanged,
      );

  int GetTextAndPropertyUpdates(
    int dwFlags,
    Pointer<Pointer<GUID>> prgProperties,
    int cProperties,
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<Pointer<GUID>> prgProperties,
            Uint32 cProperties,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<Pointer<GUID>> prgProperties,
            int cProperties,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        prgProperties,
        cProperties,
        ppEnum,
      );
}
