// IMFCollection.dart

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
const IID_IMFCollection = '{5BC8A76B-869A-46A3-9B03-FA218A66AEBE}';

/// {@category Interface}
/// {@category com}
class IMFCollection extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IMFCollection(Pointer<COMObject> ptr) : super(ptr);

  int GetElementCount(
    Pointer<Uint32> pcElements,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcElements,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcElements,
          )>()(
        ptr.ref.lpVtbl,
        pcElements,
      );

  int GetElement(
    int dwElementIndex,
    Pointer<Pointer<COMObject>> ppUnkElement,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwElementIndex,
            Pointer<Pointer<COMObject>> ppUnkElement,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwElementIndex,
            Pointer<Pointer<COMObject>> ppUnkElement,
          )>()(
        ptr.ref.lpVtbl,
        dwElementIndex,
        ppUnkElement,
      );

  int AddElement(
    Pointer<COMObject> pUnkElement,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pUnkElement,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pUnkElement,
          )>()(
        ptr.ref.lpVtbl,
        pUnkElement,
      );

  int RemoveElement(
    int dwElementIndex,
    Pointer<Pointer<COMObject>> ppUnkElement,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwElementIndex,
            Pointer<Pointer<COMObject>> ppUnkElement,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwElementIndex,
            Pointer<Pointer<COMObject>> ppUnkElement,
          )>()(
        ptr.ref.lpVtbl,
        dwElementIndex,
        ppUnkElement,
      );

  int InsertElementAt(
    int dwIndex,
    Pointer<COMObject> pUnknown,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIndex,
            Pointer<COMObject> pUnknown,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIndex,
            Pointer<COMObject> pUnknown,
          )>()(
        ptr.ref.lpVtbl,
        dwIndex,
        pUnknown,
      );

  int RemoveAllElements() => ptr.ref.lpVtbl.value
          .elementAt(8)
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
