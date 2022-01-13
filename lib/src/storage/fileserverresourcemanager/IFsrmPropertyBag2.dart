// IFsrmPropertyBag2.dart

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

import '../../storage/fileserverresourcemanager/IFsrmPropertyBag.dart';
import '../../storage/fileserverresourcemanager/structs.g.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../storage/fileserverresourcemanager/IFsrmCollection.dart';

/// @nodoc
const IID_IFsrmPropertyBag2 = '{0E46BDBD-2402-4FED-9C30-9266E6EB2CC9}';

/// {@category Interface}
/// {@category com}
class IFsrmPropertyBag2 extends IFsrmPropertyBag {
  // vtable begins at 28, is 2 entries long.
  IFsrmPropertyBag2(Pointer<COMObject> ptr) : super(ptr);

  int GetFieldValue(
    int field,
    Pointer<VARIANT> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 field,
            Pointer<VARIANT> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int field,
            Pointer<VARIANT> value,
          )>()(
        ptr.ref.lpVtbl,
        field,
        value,
      );

  int GetUntrustedInFileProperties(
    Pointer<Pointer<COMObject>> props,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> props,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> props,
          )>()(
        ptr.ref.lpVtbl,
        props,
      );
}
