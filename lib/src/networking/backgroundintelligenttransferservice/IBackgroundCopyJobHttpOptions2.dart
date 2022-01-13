// IBackgroundCopyJobHttpOptions2.dart

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

import '../../networking/backgroundintelligenttransferservice/IBackgroundCopyJobHttpOptions.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IBackgroundCopyJobHttpOptions2 =
    '{B591A192-A405-4FC3-8323-4C5C542578FC}';

/// {@category Interface}
/// {@category com}
class IBackgroundCopyJobHttpOptions2 extends IBackgroundCopyJobHttpOptions {
  // vtable begins at 11, is 2 entries long.
  IBackgroundCopyJobHttpOptions2(Pointer<COMObject> ptr) : super(ptr);

  int SetHttpMethod(
    Pointer<Utf16> method,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> method,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> method,
          )>()(
        ptr.ref.lpVtbl,
        method,
      );

  int GetHttpMethod(
    Pointer<Pointer<Utf16>> method,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> method,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> method,
          )>()(
        ptr.ref.lpVtbl,
        method,
      );
}
