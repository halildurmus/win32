// IPropertyChange.dart

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

import '../../../ui/shell/propertiessystem/IObjectWithPropertyKey.dart';
import '../../../specialTypes.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IPropertyChange = '{F917BC8A-1BBA-4478-A245-1BDE03EB9431}';

/// {@category Interface}
/// {@category com}
class IPropertyChange extends IObjectWithPropertyKey {
  // vtable begins at 5, is 1 entries long.
  IPropertyChange(Pointer<COMObject> ptr) : super(ptr);

  int ApplyToPropVariant(
    Pointer<PROPVARIANT> propvarIn,
    Pointer<PROPVARIANT> ppropvarOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPVARIANT> propvarIn,
            Pointer<PROPVARIANT> ppropvarOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPVARIANT> propvarIn,
            Pointer<PROPVARIANT> ppropvarOut,
          )>()(
        ptr.ref.lpVtbl,
        propvarIn,
        ppropvarOut,
      );
}
