// ITSGAuthorizeResourceSink.dart

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
const IID_ITSGAuthorizeResourceSink = '{FEDDFCD4-FA12-4435-AE55-7AD1A9779AF7}';

/// {@category Interface}
/// {@category com}
class ITSGAuthorizeResourceSink extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ITSGAuthorizeResourceSink(Pointer<COMObject> ptr) : super(ptr);

  int OnChannelAuthorized(
    int hrIn,
    GUID mainSessionId,
    int subSessionId,
    Pointer<Pointer<Utf16>> allowedResourceNames,
    int numAllowedResourceNames,
    Pointer<Pointer<Utf16>> failedResourceNames,
    int numFailedResourceNames,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hrIn,
            GUID mainSessionId,
            Int32 subSessionId,
            Pointer<Pointer<Utf16>> allowedResourceNames,
            Uint32 numAllowedResourceNames,
            Pointer<Pointer<Utf16>> failedResourceNames,
            Uint32 numFailedResourceNames,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hrIn,
            GUID mainSessionId,
            int subSessionId,
            Pointer<Pointer<Utf16>> allowedResourceNames,
            int numAllowedResourceNames,
            Pointer<Pointer<Utf16>> failedResourceNames,
            int numFailedResourceNames,
          )>()(
        ptr.ref.lpVtbl,
        hrIn,
        mainSessionId,
        subSessionId,
        allowedResourceNames,
        numAllowedResourceNames,
        failedResourceNames,
        numFailedResourceNames,
      );
}
