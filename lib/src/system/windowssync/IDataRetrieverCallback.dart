// IDataRetrieverCallback.dart

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

/// @nodoc
const IID_IDataRetrieverCallback = '{71B4863B-F969-4676-BBC3-3D9FDC3FB2C7}';

/// {@category Interface}
/// {@category com}
class IDataRetrieverCallback extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDataRetrieverCallback(Pointer<COMObject> ptr) : super(ptr);

  int LoadChangeDataComplete(
    Pointer<COMObject> pUnkData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pUnkData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pUnkData,
          )>()(
        ptr.ref.lpVtbl,
        pUnkData,
      );

  int LoadChangeDataError(
    int hrError,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hrError,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hrError,
          )>()(
        ptr.ref.lpVtbl,
        hrError,
      );
}
