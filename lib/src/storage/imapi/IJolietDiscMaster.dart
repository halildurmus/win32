// IJolietDiscMaster.dart

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
import '../../system/com/structuredstorage/IStorage.dart';
import '../../system/com/structuredstorage/IPropertyStorage.dart';

/// @nodoc
const IID_IJolietDiscMaster = '{E3BC42CE-4E5C-11D3-9144-00104BA11C5E}';

/// {@category Interface}
/// {@category com}
class IJolietDiscMaster extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IJolietDiscMaster(Pointer<COMObject> ptr) : super(ptr);

  int GetTotalDataBlocks(
    Pointer<Int32> pnBlocks,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pnBlocks,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pnBlocks,
          )>()(
        ptr.ref.lpVtbl,
        pnBlocks,
      );

  int GetUsedDataBlocks(
    Pointer<Int32> pnBlocks,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pnBlocks,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pnBlocks,
          )>()(
        ptr.ref.lpVtbl,
        pnBlocks,
      );

  int GetDataBlockSize(
    Pointer<Int32> pnBlockBytes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pnBlockBytes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pnBlockBytes,
          )>()(
        ptr.ref.lpVtbl,
        pnBlockBytes,
      );

  int AddData(
    Pointer<COMObject> pStorage,
    int lFileOverwrite,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pStorage,
            Int32 lFileOverwrite,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pStorage,
            int lFileOverwrite,
          )>()(
        ptr.ref.lpVtbl,
        pStorage,
        lFileOverwrite,
      );

  int GetJolietProperties(
    Pointer<Pointer<COMObject>> ppPropStg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPropStg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPropStg,
          )>()(
        ptr.ref.lpVtbl,
        ppPropStg,
      );

  int SetJolietProperties(
    Pointer<COMObject> pPropStg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPropStg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPropStg,
          )>()(
        ptr.ref.lpVtbl,
        pPropStg,
      );
}
