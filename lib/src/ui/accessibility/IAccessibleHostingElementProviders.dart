// IAccessibleHostingElementProviders.dart

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
import '../../system/com/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../ui/accessibility/IRawElementProviderSimple.dart';

/// @nodoc
const IID_IAccessibleHostingElementProviders =
    '{33AC331B-943E-4020-B295-DB37784974A3}';

/// {@category Interface}
/// {@category com}
class IAccessibleHostingElementProviders extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IAccessibleHostingElementProviders(Pointer<COMObject> ptr) : super(ptr);

  int GetEmbeddedFragmentRoots(
    Pointer<Pointer<SAFEARRAY>> pRetVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> pRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> pRetVal,
          )>()(
        ptr.ref.lpVtbl,
        pRetVal,
      );

  int GetObjectIdForProvider(
    Pointer<COMObject> pProvider,
    Pointer<Int32> pidObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pProvider,
            Pointer<Int32> pidObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pProvider,
            Pointer<Int32> pidObject,
          )>()(
        ptr.ref.lpVtbl,
        pProvider,
        pidObject,
      );
}
