// IPropertyStoreCapabilities.dart

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
import '../../../ui/shell/propertiessystem/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IPropertyStoreCapabilities = '{C8E2D566-186E-4D49-BF41-6909EAD56ACC}';

/// {@category Interface}
/// {@category com}
class IPropertyStoreCapabilities extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IPropertyStoreCapabilities(Pointer<COMObject> ptr) : super(ptr);

  int IsPropertyWritable(
    Pointer<PROPERTYKEY> key,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
          )>()(
        ptr.ref.lpVtbl,
        key,
      );
}
