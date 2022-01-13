// IRegisteredSyncProvider.dart

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
import '../../ui/shell/propertiessystem/IPropertyStore.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IRegisteredSyncProvider = '{913BCF76-47C1-40B5-A896-5E8A9C414C14}';

/// {@category Interface}
/// {@category com}
class IRegisteredSyncProvider extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IRegisteredSyncProvider(Pointer<COMObject> ptr) : super(ptr);

  int Init(
    Pointer<GUID> pguidInstanceId,
    Pointer<GUID> pguidContentType,
    Pointer<COMObject> pContextPropertyStore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidInstanceId,
            Pointer<GUID> pguidContentType,
            Pointer<COMObject> pContextPropertyStore,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidInstanceId,
            Pointer<GUID> pguidContentType,
            Pointer<COMObject> pContextPropertyStore,
          )>()(
        ptr.ref.lpVtbl,
        pguidInstanceId,
        pguidContentType,
        pContextPropertyStore,
      );

  int GetInstanceId(
    Pointer<GUID> pguidInstanceId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidInstanceId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidInstanceId,
          )>()(
        ptr.ref.lpVtbl,
        pguidInstanceId,
      );

  int Reset() => ptr.ref.lpVtbl.value
          .elementAt(5)
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
