// IAttributeGet.dart

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
const IID_IAttributeGet = '{52DBD1EC-E48F-4528-9232-F442A68F0AE1}';

/// {@category Interface}
/// {@category com}
class IAttributeGet extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IAttributeGet(Pointer<COMObject> ptr) : super(ptr);

  int GetCount(
    Pointer<Int32> plCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plCount,
          )>()(
        ptr.ref.lpVtbl,
        plCount,
      );

  int GetAttribIndexed(
    int lIndex,
    Pointer<GUID> pguidAttribute,
    Pointer<Uint8> pbAttribute,
    Pointer<Uint32> pdwAttributeLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lIndex,
            Pointer<GUID> pguidAttribute,
            Pointer<Uint8> pbAttribute,
            Pointer<Uint32> pdwAttributeLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lIndex,
            Pointer<GUID> pguidAttribute,
            Pointer<Uint8> pbAttribute,
            Pointer<Uint32> pdwAttributeLength,
          )>()(
        ptr.ref.lpVtbl,
        lIndex,
        pguidAttribute,
        pbAttribute,
        pdwAttributeLength,
      );

  int GetAttrib(
    GUID guidAttribute,
    Pointer<Uint8> pbAttribute,
    Pointer<Uint32> pdwAttributeLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID guidAttribute,
            Pointer<Uint8> pbAttribute,
            Pointer<Uint32> pdwAttributeLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID guidAttribute,
            Pointer<Uint8> pbAttribute,
            Pointer<Uint32> pdwAttributeLength,
          )>()(
        ptr.ref.lpVtbl,
        guidAttribute,
        pbAttribute,
        pdwAttributeLength,
      );
}
