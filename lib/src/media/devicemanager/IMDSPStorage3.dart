// IMDSPStorage3.dart

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

import '../../media/devicemanager/IMDSPStorage2.dart';
import '../../media/devicemanager/IWMDMMetaData.dart';
import '../../foundation/structs.g.dart';
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IMDSPStorage3 = '{6C669867-97ED-4A67-9706-1C5529D2A414}';

/// {@category Interface}
/// {@category com}
class IMDSPStorage3 extends IMDSPStorage2 {
  // vtable begins at 17, is 2 entries long.
  IMDSPStorage3(Pointer<COMObject> ptr) : super(ptr);

  int GetMetadata(
    Pointer<COMObject> pMetadata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pMetadata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pMetadata,
          )>()(
        ptr.ref.lpVtbl,
        pMetadata,
      );

  int SetMetadata(
    Pointer<COMObject> pMetadata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pMetadata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pMetadata,
          )>()(
        ptr.ref.lpVtbl,
        pMetadata,
      );
}
