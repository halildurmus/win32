// IPropertySystemChangeNotify.dart

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

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IPropertySystemChangeNotify =
    '{FA955FD9-38BE-4879-A6CE-824CF52D609F}';

/// {@category Interface}
/// {@category com}
class IPropertySystemChangeNotify extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IPropertySystemChangeNotify(Pointer<COMObject> ptr) : super(ptr);

  int SchemaRefreshed() => ptr.ref.lpVtbl.value
          .elementAt(3)
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
