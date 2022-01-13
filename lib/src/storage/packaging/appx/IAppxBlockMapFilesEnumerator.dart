// IAppxBlockMapFilesEnumerator.dart

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
import '../../../storage/packaging/appx/IAppxBlockMapFile.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IAppxBlockMapFilesEnumerator =
    '{02B856A2-4262-4070-BACB-1A8CBBC42305}';

/// {@category Interface}
/// {@category com}
class IAppxBlockMapFilesEnumerator extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IAppxBlockMapFilesEnumerator(Pointer<COMObject> ptr) : super(ptr);

  int GetCurrent(
    Pointer<Pointer<COMObject>> file,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> file,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> file,
          )>()(
        ptr.ref.lpVtbl,
        file,
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
    Pointer<Int32> hasCurrent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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
}
