// ID3D12VideoDecoder1.dart

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

import '../../media/mediafoundation/ID3D12VideoDecoder.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID3D12VideoDecoder1 = '{79A2E5FB-CCD2-469A-9FDE-195D10951F7E}';

/// {@category Interface}
/// {@category com}
class ID3D12VideoDecoder1 extends ID3D12VideoDecoder {
  // vtable begins at 9, is 1 entries long.
  ID3D12VideoDecoder1(Pointer<COMObject> ptr) : super(ptr);

  int GetProtectedResourceSession(
    Pointer<GUID> riid,
    Pointer<Pointer> ppProtectedSession,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppProtectedSession,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppProtectedSession,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        ppProtectedSession,
      );
}
