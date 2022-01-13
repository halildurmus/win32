// IPropertyEnumType.dart

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
import '../../../ui/shell/propertiessystem/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../specialTypes.dart';

/// @nodoc
const IID_IPropertyEnumType = '{11E1FBF9-2D56-4A6B-8DB3-7CD193A471F2}';

/// {@category Interface}
/// {@category com}
class IPropertyEnumType extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IPropertyEnumType(Pointer<COMObject> ptr) : super(ptr);

  int GetEnumType(
    Pointer<Int32> penumtype,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> penumtype,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> penumtype,
          )>()(
        ptr.ref.lpVtbl,
        penumtype,
      );

  int GetValue(
    Pointer<PROPVARIANT> ppropvar,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPVARIANT> ppropvar,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPVARIANT> ppropvar,
          )>()(
        ptr.ref.lpVtbl,
        ppropvar,
      );

  int GetRangeMinValue(
    Pointer<PROPVARIANT> ppropvarMin,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPVARIANT> ppropvarMin,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPVARIANT> ppropvarMin,
          )>()(
        ptr.ref.lpVtbl,
        ppropvarMin,
      );

  int GetRangeSetValue(
    Pointer<PROPVARIANT> ppropvarSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPVARIANT> ppropvarSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPVARIANT> ppropvarSet,
          )>()(
        ptr.ref.lpVtbl,
        ppropvarSet,
      );

  int GetDisplayText(
    Pointer<Pointer<Utf16>> ppszDisplay,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszDisplay,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszDisplay,
          )>()(
        ptr.ref.lpVtbl,
        ppszDisplay,
      );
}
