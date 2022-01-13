// IPNPXDeviceAssociation.dart

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
import '../../devices/functiondiscovery/IFunctionDiscoveryNotification.dart';

/// @nodoc
const IID_IPNPXDeviceAssociation = '{EED366D0-35B8-4FC5-8D20-7E5BD31F6DED}';

/// {@category Interface}
/// {@category com}
class IPNPXDeviceAssociation extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IPNPXDeviceAssociation(Pointer<COMObject> ptr) : super(ptr);

  int Associate(
    Pointer<Utf16> pszSubCategory,
    Pointer<COMObject> pIFunctionDiscoveryNotification,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszSubCategory,
            Pointer<COMObject> pIFunctionDiscoveryNotification,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszSubCategory,
            Pointer<COMObject> pIFunctionDiscoveryNotification,
          )>()(
        ptr.ref.lpVtbl,
        pszSubCategory,
        pIFunctionDiscoveryNotification,
      );

  int Unassociate(
    Pointer<Utf16> pszSubCategory,
    Pointer<COMObject> pIFunctionDiscoveryNotification,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszSubCategory,
            Pointer<COMObject> pIFunctionDiscoveryNotification,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszSubCategory,
            Pointer<COMObject> pIFunctionDiscoveryNotification,
          )>()(
        ptr.ref.lpVtbl,
        pszSubCategory,
        pIFunctionDiscoveryNotification,
      );

  int Delete(
    Pointer<Utf16> pszSubcategory,
    Pointer<COMObject> pIFunctionDiscoveryNotification,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszSubcategory,
            Pointer<COMObject> pIFunctionDiscoveryNotification,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszSubcategory,
            Pointer<COMObject> pIFunctionDiscoveryNotification,
          )>()(
        ptr.ref.lpVtbl,
        pszSubcategory,
        pIFunctionDiscoveryNotification,
      );
}
