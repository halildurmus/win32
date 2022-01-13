// IWTSPluginServiceProvider.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWTSPluginServiceProvider = '{D3E07363-087C-476C-86A7-DBB15F46DDB4}';

/// {@category Interface}
/// {@category com}
class IWTSPluginServiceProvider extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWTSPluginServiceProvider(Pointer<COMObject> ptr) : super(ptr);

  int GetService(
    GUID ServiceId,
    Pointer<Pointer<COMObject>> ppunkObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID ServiceId,
            Pointer<Pointer<COMObject>> ppunkObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID ServiceId,
            Pointer<Pointer<COMObject>> ppunkObject,
          )>()(
        ptr.ref.lpVtbl,
        ServiceId,
        ppunkObject,
      );
}
