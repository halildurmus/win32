// IPropertyStoreFactory.dart

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
import '../../../ui/shell/propertiessystem/structs.g.dart';
import '../../../specialTypes.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IPropertyStoreFactory = '{BC110B6D-57E8-4148-A9C6-91015AB2F3A5}';

/// {@category Interface}
/// {@category com}
class IPropertyStoreFactory extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IPropertyStoreFactory(Pointer<COMObject> ptr) : super(ptr);

  int GetPropertyStore(
    int flags,
    Pointer<COMObject> pUnkFactory,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 flags,
            Pointer<COMObject> pUnkFactory,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int flags,
            Pointer<COMObject> pUnkFactory,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        flags,
        pUnkFactory,
        riid,
        ppv,
      );

  int GetPropertyStoreForKeys(
    Pointer<PROPERTYKEY> rgKeys,
    int cKeys,
    int flags,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> rgKeys,
            Uint32 cKeys,
            Uint32 flags,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> rgKeys,
            int cKeys,
            int flags,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        rgKeys,
        cKeys,
        flags,
        riid,
        ppv,
      );
}
