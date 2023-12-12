// iactivateaudiointerfacecompletionhandler.dart

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
const IID_IActivateAudioInterfaceCompletionHandler =
    '{41d949ab-9862-444a-80f6-c261334da5eb}';

/// Provides a callback to indicate that activation of a WASAPI interface is
/// complete.
///
/// {@category com}
class IActivateAudioInterfaceCompletionHandler extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IActivateAudioInterfaceCompletionHandler(super.ptr);

  factory IActivateAudioInterfaceCompletionHandler.from(IUnknown interface) =>
      IActivateAudioInterfaceCompletionHandler(
          interface.toInterface(IID_IActivateAudioInterfaceCompletionHandler));

  int activateCompleted(Pointer<COMObject> activateOperation) => ptr.ref.vtable
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
                          Pointer, Pointer<COMObject> activateOperation)>>>()
          .value
          .asFunction<
              int Function(Pointer, Pointer<COMObject> activateOperation)>()(
      ptr.ref.lpVtbl, activateOperation);
}
