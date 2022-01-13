// IFsrmCommittableCollection.dart

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

import '../../storage/fileserverresourcemanager/IFsrmMutableCollection.dart';
import '../../storage/fileserverresourcemanager/structs.g.dart';
import '../../storage/fileserverresourcemanager/IFsrmCollection.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IFsrmCommittableCollection = '{96DEB3B5-8B91-4A2A-9D93-80A35D8AA847}';

/// {@category Interface}
/// {@category com}
class IFsrmCommittableCollection extends IFsrmMutableCollection {
  // vtable begins at 18, is 1 entries long.
  IFsrmCommittableCollection(Pointer<COMObject> ptr) : super(ptr);

  int Commit(
    int options,
    Pointer<Pointer<COMObject>> results,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 options,
            Pointer<Pointer<COMObject>> results,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int options,
            Pointer<Pointer<COMObject>> results,
          )>()(
        ptr.ref.lpVtbl,
        options,
        results,
      );
}
