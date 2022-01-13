// IInkExtendedProperties.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../ui/tabletpc/IInkExtendedProperty.dart';

/// @nodoc
const IID_IInkExtendedProperties = '{89F2A8BE-95A9-4530-8B8F-88E971E3E25F}';

/// {@category Interface}
/// {@category com}
class IInkExtendedProperties extends IDispatch {
  // vtable begins at 7, is 7 entries long.
  IInkExtendedProperties(Pointer<COMObject> ptr) : super(ptr);

  int get Count {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> Count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> Count,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get NewEnum {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> NewEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> NewEnum,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int Item(
    VARIANT Identifier,
    Pointer<Pointer<COMObject>> Item,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT Identifier,
            Pointer<Pointer<COMObject>> Item,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT Identifier,
            Pointer<Pointer<COMObject>> Item,
          )>()(
        ptr.ref.lpVtbl,
        Identifier,
        Item,
      );

  int Add(
    Pointer<Utf16> Guid,
    VARIANT Data,
    Pointer<Pointer<COMObject>> InkExtendedProperty,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Guid,
            VARIANT Data,
            Pointer<Pointer<COMObject>> InkExtendedProperty,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Guid,
            VARIANT Data,
            Pointer<Pointer<COMObject>> InkExtendedProperty,
          )>()(
        ptr.ref.lpVtbl,
        Guid,
        Data,
        InkExtendedProperty,
      );

  int Remove(
    VARIANT Identifier,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT Identifier,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT Identifier,
          )>()(
        ptr.ref.lpVtbl,
        Identifier,
      );

  int Clear() => ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int DoesPropertyExist(
    Pointer<Utf16> Guid,
    Pointer<Int16> DoesPropertyExist,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Guid,
            Pointer<Int16> DoesPropertyExist,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Guid,
            Pointer<Int16> DoesPropertyExist,
          )>()(
        ptr.ref.lpVtbl,
        Guid,
        DoesPropertyExist,
      );
}
