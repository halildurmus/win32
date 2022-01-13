// ICheckSxsConfig.dart

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
const IID_ICheckSxsConfig = '{0FF5A96F-11FC-47D1-BAA6-25DD347E7242}';

/// {@category Interface}
/// {@category com}
class ICheckSxsConfig extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ICheckSxsConfig(Pointer<COMObject> ptr) : super(ptr);

  int IsSameSxsConfig(
    Pointer<Utf16> wszSxsName,
    Pointer<Utf16> wszSxsDirectory,
    Pointer<Utf16> wszSxsAppName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszSxsName,
            Pointer<Utf16> wszSxsDirectory,
            Pointer<Utf16> wszSxsAppName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszSxsName,
            Pointer<Utf16> wszSxsDirectory,
            Pointer<Utf16> wszSxsAppName,
          )>()(
        ptr.ref.lpVtbl,
        wszSxsName,
        wszSxsDirectory,
        wszSxsAppName,
      );
}
