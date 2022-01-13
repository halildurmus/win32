// IPropertyDescription2.dart

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

import '../../../ui/shell/propertiessystem/IPropertyDescription.dart';
import '../../../specialTypes.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IPropertyDescription2 = '{57D2EDED-5062-400E-B107-5DAE79FE57A6}';

/// {@category Interface}
/// {@category com}
class IPropertyDescription2 extends IPropertyDescription {
  // vtable begins at 24, is 1 entries long.
  IPropertyDescription2(Pointer<COMObject> ptr) : super(ptr);

  int GetImageReferenceForValue(
    Pointer<PROPVARIANT> propvar,
    Pointer<Pointer<Utf16>> ppszImageRes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPVARIANT> propvar,
            Pointer<Pointer<Utf16>> ppszImageRes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPVARIANT> propvar,
            Pointer<Pointer<Utf16>> ppszImageRes,
          )>()(
        ptr.ref.lpVtbl,
        propvar,
        ppszImageRes,
      );
}
