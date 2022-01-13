// IXpsOMDictionary.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../storage/xps/IXpsOMShareable.dart';
import '../../storage/xps/IXpsOMDictionary.dart';

/// @nodoc
const IID_IXpsOMDictionary = '{897C86B8-8EAF-4AE3-BDDE-56419FCF4236}';

/// {@category Interface}
/// {@category com}
class IXpsOMDictionary extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  IXpsOMDictionary(Pointer<COMObject> ptr) : super(ptr);

  int GetOwner(
    Pointer<Pointer<COMObject>> owner,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> owner,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> owner,
          )>()(
        ptr.ref.lpVtbl,
        owner,
      );

  int GetCount(
    Pointer<Uint32> count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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
    Pointer<Pointer<Utf16>> key,
    Pointer<Pointer<COMObject>> entry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<Pointer<Utf16>> key,
            Pointer<Pointer<COMObject>> entry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<Pointer<Utf16>> key,
            Pointer<Pointer<COMObject>> entry,
          )>()(
        ptr.ref.lpVtbl,
        index,
        key,
        entry,
      );

  int GetByKey(
    Pointer<Utf16> key,
    Pointer<COMObject> beforeEntry,
    Pointer<Pointer<COMObject>> entry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> key,
            Pointer<COMObject> beforeEntry,
            Pointer<Pointer<COMObject>> entry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> key,
            Pointer<COMObject> beforeEntry,
            Pointer<Pointer<COMObject>> entry,
          )>()(
        ptr.ref.lpVtbl,
        key,
        beforeEntry,
        entry,
      );

  int GetIndex(
    Pointer<COMObject> entry,
    Pointer<Uint32> index,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> entry,
            Pointer<Uint32> index,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> entry,
            Pointer<Uint32> index,
          )>()(
        ptr.ref.lpVtbl,
        entry,
        index,
      );

  int Append(
    Pointer<Utf16> key,
    Pointer<COMObject> entry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> key,
            Pointer<COMObject> entry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> key,
            Pointer<COMObject> entry,
          )>()(
        ptr.ref.lpVtbl,
        key,
        entry,
      );

  int InsertAt(
    int index,
    Pointer<Utf16> key,
    Pointer<COMObject> entry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<Utf16> key,
            Pointer<COMObject> entry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<Utf16> key,
            Pointer<COMObject> entry,
          )>()(
        ptr.ref.lpVtbl,
        index,
        key,
        entry,
      );

  int RemoveAt(
    int index,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
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

  int SetAt(
    int index,
    Pointer<Utf16> key,
    Pointer<COMObject> entry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<Utf16> key,
            Pointer<COMObject> entry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<Utf16> key,
            Pointer<COMObject> entry,
          )>()(
        ptr.ref.lpVtbl,
        index,
        key,
        entry,
      );

  int Clone(
    Pointer<Pointer<COMObject>> dictionary,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> dictionary,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> dictionary,
          )>()(
        ptr.ref.lpVtbl,
        dictionary,
      );
}
