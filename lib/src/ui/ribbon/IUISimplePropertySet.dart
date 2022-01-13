// IUISimplePropertySet.dart

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
import '../../ui/shell/propertiessystem/structs.g.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IUISimplePropertySet = '{C205BB48-5B1C-4219-A106-15BD0A5F24E2}';

/// {@category Interface}
/// {@category com}
class IUISimplePropertySet extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUISimplePropertySet(Pointer<COMObject> ptr) : super(ptr);

  int GetValue(
    Pointer<PROPERTYKEY> key,
    Pointer<PROPVARIANT> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<PROPVARIANT> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<PROPVARIANT> value,
          )>()(
        ptr.ref.lpVtbl,
        key,
        value,
      );
}
