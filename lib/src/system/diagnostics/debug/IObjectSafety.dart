// IObjectSafety.dart

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
const IID_IObjectSafety = '{CB5BDC81-93C1-11CF-8F20-00805F2CD064}';

/// {@category Interface}
/// {@category com}
class IObjectSafety extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IObjectSafety(Pointer<COMObject> ptr) : super(ptr);

  int GetInterfaceSafetyOptions(
    Pointer<GUID> riid,
    Pointer<Uint32> pdwSupportedOptions,
    Pointer<Uint32> pdwEnabledOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Uint32> pdwSupportedOptions,
            Pointer<Uint32> pdwEnabledOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Uint32> pdwSupportedOptions,
            Pointer<Uint32> pdwEnabledOptions,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        pdwSupportedOptions,
        pdwEnabledOptions,
      );

  int SetInterfaceSafetyOptions(
    Pointer<GUID> riid,
    int dwOptionSetMask,
    int dwEnabledOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Uint32 dwOptionSetMask,
            Uint32 dwEnabledOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            int dwOptionSetMask,
            int dwEnabledOptions,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        dwOptionSetMask,
        dwEnabledOptions,
      );
}
