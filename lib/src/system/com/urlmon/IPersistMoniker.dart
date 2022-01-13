// IPersistMoniker.dart

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
import '../../../system/com/IMoniker.dart';
import '../../../system/com/IBindCtx.dart';

/// @nodoc
const IID_IPersistMoniker = '{79EAC9C9-BAF9-11CE-8C82-00AA004BA90B}';

/// {@category Interface}
/// {@category com}
class IPersistMoniker extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IPersistMoniker(Pointer<COMObject> ptr) : super(ptr);

  int GetClassID(
    Pointer<GUID> pClassID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pClassID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pClassID,
          )>()(
        ptr.ref.lpVtbl,
        pClassID,
      );

  int IsDirty() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int Load(
    int fFullyAvailable,
    Pointer<COMObject> pimkName,
    Pointer<COMObject> pibc,
    int grfMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fFullyAvailable,
            Pointer<COMObject> pimkName,
            Pointer<COMObject> pibc,
            Uint32 grfMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fFullyAvailable,
            Pointer<COMObject> pimkName,
            Pointer<COMObject> pibc,
            int grfMode,
          )>()(
        ptr.ref.lpVtbl,
        fFullyAvailable,
        pimkName,
        pibc,
        grfMode,
      );

  int Save(
    Pointer<COMObject> pimkName,
    Pointer<COMObject> pbc,
    int fRemember,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pimkName,
            Pointer<COMObject> pbc,
            Int32 fRemember,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pimkName,
            Pointer<COMObject> pbc,
            int fRemember,
          )>()(
        ptr.ref.lpVtbl,
        pimkName,
        pbc,
        fRemember,
      );

  int SaveCompleted(
    Pointer<COMObject> pimkName,
    Pointer<COMObject> pibc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pimkName,
            Pointer<COMObject> pibc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pimkName,
            Pointer<COMObject> pibc,
          )>()(
        ptr.ref.lpVtbl,
        pimkName,
        pibc,
      );

  int GetCurMoniker(
    Pointer<Pointer<COMObject>> ppimkName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppimkName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppimkName,
          )>()(
        ptr.ref.lpVtbl,
        ppimkName,
      );
}
