// IVdsProvider.dart

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
import '../../storage/virtualdiskservice/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IVdsProvider = '{10C5E575-7984-4E81-A56B-431F5F92AE42}';

/// {@category Interface}
/// {@category com}
class IVdsProvider extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IVdsProvider(Pointer<COMObject> ptr) : super(ptr);

  int GetProperties(
    Pointer<VDS_PROVIDER_PROP> pProviderProp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VDS_PROVIDER_PROP> pProviderProp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VDS_PROVIDER_PROP> pProviderProp,
          )>()(
        ptr.ref.lpVtbl,
        pProviderProp,
      );
}
