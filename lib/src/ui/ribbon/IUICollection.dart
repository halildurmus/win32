// IUICollection.dart

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
import '../../specialTypes.dart';

/// @nodoc
const IID_IUICollection = '{DF4F45BF-6F9D-4DD7-9D68-D8F9CD18C4DB}';

/// {@category Interface}
/// {@category com}
class IUICollection extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IUICollection(Pointer<COMObject> ptr) : super(ptr);

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

  int GetItem(
    int index,
    Pointer<Pointer<COMObject>> item,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<Pointer<COMObject>> item,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<Pointer<COMObject>> item,
          )>()(
        ptr.ref.lpVtbl,
        index,
        item,
      );

  int Add(
    Pointer<COMObject> item,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> item,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> item,
          )>()(
        ptr.ref.lpVtbl,
        item,
      );

  int Insert(
    int index,
    Pointer<COMObject> item,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<COMObject> item,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<COMObject> item,
          )>()(
        ptr.ref.lpVtbl,
        index,
        item,
      );

  int RemoveAt(
    int index,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int Replace(
    int indexReplaced,
    Pointer<COMObject> itemReplaceWith,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 indexReplaced,
            Pointer<COMObject> itemReplaceWith,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int indexReplaced,
            Pointer<COMObject> itemReplaceWith,
          )>()(
        ptr.ref.lpVtbl,
        indexReplaced,
        itemReplaceWith,
      );

  int Clear() => ptr.ref.lpVtbl.value
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
