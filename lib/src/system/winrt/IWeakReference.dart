// IWeakReference.dart

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
const IID_IWeakReference = '{00000037-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IWeakReference extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWeakReference(Pointer<COMObject> ptr) : super(ptr);

  int Resolve(
    Pointer<GUID> riid,
    Pointer<Pointer> objectReference,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> objectReference,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> objectReference,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        objectReference,
      );
}
