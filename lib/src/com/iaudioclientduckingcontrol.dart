// iaudioclientduckingcontrol.dart

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
import '../structs.g.dart';
import '../utils.dart';
import '../variant.dart';
import '../win32/ole32.g.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IAudioClientDuckingControl = '{c789d381-a28c-4168-b28f-d3a837924dc3}';

/// Provides a method, `SetDuckingOptionsForCurrentStream`, that allows an
/// app to specify that the system shouldn't duck the audio of other streams
/// when the app's audio render stream is active.
///
/// {@category com}
class IAudioClientDuckingControl extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAudioClientDuckingControl(super.ptr);

  factory IAudioClientDuckingControl.from(IUnknown interface) =>
      IAudioClientDuckingControl(
          interface.toInterface(IID_IAudioClientDuckingControl));

  int setDuckingOptionsForCurrentStream(int options) => ptr.ref.vtable
      .elementAt(3)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer, Int32 options)>>>()
      .value
      .asFunction<
          int Function(Pointer, int options)>()(ptr.ref.lpVtbl, options);
}
