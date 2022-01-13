// IAppxContentGroup.dart

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
import '../../../storage/packaging/appx/IAppxContentGroupFilesEnumerator.dart';

/// @nodoc
const IID_IAppxContentGroup = '{328F6468-C04F-4E3C-B6FA-6B8D27F3003A}';

/// {@category Interface}
/// {@category com}
class IAppxContentGroup extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IAppxContentGroup(Pointer<COMObject> ptr) : super(ptr);

  int GetName(
    Pointer<Pointer<Utf16>> groupName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> groupName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> groupName,
          )>()(
        ptr.ref.lpVtbl,
        groupName,
      );

  int GetFiles(
    Pointer<Pointer<COMObject>> enumerator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> enumerator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> enumerator,
          )>()(
        ptr.ref.lpVtbl,
        enumerator,
      );
}
