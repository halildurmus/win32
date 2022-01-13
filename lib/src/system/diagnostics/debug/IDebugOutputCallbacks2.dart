// IDebugOutputCallbacks2.dart

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

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDebugOutputCallbacks2 = '{67721FE9-56D2-4A44-A325-2B65513CE6EB}';

/// {@category Interface}
/// {@category com}
class IDebugOutputCallbacks2 extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IDebugOutputCallbacks2(Pointer<COMObject> ptr) : super(ptr);

  int Output(
    int Mask,
    Pointer<Utf8> Text,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Mask,
            Pointer<Utf8> Text,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Mask,
            Pointer<Utf8> Text,
          )>()(
        ptr.ref.lpVtbl,
        Mask,
        Text,
      );

  int GetInterestMask(
    Pointer<Uint32> Mask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> Mask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> Mask,
          )>()(
        ptr.ref.lpVtbl,
        Mask,
      );

  int Output2(
    int Which,
    int Flags,
    int Arg,
    Pointer<Utf16> Text,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Which,
            Uint32 Flags,
            Uint64 Arg,
            Pointer<Utf16> Text,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Which,
            int Flags,
            int Arg,
            Pointer<Utf16> Text,
          )>()(
        ptr.ref.lpVtbl,
        Which,
        Flags,
        Arg,
        Text,
      );
}
