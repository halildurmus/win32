// IFhTarget.dart

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
import '../../storage/filehistory/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IFhTarget = '{D87965FD-2BAD-4657-BD3B-9567EB300CED}';

/// {@category Interface}
/// {@category com}
class IFhTarget extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IFhTarget(Pointer<COMObject> ptr) : super(ptr);

  int GetStringProperty(
    int PropertyType,
    Pointer<Pointer<Utf16>> PropertyValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 PropertyType,
            Pointer<Pointer<Utf16>> PropertyValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int PropertyType,
            Pointer<Pointer<Utf16>> PropertyValue,
          )>()(
        ptr.ref.lpVtbl,
        PropertyType,
        PropertyValue,
      );

  int GetNumericalProperty(
    int PropertyType,
    Pointer<Uint64> PropertyValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 PropertyType,
            Pointer<Uint64> PropertyValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int PropertyType,
            Pointer<Uint64> PropertyValue,
          )>()(
        ptr.ref.lpVtbl,
        PropertyType,
        PropertyValue,
      );
}
