// IDxcOptimizer.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';
import '../../../graphics/direct3d/dxc/IDxcOptimizerPass.dart';
import '../../../graphics/direct3d/dxc/IDxcBlob.dart';
import '../../../graphics/direct3d/dxc/IDxcBlobEncoding.dart';

/// @nodoc
const IID_IDxcOptimizer = '{25740E2E-9CBA-401B-9119-4FB42F39F270}';

/// {@category Interface}
/// {@category com}
class IDxcOptimizer extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IDxcOptimizer(Pointer<COMObject> ptr) : super(ptr);

  int GetAvailablePassCount(
    Pointer<Uint32> pCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pCount,
          )>()(
        ptr.ref.lpVtbl,
        pCount,
      );

  int GetAvailablePass(
    int index,
    Pointer<Pointer<COMObject>> ppResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<Pointer<COMObject>> ppResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<Pointer<COMObject>> ppResult,
          )>()(
        ptr.ref.lpVtbl,
        index,
        ppResult,
      );

  int RunOptimizer(
    Pointer<COMObject> pBlob,
    Pointer<Pointer<Utf16>> ppOptions,
    int optionCount,
    Pointer<Pointer<COMObject>> pOutputModule,
    Pointer<Pointer<COMObject>> ppOutputText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pBlob,
            Pointer<Pointer<Utf16>> ppOptions,
            Uint32 optionCount,
            Pointer<Pointer<COMObject>> pOutputModule,
            Pointer<Pointer<COMObject>> ppOutputText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pBlob,
            Pointer<Pointer<Utf16>> ppOptions,
            int optionCount,
            Pointer<Pointer<COMObject>> pOutputModule,
            Pointer<Pointer<COMObject>> ppOutputText,
          )>()(
        ptr.ref.lpVtbl,
        pBlob,
        ppOptions,
        optionCount,
        pOutputModule,
        ppOutputText,
      );
}
