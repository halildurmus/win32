// IContentPrefetcherTaskTrigger.dart

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

import '../../system/winrt/IInspectable.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IContentPrefetcherTaskTrigger =
    '{1B35A14A-6094-4799-A60E-E474E15D4DC9}';

/// {@category Interface}
/// {@category com}
class IContentPrefetcherTaskTrigger extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IContentPrefetcherTaskTrigger(Pointer<COMObject> ptr) : super(ptr);

  int TriggerContentPrefetcherTask(
    Pointer<Utf16> packageFullName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> packageFullName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> packageFullName,
          )>()(
        ptr.ref.lpVtbl,
        packageFullName,
      );

  int IsRegisteredForContentPrefetch(
    Pointer<Utf16> packageFullName,
    Pointer<Uint8> isRegistered,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> packageFullName,
            Pointer<Uint8> isRegistered,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> packageFullName,
            Pointer<Uint8> isRegistered,
          )>()(
        ptr.ref.lpVtbl,
        packageFullName,
        isRegistered,
      );
}
