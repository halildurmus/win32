// iaudiosessionenumerator.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../propertykey.dart';
import '../structs.g.dart';
import '../utils.dart';
import '../variant.dart';
import '../win32/ole32.g.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IAudioSessionEnumerator = '{e2f5bb11-0570-40ca-acdd-3aa01277dee8}';

/// The IAudioSessionEnumerator interface enumerates audio sessions on an
/// audio device. To get a reference to the IAudioSessionEnumerator
/// interface of the session enumerator object, the application must call
/// IAudioSessionManager2::GetSessionEnumerator.
///
/// {@category com}
class IAudioSessionEnumerator extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IAudioSessionEnumerator(super.ptr);

  factory IAudioSessionEnumerator.from(IUnknown interface) =>
      IAudioSessionEnumerator(
        interface.toInterface(IID_IAudioSessionEnumerator),
      );

  int getCount(Pointer<Int32> SessionCount) => (ptr.ref.vtable + 3)
      .cast<
        Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> SessionCount)>
        >
      >()
      .value
      .asFunction<
        int Function(Pointer, Pointer<Int32> SessionCount)
      >()(ptr.ref.lpVtbl, SessionCount);

  int getSession(int SessionCount, Pointer<Pointer<COMObject>> Session) =>
      (ptr.ref.vtable + 4)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Int32 SessionCount,
                  Pointer<Pointer<COMObject>> Session,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(
              Pointer,
              int SessionCount,
              Pointer<Pointer<COMObject>> Session,
            )
          >()(ptr.ref.lpVtbl, SessionCount, Session);
}
