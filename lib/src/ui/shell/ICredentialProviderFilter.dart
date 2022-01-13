// ICredentialProviderFilter.dart

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
import '../../ui/shell/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ICredentialProviderFilter = '{A5DA53F9-D475-4080-A120-910C4A739880}';

/// {@category Interface}
/// {@category com}
class ICredentialProviderFilter extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ICredentialProviderFilter(Pointer<COMObject> ptr) : super(ptr);

  int Filter(
    int cpus,
    int dwFlags,
    Pointer<GUID> rgclsidProviders,
    Pointer<Int32> rgbAllow,
    int cProviders,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 cpus,
            Uint32 dwFlags,
            Pointer<GUID> rgclsidProviders,
            Pointer<Int32> rgbAllow,
            Uint32 cProviders,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cpus,
            int dwFlags,
            Pointer<GUID> rgclsidProviders,
            Pointer<Int32> rgbAllow,
            int cProviders,
          )>()(
        ptr.ref.lpVtbl,
        cpus,
        dwFlags,
        rgclsidProviders,
        rgbAllow,
        cProviders,
      );

  int UpdateRemoteCredential(
    Pointer<CREDENTIAL_PROVIDER_CREDENTIAL_SERIALIZATION> pcpcsIn,
    Pointer<CREDENTIAL_PROVIDER_CREDENTIAL_SERIALIZATION> pcpcsOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<CREDENTIAL_PROVIDER_CREDENTIAL_SERIALIZATION> pcpcsIn,
            Pointer<CREDENTIAL_PROVIDER_CREDENTIAL_SERIALIZATION> pcpcsOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<CREDENTIAL_PROVIDER_CREDENTIAL_SERIALIZATION> pcpcsIn,
            Pointer<CREDENTIAL_PROVIDER_CREDENTIAL_SERIALIZATION> pcpcsOut,
          )>()(
        ptr.ref.lpVtbl,
        pcpcsIn,
        pcpcsOut,
      );
}
