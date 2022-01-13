// ITfReverseConversionMgr.dart

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
import '../../ui/textservices/ITfReverseConversion.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITfReverseConversionMgr = '{B643C236-C493-41B6-ABB3-692412775CC4}';

/// {@category Interface}
/// {@category com}
class ITfReverseConversionMgr extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ITfReverseConversionMgr(Pointer<COMObject> ptr) : super(ptr);

  int GetReverseConversion(
    int langid,
    Pointer<GUID> guidProfile,
    int dwflag,
    Pointer<Pointer<COMObject>> ppReverseConversion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 langid,
            Pointer<GUID> guidProfile,
            Uint32 dwflag,
            Pointer<Pointer<COMObject>> ppReverseConversion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int langid,
            Pointer<GUID> guidProfile,
            int dwflag,
            Pointer<Pointer<COMObject>> ppReverseConversion,
          )>()(
        ptr.ref.lpVtbl,
        langid,
        guidProfile,
        dwflag,
        ppReverseConversion,
      );
}
