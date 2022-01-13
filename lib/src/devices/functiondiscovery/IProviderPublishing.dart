// IProviderPublishing.dart

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
import '../../devices/functiondiscovery/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../devices/functiondiscovery/IFunctionInstance.dart';

/// @nodoc
const IID_IProviderPublishing = '{CD1B9A04-206C-4A05-A0C8-1635A21A2B7C}';

/// {@category Interface}
/// {@category com}
class IProviderPublishing extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IProviderPublishing(Pointer<COMObject> ptr) : super(ptr);

  int CreateInstance(
    int enumVisibilityFlags,
    Pointer<Utf16> pszSubCategory,
    Pointer<Utf16> pszProviderInstanceIdentity,
    Pointer<Pointer<COMObject>> ppIFunctionInstance,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enumVisibilityFlags,
            Pointer<Utf16> pszSubCategory,
            Pointer<Utf16> pszProviderInstanceIdentity,
            Pointer<Pointer<COMObject>> ppIFunctionInstance,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enumVisibilityFlags,
            Pointer<Utf16> pszSubCategory,
            Pointer<Utf16> pszProviderInstanceIdentity,
            Pointer<Pointer<COMObject>> ppIFunctionInstance,
          )>()(
        ptr.ref.lpVtbl,
        enumVisibilityFlags,
        pszSubCategory,
        pszProviderInstanceIdentity,
        ppIFunctionInstance,
      );

  int RemoveInstance(
    int enumVisibilityFlags,
    Pointer<Utf16> pszSubCategory,
    Pointer<Utf16> pszProviderInstanceIdentity,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enumVisibilityFlags,
            Pointer<Utf16> pszSubCategory,
            Pointer<Utf16> pszProviderInstanceIdentity,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enumVisibilityFlags,
            Pointer<Utf16> pszSubCategory,
            Pointer<Utf16> pszProviderInstanceIdentity,
          )>()(
        ptr.ref.lpVtbl,
        enumVisibilityFlags,
        pszSubCategory,
        pszProviderInstanceIdentity,
      );
}
