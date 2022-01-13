// ITocCollection.dart

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
import '../../media/mediafoundation/IToc.dart';

/// @nodoc
const IID_ITocCollection = '{23FEE831-AE96-42DF-B170-25A04847A3CA}';

/// {@category Interface}
/// {@category com}
class ITocCollection extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  ITocCollection(Pointer<COMObject> ptr) : super(ptr);

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
    Pointer<Pointer<COMObject>> ppToc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwEntryIndex,
            Pointer<Pointer<COMObject>> ppToc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwEntryIndex,
            Pointer<Pointer<COMObject>> ppToc,
          )>()(
        ptr.ref.lpVtbl,
        dwEntryIndex,
        ppToc,
      );

  int AddEntry(
    Pointer<COMObject> pToc,
    Pointer<Uint32> pdwEntryIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pToc,
            Pointer<Uint32> pdwEntryIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pToc,
            Pointer<Uint32> pdwEntryIndex,
          )>()(
        ptr.ref.lpVtbl,
        pToc,
        pdwEntryIndex,
      );

  int AddEntryByIndex(
    int dwEntryIndex,
    Pointer<COMObject> pToc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwEntryIndex,
            Pointer<COMObject> pToc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwEntryIndex,
            Pointer<COMObject> pToc,
          )>()(
        ptr.ref.lpVtbl,
        dwEntryIndex,
        pToc,
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
