// IWiaDrvItem.dart

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
import '../../devices/imageacquisition/IWiaDrvItem.dart';

/// @nodoc
const IID_IWiaDrvItem = '{1F02B5C5-B00C-11D2-A094-00C04F72DC3C}';

/// {@category Interface}
/// {@category com}
class IWiaDrvItem extends IUnknown {
  // vtable begins at 3, is 13 entries long.
  IWiaDrvItem(Pointer<COMObject> ptr) : super(ptr);

  int GetItemFlags(
    Pointer<Int32> MIDL__IWiaDrvItem0000,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> MIDL__IWiaDrvItem0000,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> MIDL__IWiaDrvItem0000,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__IWiaDrvItem0000,
      );

  int GetDeviceSpecContext(
    Pointer<Pointer<Uint8>> MIDL__IWiaDrvItem0001,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> MIDL__IWiaDrvItem0001,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> MIDL__IWiaDrvItem0001,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__IWiaDrvItem0001,
      );

  int GetFullItemName(
    Pointer<Pointer<Utf16>> MIDL__IWiaDrvItem0002,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> MIDL__IWiaDrvItem0002,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> MIDL__IWiaDrvItem0002,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__IWiaDrvItem0002,
      );

  int GetItemName(
    Pointer<Pointer<Utf16>> MIDL__IWiaDrvItem0003,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> MIDL__IWiaDrvItem0003,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> MIDL__IWiaDrvItem0003,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__IWiaDrvItem0003,
      );

  int AddItemToFolder(
    Pointer<COMObject> MIDL__IWiaDrvItem0004,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> MIDL__IWiaDrvItem0004,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> MIDL__IWiaDrvItem0004,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__IWiaDrvItem0004,
      );

  int UnlinkItemTree(
    int MIDL__IWiaDrvItem0005,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 MIDL__IWiaDrvItem0005,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int MIDL__IWiaDrvItem0005,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__IWiaDrvItem0005,
      );

  int RemoveItemFromFolder(
    int MIDL__IWiaDrvItem0006,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 MIDL__IWiaDrvItem0006,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int MIDL__IWiaDrvItem0006,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__IWiaDrvItem0006,
      );

  int FindItemByName(
    int MIDL__IWiaDrvItem0007,
    Pointer<Utf16> MIDL__IWiaDrvItem0008,
    Pointer<Pointer<COMObject>> MIDL__IWiaDrvItem0009,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 MIDL__IWiaDrvItem0007,
            Pointer<Utf16> MIDL__IWiaDrvItem0008,
            Pointer<Pointer<COMObject>> MIDL__IWiaDrvItem0009,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int MIDL__IWiaDrvItem0007,
            Pointer<Utf16> MIDL__IWiaDrvItem0008,
            Pointer<Pointer<COMObject>> MIDL__IWiaDrvItem0009,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__IWiaDrvItem0007,
        MIDL__IWiaDrvItem0008,
        MIDL__IWiaDrvItem0009,
      );

  int FindChildItemByName(
    Pointer<Utf16> MIDL__IWiaDrvItem0010,
    Pointer<Pointer<COMObject>> MIDL__IWiaDrvItem0011,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> MIDL__IWiaDrvItem0010,
            Pointer<Pointer<COMObject>> MIDL__IWiaDrvItem0011,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> MIDL__IWiaDrvItem0010,
            Pointer<Pointer<COMObject>> MIDL__IWiaDrvItem0011,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__IWiaDrvItem0010,
        MIDL__IWiaDrvItem0011,
      );

  int GetParentItem(
    Pointer<Pointer<COMObject>> MIDL__IWiaDrvItem0012,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> MIDL__IWiaDrvItem0012,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> MIDL__IWiaDrvItem0012,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__IWiaDrvItem0012,
      );

  int GetFirstChildItem(
    Pointer<Pointer<COMObject>> MIDL__IWiaDrvItem0013,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> MIDL__IWiaDrvItem0013,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> MIDL__IWiaDrvItem0013,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__IWiaDrvItem0013,
      );

  int GetNextSiblingItem(
    Pointer<Pointer<COMObject>> MIDL__IWiaDrvItem0014,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> MIDL__IWiaDrvItem0014,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> MIDL__IWiaDrvItem0014,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__IWiaDrvItem0014,
      );

  int DumpItemData(
    Pointer<Pointer<Utf16>> MIDL__IWiaDrvItem0015,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> MIDL__IWiaDrvItem0015,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> MIDL__IWiaDrvItem0015,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__IWiaDrvItem0015,
      );
}
