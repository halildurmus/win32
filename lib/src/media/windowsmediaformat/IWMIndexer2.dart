// IWMIndexer2.dart

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

import '../../media/windowsmediaformat/IWMIndexer.dart';
import '../../media/windowsmediaformat/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMIndexer2 = '{B70F1E42-6255-4DF0-A6B9-02B212D9E2BB}';

/// {@category Interface}
/// {@category com}
class IWMIndexer2 extends IWMIndexer {
  // vtable begins at 5, is 1 entries long.
  IWMIndexer2(Pointer<COMObject> ptr) : super(ptr);

  int Configure(
    int wStreamNum,
    int nIndexerType,
    Pointer pvInterval,
    Pointer pvIndexType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNum,
            Int32 nIndexerType,
            Pointer pvInterval,
            Pointer pvIndexType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNum,
            int nIndexerType,
            Pointer pvInterval,
            Pointer pvIndexType,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNum,
        nIndexerType,
        pvInterval,
        pvIndexType,
      );
}
