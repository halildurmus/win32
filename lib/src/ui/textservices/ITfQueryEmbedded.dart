// ITfQueryEmbedded.dart

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
import '../../system/com/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITfQueryEmbedded = '{0FAB9BDB-D250-4169-84E5-6BE118FDD7A8}';

/// {@category Interface}
/// {@category com}
class ITfQueryEmbedded extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ITfQueryEmbedded(Pointer<COMObject> ptr) : super(ptr);

  int QueryInsertEmbedded(
    Pointer<GUID> pguidService,
    Pointer<FORMATETC> pFormatEtc,
    Pointer<Int32> pfInsertable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidService,
            Pointer<FORMATETC> pFormatEtc,
            Pointer<Int32> pfInsertable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidService,
            Pointer<FORMATETC> pFormatEtc,
            Pointer<Int32> pfInsertable,
          )>()(
        ptr.ref.lpVtbl,
        pguidService,
        pFormatEtc,
        pfInsertable,
      );
}
