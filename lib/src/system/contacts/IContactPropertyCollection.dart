// IContactPropertyCollection.dart

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
const IID_IContactPropertyCollection = '{FFD3ADF8-FA64-4328-B1B6-2E0DB509CB3C}';

/// {@category Interface}
/// {@category com}
class IContactPropertyCollection extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IContactPropertyCollection(Pointer<COMObject> ptr) : super(ptr);

  int Reset() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int Next() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int GetPropertyName(
    Pointer<Utf16> pszPropertyName,
    int cchPropertyName,
    Pointer<Uint32> pdwcchPropertyNameRequired,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPropertyName,
            Uint32 cchPropertyName,
            Pointer<Uint32> pdwcchPropertyNameRequired,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPropertyName,
            int cchPropertyName,
            Pointer<Uint32> pdwcchPropertyNameRequired,
          )>()(
        ptr.ref.lpVtbl,
        pszPropertyName,
        cchPropertyName,
        pdwcchPropertyNameRequired,
      );

  int GetPropertyType(
    Pointer<Uint32> pdwType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwType,
          )>()(
        ptr.ref.lpVtbl,
        pdwType,
      );

  int GetPropertyVersion(
    Pointer<Uint32> pdwVersion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwVersion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwVersion,
          )>()(
        ptr.ref.lpVtbl,
        pdwVersion,
      );

  int GetPropertyModificationDate(
    Pointer<FILETIME> pftModificationDate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<FILETIME> pftModificationDate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<FILETIME> pftModificationDate,
          )>()(
        ptr.ref.lpVtbl,
        pftModificationDate,
      );

  int GetPropertyArrayElementID(
    Pointer<Utf16> pszArrayElementID,
    int cchArrayElementID,
    Pointer<Uint32> pdwcchArrayElementIDRequired,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszArrayElementID,
            Uint32 cchArrayElementID,
            Pointer<Uint32> pdwcchArrayElementIDRequired,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszArrayElementID,
            int cchArrayElementID,
            Pointer<Uint32> pdwcchArrayElementIDRequired,
          )>()(
        ptr.ref.lpVtbl,
        pszArrayElementID,
        cchArrayElementID,
        pdwcchArrayElementIDRequired,
      );
}
