// IWMPContentContainer.dart

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

/// @nodoc
const IID_IWMPContentContainer = '{AD7F4D9C-1A9F-4ED2-9815-ECC0B58CB616}';

/// {@category Interface}
/// {@category com}
class IWMPContentContainer extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IWMPContentContainer(Pointer<COMObject> ptr) : super(ptr);

  int GetID(
    Pointer<Uint32> pContentID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pContentID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pContentID,
          )>()(
        ptr.ref.lpVtbl,
        pContentID,
      );

  int GetPrice(
    Pointer<Pointer<Utf16>> pbstrPrice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrPrice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrPrice,
          )>()(
        ptr.ref.lpVtbl,
        pbstrPrice,
      );

  int GetType(
    Pointer<Pointer<Utf16>> pbstrType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrType,
          )>()(
        ptr.ref.lpVtbl,
        pbstrType,
      );

  int GetContentCount(
    Pointer<Uint32> pcContent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcContent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcContent,
          )>()(
        ptr.ref.lpVtbl,
        pcContent,
      );

  int GetContentPrice(
    int idxContent,
    Pointer<Pointer<Utf16>> pbstrPrice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 idxContent,
            Pointer<Pointer<Utf16>> pbstrPrice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int idxContent,
            Pointer<Pointer<Utf16>> pbstrPrice,
          )>()(
        ptr.ref.lpVtbl,
        idxContent,
        pbstrPrice,
      );

  int GetContentID(
    int idxContent,
    Pointer<Uint32> pContentID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 idxContent,
            Pointer<Uint32> pContentID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int idxContent,
            Pointer<Uint32> pContentID,
          )>()(
        ptr.ref.lpVtbl,
        idxContent,
        pContentID,
      );
}
