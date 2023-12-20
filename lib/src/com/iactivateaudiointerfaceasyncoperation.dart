// iactivateaudiointerfaceasyncoperation.dart

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
const IID_IActivateAudioInterfaceAsyncOperation =
    '{72a22d78-cde4-431d-b8cc-843a71199b6d}';

/// Represents an asynchronous operation activating a WASAPI interface and
/// provides a method to retrieve the results of the activation.
///
/// {@category com}
class IActivateAudioInterfaceAsyncOperation extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IActivateAudioInterfaceAsyncOperation(super.ptr);

  factory IActivateAudioInterfaceAsyncOperation.from(IUnknown interface) =>
      IActivateAudioInterfaceAsyncOperation(
          interface.toInterface(IID_IActivateAudioInterfaceAsyncOperation));

  int
      getActivateResult(Pointer<Int32> activateResult,
              Pointer<Pointer<COMObject>> activatedInterface) =>
          ptr.ref.vtable
                  .elementAt(3)
                  .cast<
                      Pointer<
                          NativeFunction<
                              Int32 Function(
                                  Pointer,
                                  Pointer<Int32> activateResult,
                                  Pointer<Pointer<COMObject>>
                                      activatedInterface)>>>()
                  .value
                  .asFunction<
                      int Function(Pointer, Pointer<Int32> activateResult,
                          Pointer<Pointer<COMObject>> activatedInterface)>()(
              ptr.ref.lpVtbl, activateResult, activatedInterface);
}
