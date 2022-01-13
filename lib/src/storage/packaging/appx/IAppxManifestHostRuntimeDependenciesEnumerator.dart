// IAppxManifestHostRuntimeDependenciesEnumerator.dart

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
import '../../../storage/packaging/appx/IAppxManifestHostRuntimeDependency.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IAppxManifestHostRuntimeDependenciesEnumerator =
    '{6427A646-7F49-433E-B1A6-0DA309F6885A}';

/// {@category Interface}
/// {@category com}
class IAppxManifestHostRuntimeDependenciesEnumerator extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IAppxManifestHostRuntimeDependenciesEnumerator(Pointer<COMObject> ptr)
      : super(ptr);

  int GetCurrent(
    Pointer<Pointer<COMObject>> hostRuntimeDependency,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> hostRuntimeDependency,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> hostRuntimeDependency,
          )>()(
        ptr.ref.lpVtbl,
        hostRuntimeDependency,
      );

  int GetHasCurrent(
    Pointer<Int32> hasCurrent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> hasCurrent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> hasCurrent,
          )>()(
        ptr.ref.lpVtbl,
        hasCurrent,
      );

  int MoveNext(
    Pointer<Int32> hasNext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> hasNext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> hasNext,
          )>()(
        ptr.ref.lpVtbl,
        hasNext,
      );
}
