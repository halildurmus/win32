// IMFTopologyServiceLookup.dart

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
import '../../media/mediafoundation/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFTopologyServiceLookup = '{FA993889-4383-415A-A930-DD472A8CF6F7}';

/// {@category Interface}
/// {@category com}
class IMFTopologyServiceLookup extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFTopologyServiceLookup(Pointer<COMObject> ptr) : super(ptr);

  int LookupService(
    int Type,
    int dwIndex,
    Pointer<GUID> guidService,
    Pointer<GUID> riid,
    Pointer<Pointer> ppvObjects,
    Pointer<Uint32> pnObjects,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Type,
            Uint32 dwIndex,
            Pointer<GUID> guidService,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvObjects,
            Pointer<Uint32> pnObjects,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Type,
            int dwIndex,
            Pointer<GUID> guidService,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvObjects,
            Pointer<Uint32> pnObjects,
          )>()(
        ptr.ref.lpVtbl,
        Type,
        dwIndex,
        guidService,
        riid,
        ppvObjects,
        pnObjects,
      );
}
