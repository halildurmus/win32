// IMAPIProp.dart

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
import '../../system/addressbook/structs.g.dart';
import '../../specialTypes.dart';
import '../../system/addressbook/IMAPIProgress.dart';

/// @nodoc
const IID_IMAPIProp = 'null';

/// {@category Interface}
/// {@category com}
class IMAPIProp extends IUnknown {
  // vtable begins at 3, is 11 entries long.
  IMAPIProp(Pointer<COMObject> ptr) : super(ptr);

  int GetLastError(
    int hResult,
    int ulFlags,
    Pointer<Pointer<MAPIERROR>> lppMAPIError,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hResult,
            Uint32 ulFlags,
            Pointer<Pointer<MAPIERROR>> lppMAPIError,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hResult,
            int ulFlags,
            Pointer<Pointer<MAPIERROR>> lppMAPIError,
          )>()(
        ptr.ref.lpVtbl,
        hResult,
        ulFlags,
        lppMAPIError,
      );

  int SaveChanges(
    int ulFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulFlags,
          )>()(
        ptr.ref.lpVtbl,
        ulFlags,
      );

  int GetProps(
    Pointer<SPropTagArray> lpPropTagArray,
    int ulFlags,
    Pointer<Uint32> lpcValues,
    Pointer<Pointer<SPropValue>> lppPropArray,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SPropTagArray> lpPropTagArray,
            Uint32 ulFlags,
            Pointer<Uint32> lpcValues,
            Pointer<Pointer<SPropValue>> lppPropArray,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SPropTagArray> lpPropTagArray,
            int ulFlags,
            Pointer<Uint32> lpcValues,
            Pointer<Pointer<SPropValue>> lppPropArray,
          )>()(
        ptr.ref.lpVtbl,
        lpPropTagArray,
        ulFlags,
        lpcValues,
        lppPropArray,
      );

  int GetPropList(
    int ulFlags,
    Pointer<Pointer<SPropTagArray>> lppPropTagArray,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulFlags,
            Pointer<Pointer<SPropTagArray>> lppPropTagArray,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulFlags,
            Pointer<Pointer<SPropTagArray>> lppPropTagArray,
          )>()(
        ptr.ref.lpVtbl,
        ulFlags,
        lppPropTagArray,
      );

  int OpenProperty(
    int ulPropTag,
    Pointer<GUID> lpiid,
    int ulInterfaceOptions,
    int ulFlags,
    Pointer<Pointer<COMObject>> lppUnk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulPropTag,
            Pointer<GUID> lpiid,
            Uint32 ulInterfaceOptions,
            Uint32 ulFlags,
            Pointer<Pointer<COMObject>> lppUnk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulPropTag,
            Pointer<GUID> lpiid,
            int ulInterfaceOptions,
            int ulFlags,
            Pointer<Pointer<COMObject>> lppUnk,
          )>()(
        ptr.ref.lpVtbl,
        ulPropTag,
        lpiid,
        ulInterfaceOptions,
        ulFlags,
        lppUnk,
      );

  int SetProps(
    int cValues,
    Pointer<SPropValue> lpPropArray,
    Pointer<Pointer<SPropProblemArray>> lppProblems,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cValues,
            Pointer<SPropValue> lpPropArray,
            Pointer<Pointer<SPropProblemArray>> lppProblems,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cValues,
            Pointer<SPropValue> lpPropArray,
            Pointer<Pointer<SPropProblemArray>> lppProblems,
          )>()(
        ptr.ref.lpVtbl,
        cValues,
        lpPropArray,
        lppProblems,
      );

  int DeleteProps(
    Pointer<SPropTagArray> lpPropTagArray,
    Pointer<Pointer<SPropProblemArray>> lppProblems,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SPropTagArray> lpPropTagArray,
            Pointer<Pointer<SPropProblemArray>> lppProblems,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SPropTagArray> lpPropTagArray,
            Pointer<Pointer<SPropProblemArray>> lppProblems,
          )>()(
        ptr.ref.lpVtbl,
        lpPropTagArray,
        lppProblems,
      );

  int CopyTo(
    int ciidExclude,
    Pointer<GUID> rgiidExclude,
    Pointer<SPropTagArray> lpExcludeProps,
    int ulUIParam,
    Pointer<COMObject> lpProgress,
    Pointer<GUID> lpInterface,
    Pointer lpDestObj,
    int ulFlags,
    Pointer<Pointer<SPropProblemArray>> lppProblems,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ciidExclude,
            Pointer<GUID> rgiidExclude,
            Pointer<SPropTagArray> lpExcludeProps,
            IntPtr ulUIParam,
            Pointer<COMObject> lpProgress,
            Pointer<GUID> lpInterface,
            Pointer lpDestObj,
            Uint32 ulFlags,
            Pointer<Pointer<SPropProblemArray>> lppProblems,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ciidExclude,
            Pointer<GUID> rgiidExclude,
            Pointer<SPropTagArray> lpExcludeProps,
            int ulUIParam,
            Pointer<COMObject> lpProgress,
            Pointer<GUID> lpInterface,
            Pointer lpDestObj,
            int ulFlags,
            Pointer<Pointer<SPropProblemArray>> lppProblems,
          )>()(
        ptr.ref.lpVtbl,
        ciidExclude,
        rgiidExclude,
        lpExcludeProps,
        ulUIParam,
        lpProgress,
        lpInterface,
        lpDestObj,
        ulFlags,
        lppProblems,
      );

  int CopyProps(
    Pointer<SPropTagArray> lpIncludeProps,
    int ulUIParam,
    Pointer<COMObject> lpProgress,
    Pointer<GUID> lpInterface,
    Pointer lpDestObj,
    int ulFlags,
    Pointer<Pointer<SPropProblemArray>> lppProblems,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SPropTagArray> lpIncludeProps,
            IntPtr ulUIParam,
            Pointer<COMObject> lpProgress,
            Pointer<GUID> lpInterface,
            Pointer lpDestObj,
            Uint32 ulFlags,
            Pointer<Pointer<SPropProblemArray>> lppProblems,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SPropTagArray> lpIncludeProps,
            int ulUIParam,
            Pointer<COMObject> lpProgress,
            Pointer<GUID> lpInterface,
            Pointer lpDestObj,
            int ulFlags,
            Pointer<Pointer<SPropProblemArray>> lppProblems,
          )>()(
        ptr.ref.lpVtbl,
        lpIncludeProps,
        ulUIParam,
        lpProgress,
        lpInterface,
        lpDestObj,
        ulFlags,
        lppProblems,
      );

  int GetNamesFromIDs(
    Pointer<Pointer<SPropTagArray>> lppPropTags,
    Pointer<GUID> lpPropSetGuid,
    int ulFlags,
    Pointer<Uint32> lpcPropNames,
    Pointer<Pointer<Pointer<MAPINAMEID>>> lpppPropNames,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SPropTagArray>> lppPropTags,
            Pointer<GUID> lpPropSetGuid,
            Uint32 ulFlags,
            Pointer<Uint32> lpcPropNames,
            Pointer<Pointer<Pointer<MAPINAMEID>>> lpppPropNames,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SPropTagArray>> lppPropTags,
            Pointer<GUID> lpPropSetGuid,
            int ulFlags,
            Pointer<Uint32> lpcPropNames,
            Pointer<Pointer<Pointer<MAPINAMEID>>> lpppPropNames,
          )>()(
        ptr.ref.lpVtbl,
        lppPropTags,
        lpPropSetGuid,
        ulFlags,
        lpcPropNames,
        lpppPropNames,
      );

  int GetIDsFromNames(
    int cPropNames,
    Pointer<Pointer<MAPINAMEID>> lppPropNames,
    int ulFlags,
    Pointer<Pointer<SPropTagArray>> lppPropTags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cPropNames,
            Pointer<Pointer<MAPINAMEID>> lppPropNames,
            Uint32 ulFlags,
            Pointer<Pointer<SPropTagArray>> lppPropTags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cPropNames,
            Pointer<Pointer<MAPINAMEID>> lppPropNames,
            int ulFlags,
            Pointer<Pointer<SPropTagArray>> lppPropTags,
          )>()(
        ptr.ref.lpVtbl,
        cPropNames,
        lppPropNames,
        ulFlags,
        lppPropTags,
      );
}
