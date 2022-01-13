// INotifyReplica.dart

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
import '../../system/com/IMoniker.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_INotifyReplica = '{99180163-DA16-101A-935C-444553540000}';

/// {@category Interface}
/// {@category com}
class INotifyReplica extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  INotifyReplica(Pointer<COMObject> ptr) : super(ptr);

  int YouAreAReplica(
    int ulcOtherReplicas,
    Pointer<Pointer<COMObject>> rgpmkOtherReplicas,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulcOtherReplicas,
            Pointer<Pointer<COMObject>> rgpmkOtherReplicas,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulcOtherReplicas,
            Pointer<Pointer<COMObject>> rgpmkOtherReplicas,
          )>()(
        ptr.ref.lpVtbl,
        ulcOtherReplicas,
        rgpmkOtherReplicas,
      );
}
