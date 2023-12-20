// iaudioclockadjustment.dart

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
const IID_IAudioClockAdjustment = '{f6e4c0a0-46d9-4fb8-be21-57a3ef2b626c}';

/// The IAudioClockAdjustment interface is used to adjust the sample rate of
/// a stream. The client obtains a reference to the `IAudioClockAdjustment`
/// interface of a stream object by calling the `IAudioClient::GetService`
/// method with parameter `riid` set to REFIID [IID_IAudioClockAdjustment].
/// Adjusting the sample rate is not supported for exclusive mode streams.
///
/// {@category com}
class IAudioClockAdjustment extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAudioClockAdjustment(super.ptr);

  factory IAudioClockAdjustment.from(IUnknown interface) =>
      IAudioClockAdjustment(interface.toInterface(IID_IAudioClockAdjustment));

  int setSampleRate(double flSampleRate) => ptr.ref.vtable
      .elementAt(3)
      .cast<
          Pointer<
              NativeFunction<Int32 Function(Pointer, Float flSampleRate)>>>()
      .value
      .asFunction<
          int Function(
              Pointer, double flSampleRate)>()(ptr.ref.lpVtbl, flSampleRate);
}
