// IComTrackingInfoProperties.dart

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
const IID_IComTrackingInfoProperties = '{789B42BE-6F6B-443A-898E-67ABF390AA14}';

/// {@category Interface}
/// {@category com}
class IComTrackingInfoProperties extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IComTrackingInfoProperties(Pointer<COMObject> ptr) : super(ptr);

  int PropCount(
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

  int GetPropName(
    int ulIndex,
    Pointer<Pointer<Utf16>> ppszPropName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulIndex,
            Pointer<Pointer<Utf16>> ppszPropName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulIndex,
            Pointer<Pointer<Utf16>> ppszPropName,
          )>()(
        ptr.ref.lpVtbl,
        ulIndex,
        ppszPropName,
      );
}
