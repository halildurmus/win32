// INamedPropertyBag.dart

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
import '../../specialTypes.dart';

/// @nodoc
const IID_INamedPropertyBag = '{FB700430-952C-11D1-946F-000000000000}';

/// {@category Interface}
/// {@category com}
class INamedPropertyBag extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  INamedPropertyBag(Pointer<COMObject> ptr) : super(ptr);

  int ReadPropertyNPB(
    Pointer<Utf16> pszBagname,
    Pointer<Utf16> pszPropName,
    Pointer<PROPVARIANT> pVar,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszBagname,
            Pointer<Utf16> pszPropName,
            Pointer<PROPVARIANT> pVar,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszBagname,
            Pointer<Utf16> pszPropName,
            Pointer<PROPVARIANT> pVar,
          )>()(
        ptr.ref.lpVtbl,
        pszBagname,
        pszPropName,
        pVar,
      );

  int WritePropertyNPB(
    Pointer<Utf16> pszBagname,
    Pointer<Utf16> pszPropName,
    Pointer<PROPVARIANT> pVar,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszBagname,
            Pointer<Utf16> pszPropName,
            Pointer<PROPVARIANT> pVar,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszBagname,
            Pointer<Utf16> pszPropName,
            Pointer<PROPVARIANT> pVar,
          )>()(
        ptr.ref.lpVtbl,
        pszBagname,
        pszPropName,
        pVar,
      );

  int RemovePropertyNPB(
    Pointer<Utf16> pszBagname,
    Pointer<Utf16> pszPropName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszBagname,
            Pointer<Utf16> pszPropName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszBagname,
            Pointer<Utf16> pszPropName,
          )>()(
        ptr.ref.lpVtbl,
        pszBagname,
        pszPropName,
      );
}
