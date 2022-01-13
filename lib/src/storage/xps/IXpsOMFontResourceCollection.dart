// IXpsOMFontResourceCollection.dart

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
import '../../storage/xps/IXpsOMFontResource.dart';
import '../../storage/packaging/opc/IOpcPartUri.dart';

/// @nodoc
const IID_IXpsOMFontResourceCollection =
    '{70B4A6BB-88D4-4FA8-AAF9-6D9C596FDBAD}';

/// {@category Interface}
/// {@category com}
class IXpsOMFontResourceCollection extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IXpsOMFontResourceCollection(Pointer<COMObject> ptr) : super(ptr);

  int GetCount(
    Pointer<Uint32> count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> count,
          )>()(
        ptr.ref.lpVtbl,
        count,
      );

  int GetAt(
    int index,
    Pointer<Pointer<COMObject>> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<Pointer<COMObject>> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<Pointer<COMObject>> value,
          )>()(
        ptr.ref.lpVtbl,
        index,
        value,
      );

  int SetAt(
    int index,
    Pointer<COMObject> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<COMObject> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<COMObject> value,
          )>()(
        ptr.ref.lpVtbl,
        index,
        value,
      );

  int InsertAt(
    int index,
    Pointer<COMObject> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<COMObject> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<COMObject> value,
          )>()(
        ptr.ref.lpVtbl,
        index,
        value,
      );

  int Append(
    Pointer<COMObject> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> value,
          )>()(
        ptr.ref.lpVtbl,
        value,
      );

  int RemoveAt(
    int index,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
          )>()(
        ptr.ref.lpVtbl,
        index,
      );

  int GetByPartName(
    Pointer<COMObject> partName,
    Pointer<Pointer<COMObject>> part,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> partName,
            Pointer<Pointer<COMObject>> part,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> partName,
            Pointer<Pointer<COMObject>> part,
          )>()(
        ptr.ref.lpVtbl,
        partName,
        part,
      );
}
