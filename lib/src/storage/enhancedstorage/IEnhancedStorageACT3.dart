// IEnhancedStorageACT3.dart

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

import '../../storage/enhancedstorage/IEnhancedStorageACT2.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IEnhancedStorageACT3 = '{022150A1-113D-11DF-BB61-001AA01BBC58}';

/// {@category Interface}
/// {@category com}
class IEnhancedStorageACT3 extends IEnhancedStorageACT2 {
  // vtable begins at 11, is 3 entries long.
  IEnhancedStorageACT3(Pointer<COMObject> ptr) : super(ptr);

  int UnauthorizeEx(
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
      );

  int IsQueueFrozen(
    Pointer<Int32> pIsQueueFrozen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pIsQueueFrozen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pIsQueueFrozen,
          )>()(
        ptr.ref.lpVtbl,
        pIsQueueFrozen,
      );

  int GetShellExtSupport(
    Pointer<Int32> pShellExtSupport,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pShellExtSupport,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pShellExtSupport,
          )>()(
        ptr.ref.lpVtbl,
        pShellExtSupport,
      );
}
