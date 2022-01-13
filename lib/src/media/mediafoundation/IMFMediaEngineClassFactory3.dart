// IMFMediaEngineClassFactory3.dart

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
import '../../ui/shell/propertiessystem/IPropertyStore.dart';
import '../../media/mediafoundation/IMFMediaKeySystemAccess.dart';

/// @nodoc
const IID_IMFMediaEngineClassFactory3 =
    '{3787614F-65F7-4003-B673-EAD8293A0E60}';

/// {@category Interface}
/// {@category com}
class IMFMediaEngineClassFactory3 extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFMediaEngineClassFactory3(Pointer<COMObject> ptr) : super(ptr);

  int CreateMediaKeySystemAccess(
    Pointer<Utf16> keySystem,
    Pointer<Pointer<COMObject>> ppSupportedConfigurationsArray,
    int uSize,
    Pointer<Pointer<COMObject>> ppKeyAccess,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> keySystem,
            Pointer<Pointer<COMObject>> ppSupportedConfigurationsArray,
            Uint32 uSize,
            Pointer<Pointer<COMObject>> ppKeyAccess,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> keySystem,
            Pointer<Pointer<COMObject>> ppSupportedConfigurationsArray,
            int uSize,
            Pointer<Pointer<COMObject>> ppKeyAccess,
          )>()(
        ptr.ref.lpVtbl,
        keySystem,
        ppSupportedConfigurationsArray,
        uSize,
        ppKeyAccess,
      );
}
