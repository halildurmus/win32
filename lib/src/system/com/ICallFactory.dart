// ICallFactory.dart

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
const IID_ICallFactory = '{1C733A30-2A1C-11CE-ADE5-00AA0044773D}';

/// {@category Interface}
/// {@category com}
class ICallFactory extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ICallFactory(Pointer<COMObject> ptr) : super(ptr);

  int CreateCall(
    Pointer<GUID> riid,
    Pointer<COMObject> pCtrlUnk,
    Pointer<GUID> riid2,
    Pointer<Pointer<COMObject>> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<COMObject> pCtrlUnk,
            Pointer<GUID> riid2,
            Pointer<Pointer<COMObject>> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<COMObject> pCtrlUnk,
            Pointer<GUID> riid2,
            Pointer<Pointer<COMObject>> ppv,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        pCtrlUnk,
        riid2,
        ppv,
      );
}
