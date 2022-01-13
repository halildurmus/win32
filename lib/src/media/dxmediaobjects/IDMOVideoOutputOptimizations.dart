// IDMOVideoOutputOptimizations.dart

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

/// @nodoc
const IID_IDMOVideoOutputOptimizations =
    '{BE8F4F4E-5B16-4D29-B350-7F6B5D9298AC}';

/// {@category Interface}
/// {@category com}
class IDMOVideoOutputOptimizations extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IDMOVideoOutputOptimizations(Pointer<COMObject> ptr) : super(ptr);

  int QueryOperationModePreferences(
    int ulOutputStreamIndex,
    Pointer<Uint32> pdwRequestedCapabilities,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulOutputStreamIndex,
            Pointer<Uint32> pdwRequestedCapabilities,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulOutputStreamIndex,
            Pointer<Uint32> pdwRequestedCapabilities,
          )>()(
        ptr.ref.lpVtbl,
        ulOutputStreamIndex,
        pdwRequestedCapabilities,
      );

  int SetOperationMode(
    int ulOutputStreamIndex,
    int dwEnabledFeatures,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulOutputStreamIndex,
            Uint32 dwEnabledFeatures,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulOutputStreamIndex,
            int dwEnabledFeatures,
          )>()(
        ptr.ref.lpVtbl,
        ulOutputStreamIndex,
        dwEnabledFeatures,
      );

  int GetCurrentOperationMode(
    int ulOutputStreamIndex,
    Pointer<Uint32> pdwEnabledFeatures,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulOutputStreamIndex,
            Pointer<Uint32> pdwEnabledFeatures,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulOutputStreamIndex,
            Pointer<Uint32> pdwEnabledFeatures,
          )>()(
        ptr.ref.lpVtbl,
        ulOutputStreamIndex,
        pdwEnabledFeatures,
      );

  int GetCurrentSampleRequirements(
    int ulOutputStreamIndex,
    Pointer<Uint32> pdwRequestedFeatures,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulOutputStreamIndex,
            Pointer<Uint32> pdwRequestedFeatures,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulOutputStreamIndex,
            Pointer<Uint32> pdwRequestedFeatures,
          )>()(
        ptr.ref.lpVtbl,
        ulOutputStreamIndex,
        pdwRequestedFeatures,
      );
}
