// IAppxContentGroupMapReader.dart

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
const IID_IAppxContentGroupMapReader = '{418726D8-DD99-4F5D-9886-157ADD20DE01}';

/// {@category Interface}
/// {@category com}
class IAppxContentGroupMapReader extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IAppxContentGroupMapReader(Pointer<COMObject> ptr) : super(ptr);

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
