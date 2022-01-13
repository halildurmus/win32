// IDockingWindowFrame.dart

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

import '../../system/ole/IOleWindow.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDockingWindowFrame = '{47D2657A-7B27-11D0-8CA9-00A0C92DBFE8}';

/// {@category Interface}
/// {@category com}
class IDockingWindowFrame extends IOleWindow {
  // vtable begins at 5, is 3 entries long.
  IDockingWindowFrame(Pointer<COMObject> ptr) : super(ptr);

  int AddToolbar(
    Pointer<COMObject> punkSrc,
    Pointer<Utf16> pwszItem,
    int dwAddFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punkSrc,
            Pointer<Utf16> pwszItem,
            Uint32 dwAddFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punkSrc,
            Pointer<Utf16> pwszItem,
            int dwAddFlags,
          )>()(
        ptr.ref.lpVtbl,
        punkSrc,
        pwszItem,
        dwAddFlags,
      );

  int RemoveToolbar(
    Pointer<COMObject> punkSrc,
    int dwRemoveFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punkSrc,
            Uint32 dwRemoveFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punkSrc,
            int dwRemoveFlags,
          )>()(
        ptr.ref.lpVtbl,
        punkSrc,
        dwRemoveFlags,
      );

  int FindToolbar(
    Pointer<Utf16> pwszItem,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszItem,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszItem,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        pwszItem,
        riid,
        ppv,
      );
}
