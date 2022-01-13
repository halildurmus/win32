// IVssWriterComponents.dart

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

import '../../foundation/structs.g.dart';
import '../../storage/vss/IVssComponent.dart';

/// @nodoc
const IID_IVssWriterComponents = 'null';

/// {@category Interface}
/// {@category com}
class IVssWriterComponents {
  // vtable begins at 0, is 3 entries long.
  Pointer<COMObject> ptr;

  IVssWriterComponents(this.ptr);

  int GetComponentCount(
    Pointer<Uint32> pcComponents,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(0)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcComponents,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcComponents,
          )>()(
        ptr.ref.lpVtbl,
        pcComponents,
      );

  int GetWriterInfo(
    Pointer<GUID> pidInstance,
    Pointer<GUID> pidWriter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(1)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pidInstance,
            Pointer<GUID> pidWriter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pidInstance,
            Pointer<GUID> pidWriter,
          )>()(
        ptr.ref.lpVtbl,
        pidInstance,
        pidWriter,
      );

  int GetComponent(
    int iComponent,
    Pointer<Pointer<COMObject>> ppComponent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(2)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iComponent,
            Pointer<Pointer<COMObject>> ppComponent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iComponent,
            Pointer<Pointer<COMObject>> ppComponent,
          )>()(
        ptr.ref.lpVtbl,
        iComponent,
        ppComponent,
      );
}
