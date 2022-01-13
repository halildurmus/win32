// IModelIterator.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/IModelObject.dart';
import '../../../system/diagnostics/debug/IKeyStore.dart';

/// @nodoc
const IID_IModelIterator = '{E4622136-927D-4490-874F-581F3E4E3688}';

/// {@category Interface}
/// {@category com}
class IModelIterator extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IModelIterator(Pointer<COMObject> ptr) : super(ptr);

  int Reset() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int GetNext(
    Pointer<Pointer<COMObject>> object,
    int dimensions,
    Pointer<Pointer<COMObject>> indexers,
    Pointer<Pointer<COMObject>> metadata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> object,
            Uint64 dimensions,
            Pointer<Pointer<COMObject>> indexers,
            Pointer<Pointer<COMObject>> metadata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> object,
            int dimensions,
            Pointer<Pointer<COMObject>> indexers,
            Pointer<Pointer<COMObject>> metadata,
          )>()(
        ptr.ref.lpVtbl,
        object,
        dimensions,
        indexers,
        metadata,
      );
}
