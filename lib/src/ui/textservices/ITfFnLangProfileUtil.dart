// ITfFnLangProfileUtil.dart

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

import '../../ui/textservices/ITfFunction.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITfFnLangProfileUtil = '{A87A8574-A6C1-4E15-99F0-3D3965F548EB}';

/// {@category Interface}
/// {@category com}
class ITfFnLangProfileUtil extends ITfFunction {
  // vtable begins at 4, is 2 entries long.
  ITfFnLangProfileUtil(Pointer<COMObject> ptr) : super(ptr);

  int RegisterActiveProfiles() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int IsProfileAvailableForLang(
    int langid,
    Pointer<Int32> pfAvailable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 langid,
            Pointer<Int32> pfAvailable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int langid,
            Pointer<Int32> pfAvailable,
          )>()(
        ptr.ref.lpVtbl,
        langid,
        pfAvailable,
      );
}
