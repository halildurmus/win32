// IWbemProviderInit.dart

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
import '../../system/wmi/IWbemServices.dart';
import '../../system/wmi/IWbemContext.dart';
import '../../system/wmi/IWbemProviderInitSink.dart';

/// @nodoc
const IID_IWbemProviderInit = '{1BE41572-91DD-11D1-AEB2-00C04FB68820}';

/// {@category Interface}
/// {@category com}
class IWbemProviderInit extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWbemProviderInit(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<Utf16> wszUser,
    int lFlags,
    Pointer<Utf16> wszNamespace,
    Pointer<Utf16> wszLocale,
    Pointer<COMObject> pNamespace,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pInitSink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszUser,
            Int32 lFlags,
            Pointer<Utf16> wszNamespace,
            Pointer<Utf16> wszLocale,
            Pointer<COMObject> pNamespace,
            Pointer<COMObject> pCtx,
            Pointer<COMObject> pInitSink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszUser,
            int lFlags,
            Pointer<Utf16> wszNamespace,
            Pointer<Utf16> wszLocale,
            Pointer<COMObject> pNamespace,
            Pointer<COMObject> pCtx,
            Pointer<COMObject> pInitSink,
          )>()(
        ptr.ref.lpVtbl,
        wszUser,
        lFlags,
        wszNamespace,
        wszLocale,
        pNamespace,
        pCtx,
        pInitSink,
      );
}
