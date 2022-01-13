// IDelayedPropertyStoreFactory.dart

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

import '../../../ui/shell/propertiessystem/IPropertyStoreFactory.dart';
import '../../../ui/shell/propertiessystem/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDelayedPropertyStoreFactory =
    '{40D4577F-E237-4BDB-BD69-58F089431B6A}';

/// {@category Interface}
/// {@category com}
class IDelayedPropertyStoreFactory extends IPropertyStoreFactory {
  // vtable begins at 5, is 1 entries long.
  IDelayedPropertyStoreFactory(Pointer<COMObject> ptr) : super(ptr);

  int GetDelayedPropertyStore(
    int flags,
    int dwStoreId,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 flags,
            Uint32 dwStoreId,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int flags,
            int dwStoreId,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        flags,
        dwStoreId,
        riid,
        ppv,
      );
}
