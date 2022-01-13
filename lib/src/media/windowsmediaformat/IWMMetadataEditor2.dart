// IWMMetadataEditor2.dart

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

import '../../media/windowsmediaformat/IWMMetadataEditor.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMMetadataEditor2 = '{203CFFE3-2E18-4FDF-B59D-6E71530534CF}';

/// {@category Interface}
/// {@category com}
class IWMMetadataEditor2 extends IWMMetadataEditor {
  // vtable begins at 6, is 1 entries long.
  IWMMetadataEditor2(Pointer<COMObject> ptr) : super(ptr);

  int OpenEx(
    Pointer<Utf16> pwszFilename,
    int dwDesiredAccess,
    int dwShareMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszFilename,
            Uint32 dwDesiredAccess,
            Uint32 dwShareMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszFilename,
            int dwDesiredAccess,
            int dwShareMode,
          )>()(
        ptr.ref.lpVtbl,
        pwszFilename,
        dwDesiredAccess,
        dwShareMode,
      );
}
