// IUserAccountChangeCallback.dart

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
const IID_IUserAccountChangeCallback = '{A561E69A-B4B8-4113-91A5-64C6BCCA3430}';

/// {@category Interface}
/// {@category com}
class IUserAccountChangeCallback extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUserAccountChangeCallback(Pointer<COMObject> ptr) : super(ptr);

  int OnPictureChange(
    Pointer<Utf16> pszUserName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszUserName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszUserName,
          )>()(
        ptr.ref.lpVtbl,
        pszUserName,
      );
}
