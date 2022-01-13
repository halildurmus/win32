// ISyncProviderInfo.dart

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

import '../../ui/shell/propertiessystem/IPropertyStore.dart';
import '../../system/windowssync/IRegisteredSyncProvider.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISyncProviderInfo = '{1EE135DE-88A4-4504-B0D0-F7920D7E5BA6}';

/// {@category Interface}
/// {@category com}
class ISyncProviderInfo extends IPropertyStore {
  // vtable begins at 8, is 1 entries long.
  ISyncProviderInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetSyncProvider(
    int dwClsContext,
    Pointer<Pointer<COMObject>> ppSyncProvider,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwClsContext,
            Pointer<Pointer<COMObject>> ppSyncProvider,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwClsContext,
            Pointer<Pointer<COMObject>> ppSyncProvider,
          )>()(
        ptr.ref.lpVtbl,
        dwClsContext,
        ppSyncProvider,
      );
}
