// IInitializeWithPropertyStore.dart

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
import '../../ui/shell/propertiessystem/IPropertyStore.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IInitializeWithPropertyStore =
    '{C3E12EB5-7D8D-44F8-B6DD-0E77B34D6DE4}';

/// {@category Interface}
/// {@category com}
class IInitializeWithPropertyStore extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IInitializeWithPropertyStore(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> pps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pps,
          )>()(
        ptr.ref.lpVtbl,
        pps,
      );
}
