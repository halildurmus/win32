// IDataObjectProvider.dart

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
import '../../system/com/IDataObject.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDataObjectProvider = '{3D25F6D6-4B2A-433C-9184-7C33AD35D001}';

/// {@category Interface}
/// {@category com}
class IDataObjectProvider extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDataObjectProvider(Pointer<COMObject> ptr) : super(ptr);

  int GetDataObject(
    Pointer<Pointer<COMObject>> dataObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> dataObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> dataObject,
          )>()(
        ptr.ref.lpVtbl,
        dataObject,
      );

  int SetDataObject(
    Pointer<COMObject> dataObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> dataObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> dataObject,
          )>()(
        ptr.ref.lpVtbl,
        dataObject,
      );
}
