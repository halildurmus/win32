// IVssAdmin.dart

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
import '../../storage/vss/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../storage/vss/IVssEnumObject.dart';

/// @nodoc
const IID_IVssAdmin = '{77ED5996-2F63-11D3-8A39-00C04F72D8E3}';

/// {@category Interface}
/// {@category com}
class IVssAdmin extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IVssAdmin(Pointer<COMObject> ptr) : super(ptr);

  int RegisterProvider(
    GUID pProviderId,
    GUID ClassId,
    Pointer<Uint16> pwszProviderName,
    int eProviderType,
    Pointer<Uint16> pwszProviderVersion,
    GUID ProviderVersionId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID pProviderId,
            GUID ClassId,
            Pointer<Uint16> pwszProviderName,
            Int32 eProviderType,
            Pointer<Uint16> pwszProviderVersion,
            GUID ProviderVersionId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID pProviderId,
            GUID ClassId,
            Pointer<Uint16> pwszProviderName,
            int eProviderType,
            Pointer<Uint16> pwszProviderVersion,
            GUID ProviderVersionId,
          )>()(
        ptr.ref.lpVtbl,
        pProviderId,
        ClassId,
        pwszProviderName,
        eProviderType,
        pwszProviderVersion,
        ProviderVersionId,
      );

  int UnregisterProvider(
    GUID ProviderId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID ProviderId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID ProviderId,
          )>()(
        ptr.ref.lpVtbl,
        ProviderId,
      );

  int QueryProviders(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppEnum,
      );

  int AbortAllSnapshotsInProgress() => ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
