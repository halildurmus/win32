// IPropertyDescription.dart

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
import '../../../system/search/common/structs.g.dart';

/// @nodoc
const IID_IPropertyDescription = '{6F79D558-3E96-4549-A1D1-7D75D2288814}';

/// {@category Interface}
/// {@category com}
class IPropertyDescription extends IUnknown {
  // vtable begins at 3, is 21 entries long.
  IPropertyDescription(Pointer<COMObject> ptr) : super(ptr);

  int GetPropertyKey(
    Pointer<PROPERTYKEY> pkey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> pkey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> pkey,
          )>()(
        ptr.ref.lpVtbl,
        pkey,
      );

  int GetCanonicalName(
    Pointer<Pointer<Utf16>> ppszName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszName,
          )>()(
        ptr.ref.lpVtbl,
        ppszName,
      );

  int GetPropertyType(
    Pointer<Uint16> pvartype,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pvartype,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pvartype,
          )>()(
        ptr.ref.lpVtbl,
        pvartype,
      );

  int GetDisplayName(
    Pointer<Pointer<Utf16>> ppszName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszName,
          )>()(
        ptr.ref.lpVtbl,
        ppszName,
      );

  int GetEditInvitation(
    Pointer<Pointer<Utf16>> ppszInvite,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszInvite,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszInvite,
          )>()(
        ptr.ref.lpVtbl,
        ppszInvite,
      );

  int GetTypeFlags(
    int mask,
    Pointer<Int32> ppdtFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 mask,
            Pointer<Int32> ppdtFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int mask,
            Pointer<Int32> ppdtFlags,
          )>()(
        ptr.ref.lpVtbl,
        mask,
        ppdtFlags,
      );

  int GetViewFlags(
    Pointer<Uint32> ppdvFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> ppdvFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> ppdvFlags,
          )>()(
        ptr.ref.lpVtbl,
        ppdvFlags,
      );

  int GetDefaultColumnWidth(
    Pointer<Uint32> pcxChars,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcxChars,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcxChars,
          )>()(
        ptr.ref.lpVtbl,
        pcxChars,
      );

  int GetDisplayType(
    Pointer<Int32> pdisplaytype,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pdisplaytype,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pdisplaytype,
          )>()(
        ptr.ref.lpVtbl,
        pdisplaytype,
      );

  int GetColumnState(
    Pointer<Uint32> pcsFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcsFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcsFlags,
          )>()(
        ptr.ref.lpVtbl,
        pcsFlags,
      );

  int GetGroupingRange(
    Pointer<Int32> pgr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pgr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pgr,
          )>()(
        ptr.ref.lpVtbl,
        pgr,
      );

  int GetRelativeDescriptionType(
    Pointer<Int32> prdt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> prdt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> prdt,
          )>()(
        ptr.ref.lpVtbl,
        prdt,
      );

  int GetRelativeDescription(
    Pointer<PROPVARIANT> propvar1,
    Pointer<PROPVARIANT> propvar2,
    Pointer<Pointer<Utf16>> ppszDesc1,
    Pointer<Pointer<Utf16>> ppszDesc2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPVARIANT> propvar1,
            Pointer<PROPVARIANT> propvar2,
            Pointer<Pointer<Utf16>> ppszDesc1,
            Pointer<Pointer<Utf16>> ppszDesc2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPVARIANT> propvar1,
            Pointer<PROPVARIANT> propvar2,
            Pointer<Pointer<Utf16>> ppszDesc1,
            Pointer<Pointer<Utf16>> ppszDesc2,
          )>()(
        ptr.ref.lpVtbl,
        propvar1,
        propvar2,
        ppszDesc1,
        ppszDesc2,
      );

  int GetSortDescription(
    Pointer<Int32> psd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> psd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> psd,
          )>()(
        ptr.ref.lpVtbl,
        psd,
      );

  int GetSortDescriptionLabel(
    int fDescending,
    Pointer<Pointer<Utf16>> ppszDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fDescending,
            Pointer<Pointer<Utf16>> ppszDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fDescending,
            Pointer<Pointer<Utf16>> ppszDescription,
          )>()(
        ptr.ref.lpVtbl,
        fDescending,
        ppszDescription,
      );

  int GetAggregationType(
    Pointer<Int32> paggtype,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> paggtype,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> paggtype,
          )>()(
        ptr.ref.lpVtbl,
        paggtype,
      );

  int GetConditionType(
    Pointer<Int32> pcontype,
    Pointer<Int32> popDefault,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pcontype,
            Pointer<Int32> popDefault,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pcontype,
            Pointer<Int32> popDefault,
          )>()(
        ptr.ref.lpVtbl,
        pcontype,
        popDefault,
      );

  int GetEnumTypeList(
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        ppv,
      );

  int CoerceToCanonicalValue(
    Pointer<PROPVARIANT> ppropvar,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
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

  int FormatForDisplay(
    Pointer<PROPVARIANT> propvar,
    int pdfFlags,
    Pointer<Pointer<Utf16>> ppszDisplay,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPVARIANT> propvar,
            Uint32 pdfFlags,
            Pointer<Pointer<Utf16>> ppszDisplay,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPVARIANT> propvar,
            int pdfFlags,
            Pointer<Pointer<Utf16>> ppszDisplay,
          )>()(
        ptr.ref.lpVtbl,
        propvar,
        pdfFlags,
        ppszDisplay,
      );

  int IsValueCanonical(
    Pointer<PROPVARIANT> propvar,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPVARIANT> propvar,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPVARIANT> propvar,
          )>()(
        ptr.ref.lpVtbl,
        propvar,
      );
}
