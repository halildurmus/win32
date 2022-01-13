// IWMStatusCallback.dart

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
import '../../media/windowsmediaformat/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMStatusCallback = '{6D7CDC70-9888-11D3-8EDC-00C04F6109CF}';

/// {@category Interface}
/// {@category com}
class IWMStatusCallback extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWMStatusCallback(Pointer<COMObject> ptr) : super(ptr);

  int OnStatus(
    int Status,
    int hr,
    int dwType,
    Pointer<Uint8> pValue,
    Pointer pvContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Status,
            Int32 hr,
            Int32 dwType,
            Pointer<Uint8> pValue,
            Pointer pvContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Status,
            int hr,
            int dwType,
            Pointer<Uint8> pValue,
            Pointer pvContext,
          )>()(
        ptr.ref.lpVtbl,
        Status,
        hr,
        dwType,
        pValue,
        pvContext,
      );
}
