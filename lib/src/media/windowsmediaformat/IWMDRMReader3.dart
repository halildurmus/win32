// IWMDRMReader3.dart

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

import '../../media/windowsmediaformat/IWMDRMReader2.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMDRMReader3 = '{E08672DE-F1E7-4FF4-A0A3-FC4B08E4CAF8}';

/// {@category Interface}
/// {@category com}
class IWMDRMReader3 extends IWMDRMReader2 {
  // vtable begins at 15, is 1 entries long.
  IWMDRMReader3(Pointer<COMObject> ptr) : super(ptr);

  int GetInclusionList(
    Pointer<Pointer<GUID>> ppGuids,
    Pointer<Uint32> pcGuids,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<GUID>> ppGuids,
            Pointer<Uint32> pcGuids,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<GUID>> ppGuids,
            Pointer<Uint32> pcGuids,
          )>()(
        ptr.ref.lpVtbl,
        ppGuids,
        pcGuids,
      );
}
