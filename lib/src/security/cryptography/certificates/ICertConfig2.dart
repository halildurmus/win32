// ICertConfig2.dart

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

import '../../../security/cryptography/certificates/ICertConfig.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_ICertConfig2 = '{7A18EDDE-7E78-4163-8DED-78E2C9CEE924}';

/// {@category Interface}
/// {@category com}
class ICertConfig2 extends ICertConfig {
  // vtable begins at 11, is 1 entries long.
  ICertConfig2(Pointer<COMObject> ptr) : super(ptr);

  int SetSharedFolder(
    Pointer<Utf16> strSharedFolder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strSharedFolder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strSharedFolder,
          )>()(
        ptr.ref.lpVtbl,
        strSharedFolder,
      );
}
