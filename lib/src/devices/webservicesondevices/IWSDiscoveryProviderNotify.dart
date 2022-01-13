// IWSDiscoveryProviderNotify.dart

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
import '../../devices/webservicesondevices/IWSDiscoveredService.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWSDiscoveryProviderNotify = '{73EE3CED-B6E6-4329-A546-3E8AD46563D2}';

/// {@category Interface}
/// {@category com}
class IWSDiscoveryProviderNotify extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IWSDiscoveryProviderNotify(Pointer<COMObject> ptr) : super(ptr);

  int Add(
    Pointer<COMObject> pService,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pService,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pService,
          )>()(
        ptr.ref.lpVtbl,
        pService,
      );

  int Remove(
    Pointer<COMObject> pService,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pService,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pService,
          )>()(
        ptr.ref.lpVtbl,
        pService,
      );

  int SearchFailed(
    int hr,
    Pointer<Utf16> pszTag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hr,
            Pointer<Utf16> pszTag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hr,
            Pointer<Utf16> pszTag,
          )>()(
        ptr.ref.lpVtbl,
        hr,
        pszTag,
      );

  int SearchComplete(
    Pointer<Utf16> pszTag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszTag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszTag,
          )>()(
        ptr.ref.lpVtbl,
        pszTag,
      );
}
