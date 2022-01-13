// ISettingsIdentity.dart

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
const IID_ISettingsIdentity = '{9F7D7BB6-20B3-11DA-81A5-0030F1642E3C}';

/// {@category Interface}
/// {@category com}
class ISettingsIdentity extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ISettingsIdentity(Pointer<COMObject> ptr) : super(ptr);

  int GetAttribute(
    Pointer Reserved,
    Pointer<Utf16> Name,
    Pointer<Pointer<Utf16>> Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer Reserved,
            Pointer<Utf16> Name,
            Pointer<Pointer<Utf16>> Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer Reserved,
            Pointer<Utf16> Name,
            Pointer<Pointer<Utf16>> Value,
          )>()(
        ptr.ref.lpVtbl,
        Reserved,
        Name,
        Value,
      );

  int SetAttribute(
    Pointer Reserved,
    Pointer<Utf16> Name,
    Pointer<Utf16> Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer Reserved,
            Pointer<Utf16> Name,
            Pointer<Utf16> Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer Reserved,
            Pointer<Utf16> Name,
            Pointer<Utf16> Value,
          )>()(
        ptr.ref.lpVtbl,
        Reserved,
        Name,
        Value,
      );

  int GetFlags(
    Pointer<Uint32> Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> Flags,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
      );

  int SetFlags(
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
      );
}
