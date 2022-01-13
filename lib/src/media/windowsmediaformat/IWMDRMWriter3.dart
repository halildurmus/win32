// IWMDRMWriter3.dart

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

import '../../media/windowsmediaformat/IWMDRMWriter2.dart';
import '../../media/windowsmediaformat/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMDRMWriter3 = '{A7184082-A4AA-4DDE-AC9C-E75DBD1117CE}';

/// {@category Interface}
/// {@category com}
class IWMDRMWriter3 extends IWMDRMWriter2 {
  // vtable begins at 8, is 1 entries long.
  IWMDRMWriter3(Pointer<COMObject> ptr) : super(ptr);

  int SetProtectStreamSamples(
    Pointer<WMDRM_IMPORT_INIT_STRUCT> pImportInitStruct,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WMDRM_IMPORT_INIT_STRUCT> pImportInitStruct,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WMDRM_IMPORT_INIT_STRUCT> pImportInitStruct,
          )>()(
        ptr.ref.lpVtbl,
        pImportInitStruct,
      );
}
