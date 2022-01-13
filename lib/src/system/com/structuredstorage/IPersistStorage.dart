// IPersistStorage.dart

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

import '../../../system/com/IPersist.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/com/structuredstorage/IStorage.dart';

/// @nodoc
const IID_IPersistStorage = '{0000010A-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IPersistStorage extends IPersist {
  // vtable begins at 4, is 6 entries long.
  IPersistStorage(Pointer<COMObject> ptr) : super(ptr);

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

  int InitNew(
    Pointer<COMObject> pStg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pStg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pStg,
          )>()(
        ptr.ref.lpVtbl,
        pStg,
      );

  int Load(
    Pointer<COMObject> pStg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pStg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pStg,
          )>()(
        ptr.ref.lpVtbl,
        pStg,
      );

  int Save(
    Pointer<COMObject> pStgSave,
    int fSameAsLoad,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pStgSave,
            Int32 fSameAsLoad,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pStgSave,
            int fSameAsLoad,
          )>()(
        ptr.ref.lpVtbl,
        pStgSave,
        fSameAsLoad,
      );

  int SaveCompleted(
    Pointer<COMObject> pStgNew,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pStgNew,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pStgNew,
          )>()(
        ptr.ref.lpVtbl,
        pStgNew,
      );

  int HandsOffStorage() => ptr.ref.lpVtbl.value
          .elementAt(9)
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
}
