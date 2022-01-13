// IBDA_NetworkProvider.dart

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
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IBDA_NetworkProvider = '{FD501041-8EBE-11CE-8183-00AA00577DA2}';

/// {@category Interface}
/// {@category com}
class IBDA_NetworkProvider extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IBDA_NetworkProvider(Pointer<COMObject> ptr) : super(ptr);

  int PutSignalSource(
    int ulSignalSource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulSignalSource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulSignalSource,
          )>()(
        ptr.ref.lpVtbl,
        ulSignalSource,
      );

  int GetSignalSource(
    Pointer<Uint32> pulSignalSource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulSignalSource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulSignalSource,
          )>()(
        ptr.ref.lpVtbl,
        pulSignalSource,
      );

  int GetNetworkType(
    Pointer<GUID> pguidNetworkType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidNetworkType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidNetworkType,
          )>()(
        ptr.ref.lpVtbl,
        pguidNetworkType,
      );

  int PutTuningSpace(
    Pointer<GUID> guidTuningSpace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidTuningSpace,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidTuningSpace,
          )>()(
        ptr.ref.lpVtbl,
        guidTuningSpace,
      );

  int GetTuningSpace(
    Pointer<GUID> pguidTuingSpace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidTuingSpace,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidTuingSpace,
          )>()(
        ptr.ref.lpVtbl,
        pguidTuingSpace,
      );

  int RegisterDeviceFilter(
    Pointer<COMObject> pUnkFilterControl,
    Pointer<Uint32> ppvRegisitrationContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pUnkFilterControl,
            Pointer<Uint32> ppvRegisitrationContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pUnkFilterControl,
            Pointer<Uint32> ppvRegisitrationContext,
          )>()(
        ptr.ref.lpVtbl,
        pUnkFilterControl,
        ppvRegisitrationContext,
      );

  int UnRegisterDeviceFilter(
    int pvRegistrationContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 pvRegistrationContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int pvRegistrationContext,
          )>()(
        ptr.ref.lpVtbl,
        pvRegistrationContext,
      );
}
