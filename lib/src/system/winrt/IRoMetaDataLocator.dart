// IRoMetaDataLocator.dart

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

import '../../foundation/structs.g.dart';
import '../../system/winrt/IRoSimpleMetaDataBuilder.dart';

/// @nodoc
const IID_IRoMetaDataLocator = 'null';

/// {@category Interface}
/// {@category com}
class IRoMetaDataLocator {
  // vtable begins at 0, is 1 entries long.
  Pointer<COMObject> ptr;

  IRoMetaDataLocator(this.ptr);

  int Locate(
    Pointer<Utf16> nameElement,
    Pointer<COMObject> metaDataDestination,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(0)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> nameElement,
            Pointer<COMObject> metaDataDestination,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> nameElement,
            Pointer<COMObject> metaDataDestination,
          )>()(
        ptr.ref.lpVtbl,
        nameElement,
        metaDataDestination,
      );
}
