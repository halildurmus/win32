// ICredentialProvider.dart

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
import '../../ui/shell/ICredentialProviderEvents.dart';
import '../../ui/shell/ICredentialProviderCredential.dart';

/// @nodoc
const IID_ICredentialProvider = '{D27C3481-5A1C-45B2-8AAA-C20EBBE8229E}';

/// {@category Interface}
/// {@category com}
class ICredentialProvider extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  ICredentialProvider(Pointer<COMObject> ptr) : super(ptr);

  int SetUsageScenario(
    int cpus,
    int dwFlags,
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
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cpus,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        cpus,
        dwFlags,
      );

  int SetSerialization(
    Pointer<CREDENTIAL_PROVIDER_CREDENTIAL_SERIALIZATION> pcpcs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<CREDENTIAL_PROVIDER_CREDENTIAL_SERIALIZATION> pcpcs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<CREDENTIAL_PROVIDER_CREDENTIAL_SERIALIZATION> pcpcs,
          )>()(
        ptr.ref.lpVtbl,
        pcpcs,
      );

  int Advise(
    Pointer<COMObject> pcpe,
    int upAdviseContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pcpe,
            IntPtr upAdviseContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pcpe,
            int upAdviseContext,
          )>()(
        ptr.ref.lpVtbl,
        pcpe,
        upAdviseContext,
      );

  int UnAdvise() => ptr.ref.lpVtbl.value
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

  int GetFieldDescriptorCount(
    Pointer<Uint32> pdwCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwCount,
          )>()(
        ptr.ref.lpVtbl,
        pdwCount,
      );

  int GetFieldDescriptorAt(
    int dwIndex,
    Pointer<Pointer<CREDENTIAL_PROVIDER_FIELD_DESCRIPTOR>> ppcpfd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIndex,
            Pointer<Pointer<CREDENTIAL_PROVIDER_FIELD_DESCRIPTOR>> ppcpfd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIndex,
            Pointer<Pointer<CREDENTIAL_PROVIDER_FIELD_DESCRIPTOR>> ppcpfd,
          )>()(
        ptr.ref.lpVtbl,
        dwIndex,
        ppcpfd,
      );

  int GetCredentialCount(
    Pointer<Uint32> pdwCount,
    Pointer<Uint32> pdwDefault,
    Pointer<Int32> pbAutoLogonWithDefault,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwCount,
            Pointer<Uint32> pdwDefault,
            Pointer<Int32> pbAutoLogonWithDefault,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwCount,
            Pointer<Uint32> pdwDefault,
            Pointer<Int32> pbAutoLogonWithDefault,
          )>()(
        ptr.ref.lpVtbl,
        pdwCount,
        pdwDefault,
        pbAutoLogonWithDefault,
      );

  int GetCredentialAt(
    int dwIndex,
    Pointer<Pointer<COMObject>> ppcpc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIndex,
            Pointer<Pointer<COMObject>> ppcpc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIndex,
            Pointer<Pointer<COMObject>> ppcpc,
          )>()(
        ptr.ref.lpVtbl,
        dwIndex,
        ppcpc,
      );
}
