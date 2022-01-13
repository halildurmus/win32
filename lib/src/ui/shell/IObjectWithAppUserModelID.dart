// IObjectWithAppUserModelID.dart

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
const IID_IObjectWithAppUserModelID = '{36DB0196-9665-46D1-9BA7-D3709EECF9ED}';

/// {@category Interface}
/// {@category com}
class IObjectWithAppUserModelID extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IObjectWithAppUserModelID(Pointer<COMObject> ptr) : super(ptr);

  int SetAppID(
    Pointer<Utf16> pszAppID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszAppID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszAppID,
          )>()(
        ptr.ref.lpVtbl,
        pszAppID,
      );

  int GetAppID(
    Pointer<Pointer<Utf16>> ppszAppID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszAppID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszAppID,
          )>()(
        ptr.ref.lpVtbl,
        ppszAppID,
      );
}
