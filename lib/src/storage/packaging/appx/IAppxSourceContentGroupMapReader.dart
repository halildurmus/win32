// IAppxSourceContentGroupMapReader.dart

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
import '../../../storage/packaging/appx/IAppxContentGroup.dart';
import '../../../foundation/structs.g.dart';
import '../../../storage/packaging/appx/IAppxContentGroupsEnumerator.dart';

/// @nodoc
const IID_IAppxSourceContentGroupMapReader =
    '{F329791D-540B-4A9F-BC75-3282B7D73193}';

/// {@category Interface}
/// {@category com}
class IAppxSourceContentGroupMapReader extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IAppxSourceContentGroupMapReader(Pointer<COMObject> ptr) : super(ptr);

  int GetRequiredGroup(
    Pointer<Pointer<COMObject>> requiredGroup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> requiredGroup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> requiredGroup,
          )>()(
        ptr.ref.lpVtbl,
        requiredGroup,
      );

  int GetAutomaticGroups(
    Pointer<Pointer<COMObject>> automaticGroupsEnumerator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> automaticGroupsEnumerator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> automaticGroupsEnumerator,
          )>()(
        ptr.ref.lpVtbl,
        automaticGroupsEnumerator,
      );
}
