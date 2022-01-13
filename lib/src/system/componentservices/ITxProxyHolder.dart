// ITxProxyHolder.dart

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

/// @nodoc
const IID_ITxProxyHolder = '{13D86F31-0139-41AF-BCAD-C7D50435FE9F}';

/// {@category Interface}
/// {@category com}
class ITxProxyHolder extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ITxProxyHolder(Pointer<COMObject> ptr) : super(ptr);

  void GetIdentifier(
    Pointer<GUID> pGuidLtx,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<GUID> pGuidLtx,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<GUID> pGuidLtx,
          )>()(
        ptr.ref.lpVtbl,
        pGuidLtx,
      );
}
