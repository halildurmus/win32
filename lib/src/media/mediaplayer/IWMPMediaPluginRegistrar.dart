// IWMPMediaPluginRegistrar.dart

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
const IID_IWMPMediaPluginRegistrar = '{68E27045-05BD-40B2-9720-23088C78E390}';

/// {@category Interface}
/// {@category com}
class IWMPMediaPluginRegistrar extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWMPMediaPluginRegistrar(Pointer<COMObject> ptr) : super(ptr);

  int WMPRegisterPlayerPlugin(
    Pointer<Utf16> pwszFriendlyName,
    Pointer<Utf16> pwszDescription,
    Pointer<Utf16> pwszUninstallString,
    int dwPriority,
    GUID guidPluginType,
    GUID clsid,
    int cMediaTypes,
    Pointer pMediaTypes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszFriendlyName,
            Pointer<Utf16> pwszDescription,
            Pointer<Utf16> pwszUninstallString,
            Uint32 dwPriority,
            GUID guidPluginType,
            GUID clsid,
            Uint32 cMediaTypes,
            Pointer pMediaTypes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszFriendlyName,
            Pointer<Utf16> pwszDescription,
            Pointer<Utf16> pwszUninstallString,
            int dwPriority,
            GUID guidPluginType,
            GUID clsid,
            int cMediaTypes,
            Pointer pMediaTypes,
          )>()(
        ptr.ref.lpVtbl,
        pwszFriendlyName,
        pwszDescription,
        pwszUninstallString,
        dwPriority,
        guidPluginType,
        clsid,
        cMediaTypes,
        pMediaTypes,
      );

  int WMPUnRegisterPlayerPlugin(
    GUID guidPluginType,
    GUID clsid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID guidPluginType,
            GUID clsid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID guidPluginType,
            GUID clsid,
          )>()(
        ptr.ref.lpVtbl,
        guidPluginType,
        clsid,
      );
}
