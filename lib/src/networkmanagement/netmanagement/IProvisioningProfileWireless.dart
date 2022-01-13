// IProvisioningProfileWireless.dart

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
const IID_IProvisioningProfileWireless =
    '{C96FBD51-24DD-11D8-89FB-00904B2EA9C6}';

/// {@category Interface}
/// {@category com}
class IProvisioningProfileWireless extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IProvisioningProfileWireless(Pointer<COMObject> ptr) : super(ptr);

  int CreateProfile(
    Pointer<Utf16> bstrXMLWirelessConfigProfile,
    Pointer<Utf16> bstrXMLConnectionConfigProfile,
    Pointer<GUID> pAdapterInstanceGuid,
    Pointer<Uint32> pulStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrXMLWirelessConfigProfile,
            Pointer<Utf16> bstrXMLConnectionConfigProfile,
            Pointer<GUID> pAdapterInstanceGuid,
            Pointer<Uint32> pulStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrXMLWirelessConfigProfile,
            Pointer<Utf16> bstrXMLConnectionConfigProfile,
            Pointer<GUID> pAdapterInstanceGuid,
            Pointer<Uint32> pulStatus,
          )>()(
        ptr.ref.lpVtbl,
        bstrXMLWirelessConfigProfile,
        bstrXMLConnectionConfigProfile,
        pAdapterInstanceGuid,
        pulStatus,
      );
}
