// IStorageProviderHandler.dart

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
import '../../ui/shell/IStorageProviderPropertyHandler.dart';

/// @nodoc
const IID_IStorageProviderHandler = '{162C6FB5-44D3-435B-903D-E613FA093FB5}';

/// {@category Interface}
/// {@category com}
class IStorageProviderHandler extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IStorageProviderHandler(Pointer<COMObject> ptr) : super(ptr);

  int GetPropertyHandlerFromPath(
    Pointer<Utf16> path,
    Pointer<Pointer<COMObject>> propertyHandler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> path,
            Pointer<Pointer<COMObject>> propertyHandler,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> path,
            Pointer<Pointer<COMObject>> propertyHandler,
          )>()(
        ptr.ref.lpVtbl,
        path,
        propertyHandler,
      );

  int GetPropertyHandlerFromUri(
    Pointer<Utf16> uri,
    Pointer<Pointer<COMObject>> propertyHandler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> uri,
            Pointer<Pointer<COMObject>> propertyHandler,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> uri,
            Pointer<Pointer<COMObject>> propertyHandler,
          )>()(
        ptr.ref.lpVtbl,
        uri,
        propertyHandler,
      );

  int GetPropertyHandlerFromFileId(
    Pointer<Utf16> fileId,
    Pointer<Pointer<COMObject>> propertyHandler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> fileId,
            Pointer<Pointer<COMObject>> propertyHandler,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> fileId,
            Pointer<Pointer<COMObject>> propertyHandler,
          )>()(
        ptr.ref.lpVtbl,
        fileId,
        propertyHandler,
      );
}
