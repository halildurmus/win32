// IObjectCollection.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../ui/shell/common/IObjectArray.dart';
import '../../../specialTypes.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IObjectCollection = '{5632B1A4-E38A-400A-928A-D4CD63230295}';

/// {@category Interface}
/// {@category com}
class IObjectCollection extends IObjectArray {
  // vtable begins at 5, is 4 entries long.
  IObjectCollection(Pointer<COMObject> ptr) : super(ptr);

  int AddObject(
    Pointer<COMObject> punk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punk,
          )>()(
        ptr.ref.lpVtbl,
        punk,
      );

  int AddFromArray(
    Pointer<COMObject> poaSource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> poaSource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> poaSource,
          )>()(
        ptr.ref.lpVtbl,
        poaSource,
      );

  int RemoveObjectAt(
    int uiIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uiIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uiIndex,
          )>()(
        ptr.ref.lpVtbl,
        uiIndex,
      );

  int Clear() => ptr.ref.lpVtbl.value
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
