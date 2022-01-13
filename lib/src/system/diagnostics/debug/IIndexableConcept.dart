// IIndexableConcept.dart

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
import '../../../system/diagnostics/debug/IModelObject.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/IKeyStore.dart';

/// @nodoc
const IID_IIndexableConcept = '{D1FAD99F-3F53-4457-850C-8051DF2D3FB5}';

/// {@category Interface}
/// {@category com}
class IIndexableConcept extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IIndexableConcept(Pointer<COMObject> ptr) : super(ptr);

  int GetDimensionality(
    Pointer<COMObject> contextObject,
    Pointer<Uint64> dimensionality,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> contextObject,
            Pointer<Uint64> dimensionality,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> contextObject,
            Pointer<Uint64> dimensionality,
          )>()(
        ptr.ref.lpVtbl,
        contextObject,
        dimensionality,
      );

  int GetAt(
    Pointer<COMObject> contextObject,
    int indexerCount,
    Pointer<Pointer<COMObject>> indexers,
    Pointer<Pointer<COMObject>> object,
    Pointer<Pointer<COMObject>> metadata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> contextObject,
            Uint64 indexerCount,
            Pointer<Pointer<COMObject>> indexers,
            Pointer<Pointer<COMObject>> object,
            Pointer<Pointer<COMObject>> metadata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> contextObject,
            int indexerCount,
            Pointer<Pointer<COMObject>> indexers,
            Pointer<Pointer<COMObject>> object,
            Pointer<Pointer<COMObject>> metadata,
          )>()(
        ptr.ref.lpVtbl,
        contextObject,
        indexerCount,
        indexers,
        object,
        metadata,
      );

  int SetAt(
    Pointer<COMObject> contextObject,
    int indexerCount,
    Pointer<Pointer<COMObject>> indexers,
    Pointer<COMObject> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> contextObject,
            Uint64 indexerCount,
            Pointer<Pointer<COMObject>> indexers,
            Pointer<COMObject> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> contextObject,
            int indexerCount,
            Pointer<Pointer<COMObject>> indexers,
            Pointer<COMObject> value,
          )>()(
        ptr.ref.lpVtbl,
        contextObject,
        indexerCount,
        indexers,
        value,
      );
}
