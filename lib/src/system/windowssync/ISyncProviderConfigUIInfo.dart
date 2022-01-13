// ISyncProviderConfigUIInfo.dart

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
import '../../system/windowssync/ISyncProviderConfigUI.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISyncProviderConfigUIInfo = '{214141AE-33D7-4D8D-8E37-F227E880CE50}';

/// {@category Interface}
/// {@category com}
class ISyncProviderConfigUIInfo extends IPropertyStore {
  // vtable begins at 8, is 1 entries long.
  ISyncProviderConfigUIInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetSyncProviderConfigUI(
    int dwClsContext,
    Pointer<Pointer<COMObject>> ppSyncProviderConfigUI,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwClsContext,
            Pointer<Pointer<COMObject>> ppSyncProviderConfigUI,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwClsContext,
            Pointer<Pointer<COMObject>> ppSyncProviderConfigUI,
          )>()(
        ptr.ref.lpVtbl,
        dwClsContext,
        ppSyncProviderConfigUI,
      );
}
