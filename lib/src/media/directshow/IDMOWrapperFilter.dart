// IDMOWrapperFilter.dart

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
const IID_IDMOWrapperFilter = '{52D6F586-9F0F-4824-8FC8-E32CA04930C2}';

/// {@category Interface}
/// {@category com}
class IDMOWrapperFilter extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDMOWrapperFilter(Pointer<COMObject> ptr) : super(ptr);

  int Init(
    Pointer<GUID> clsidDMO,
    Pointer<GUID> catDMO,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> clsidDMO,
            Pointer<GUID> catDMO,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> clsidDMO,
            Pointer<GUID> catDMO,
          )>()(
        ptr.ref.lpVtbl,
        clsidDMO,
        catDMO,
      );
}
