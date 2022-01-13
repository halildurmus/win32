// IPerPropertyBrowsing2.dart

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
import '../../../foundation/structs.g.dart';
import '../../../system/ole/structs.g.dart';

/// @nodoc
const IID_IPerPropertyBrowsing2 = '{51973C54-CB0C-11D0-B5C9-00A0244A0E7A}';

/// {@category Interface}
/// {@category com}
class IPerPropertyBrowsing2 extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IPerPropertyBrowsing2(Pointer<COMObject> ptr) : super(ptr);

  int GetDisplayString(
    int dispid,
    Pointer<Pointer<Utf16>> pBstr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 dispid,
            Pointer<Pointer<Utf16>> pBstr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dispid,
            Pointer<Pointer<Utf16>> pBstr,
          )>()(
        ptr.ref.lpVtbl,
        dispid,
        pBstr,
      );

  int MapPropertyToPage(
    int dispid,
    Pointer<GUID> pClsidPropPage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 dispid,
            Pointer<GUID> pClsidPropPage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dispid,
            Pointer<GUID> pClsidPropPage,
          )>()(
        ptr.ref.lpVtbl,
        dispid,
        pClsidPropPage,
      );

  int GetPredefinedStrings(
    int dispid,
    Pointer<CALPOLESTR> pCaStrings,
    Pointer<CADWORD> pCaCookies,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 dispid,
            Pointer<CALPOLESTR> pCaStrings,
            Pointer<CADWORD> pCaCookies,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dispid,
            Pointer<CALPOLESTR> pCaStrings,
            Pointer<CADWORD> pCaCookies,
          )>()(
        ptr.ref.lpVtbl,
        dispid,
        pCaStrings,
        pCaCookies,
      );

  int SetPredefinedValue(
    int dispid,
    int dwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 dispid,
            Uint32 dwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dispid,
            int dwCookie,
          )>()(
        ptr.ref.lpVtbl,
        dispid,
        dwCookie,
      );
}
