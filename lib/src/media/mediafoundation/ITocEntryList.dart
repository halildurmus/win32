// ITocEntryList.dart

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
import '../../media/mediafoundation/ITocEntry.dart';

/// @nodoc
const IID_ITocEntryList = '{3A8CCCBD-0EFD-43A3-B838-F38A552BA237}';

/// {@category Interface}
/// {@category com}
class ITocEntryList extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  ITocEntryList(Pointer<COMObject> ptr) : super(ptr);

  int GetEntryCount(
    Pointer<Uint32> pdwEntryCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwEntryCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwEntryCount,
          )>()(
        ptr.ref.lpVtbl,
        pdwEntryCount,
      );

  int GetEntryByIndex(
    int dwEntryIndex,
    Pointer<Pointer<COMObject>> ppEntry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwEntryIndex,
            Pointer<Pointer<COMObject>> ppEntry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwEntryIndex,
            Pointer<Pointer<COMObject>> ppEntry,
          )>()(
        ptr.ref.lpVtbl,
        dwEntryIndex,
        ppEntry,
      );

  int AddEntry(
    Pointer<COMObject> pEntry,
    Pointer<Uint32> pdwEntryIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pEntry,
            Pointer<Uint32> pdwEntryIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pEntry,
            Pointer<Uint32> pdwEntryIndex,
          )>()(
        ptr.ref.lpVtbl,
        pEntry,
        pdwEntryIndex,
      );

  int AddEntryByIndex(
    int dwEntryIndex,
    Pointer<COMObject> pEntry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwEntryIndex,
            Pointer<COMObject> pEntry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwEntryIndex,
            Pointer<COMObject> pEntry,
          )>()(
        ptr.ref.lpVtbl,
        dwEntryIndex,
        pEntry,
      );

  int RemoveEntryByIndex(
    int dwEntryIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwEntryIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwEntryIndex,
          )>()(
        ptr.ref.lpVtbl,
        dwEntryIndex,
      );
}
