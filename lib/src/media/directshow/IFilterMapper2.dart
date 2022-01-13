// IFilterMapper2.dart

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
import '../../system/com/IMoniker.dart';
import '../../media/directshow/structs.g.dart';
import '../../system/com/IEnumMoniker.dart';

/// @nodoc
const IID_IFilterMapper2 = '{B79BB0B0-33C1-11D1-ABE1-00A0C905F375}';

/// {@category Interface}
/// {@category com}
class IFilterMapper2 extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IFilterMapper2(Pointer<COMObject> ptr) : super(ptr);

  int CreateCategory(
    Pointer<GUID> clsidCategory,
    int dwCategoryMerit,
    Pointer<Utf16> Description,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> clsidCategory,
            Uint32 dwCategoryMerit,
            Pointer<Utf16> Description,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> clsidCategory,
            int dwCategoryMerit,
            Pointer<Utf16> Description,
          )>()(
        ptr.ref.lpVtbl,
        clsidCategory,
        dwCategoryMerit,
        Description,
      );

  int UnregisterFilter(
    Pointer<GUID> pclsidCategory,
    Pointer<Utf16> szInstance,
    Pointer<GUID> Filter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pclsidCategory,
            Pointer<Utf16> szInstance,
            Pointer<GUID> Filter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pclsidCategory,
            Pointer<Utf16> szInstance,
            Pointer<GUID> Filter,
          )>()(
        ptr.ref.lpVtbl,
        pclsidCategory,
        szInstance,
        Filter,
      );

  int RegisterFilter(
    Pointer<GUID> clsidFilter,
    Pointer<Utf16> Name,
    Pointer<Pointer<COMObject>> ppMoniker,
    Pointer<GUID> pclsidCategory,
    Pointer<Utf16> szInstance,
    Pointer<REGFILTER2> prf2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> clsidFilter,
            Pointer<Utf16> Name,
            Pointer<Pointer<COMObject>> ppMoniker,
            Pointer<GUID> pclsidCategory,
            Pointer<Utf16> szInstance,
            Pointer<REGFILTER2> prf2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> clsidFilter,
            Pointer<Utf16> Name,
            Pointer<Pointer<COMObject>> ppMoniker,
            Pointer<GUID> pclsidCategory,
            Pointer<Utf16> szInstance,
            Pointer<REGFILTER2> prf2,
          )>()(
        ptr.ref.lpVtbl,
        clsidFilter,
        Name,
        ppMoniker,
        pclsidCategory,
        szInstance,
        prf2,
      );

  int EnumMatchingFilters(
    Pointer<Pointer<COMObject>> ppEnum,
    int dwFlags,
    int bExactMatch,
    int dwMerit,
    int bInputNeeded,
    int cInputTypes,
    Pointer<GUID> pInputTypes,
    Pointer<REGPINMEDIUM> pMedIn,
    Pointer<GUID> pPinCategoryIn,
    int bRender,
    int bOutputNeeded,
    int cOutputTypes,
    Pointer<GUID> pOutputTypes,
    Pointer<REGPINMEDIUM> pMedOut,
    Pointer<GUID> pPinCategoryOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
            Uint32 dwFlags,
            Int32 bExactMatch,
            Uint32 dwMerit,
            Int32 bInputNeeded,
            Uint32 cInputTypes,
            Pointer<GUID> pInputTypes,
            Pointer<REGPINMEDIUM> pMedIn,
            Pointer<GUID> pPinCategoryIn,
            Int32 bRender,
            Int32 bOutputNeeded,
            Uint32 cOutputTypes,
            Pointer<GUID> pOutputTypes,
            Pointer<REGPINMEDIUM> pMedOut,
            Pointer<GUID> pPinCategoryOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
            int dwFlags,
            int bExactMatch,
            int dwMerit,
            int bInputNeeded,
            int cInputTypes,
            Pointer<GUID> pInputTypes,
            Pointer<REGPINMEDIUM> pMedIn,
            Pointer<GUID> pPinCategoryIn,
            int bRender,
            int bOutputNeeded,
            int cOutputTypes,
            Pointer<GUID> pOutputTypes,
            Pointer<REGPINMEDIUM> pMedOut,
            Pointer<GUID> pPinCategoryOut,
          )>()(
        ptr.ref.lpVtbl,
        ppEnum,
        dwFlags,
        bExactMatch,
        dwMerit,
        bInputNeeded,
        cInputTypes,
        pInputTypes,
        pMedIn,
        pPinCategoryIn,
        bRender,
        bOutputNeeded,
        cOutputTypes,
        pOutputTypes,
        pMedOut,
        pPinCategoryOut,
      );
}
