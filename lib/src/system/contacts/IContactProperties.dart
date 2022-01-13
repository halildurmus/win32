// IContactProperties.dart

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
import '../../system/com/IStream.dart';
import '../../system/contacts/IContactPropertyCollection.dart';

/// @nodoc
const IID_IContactProperties = '{70DD27DD-5CBD-46E8-BEF0-23B6B346288F}';

/// {@category Interface}
/// {@category com}
class IContactProperties extends IUnknown {
  // vtable begins at 3, is 13 entries long.
  IContactProperties(Pointer<COMObject> ptr) : super(ptr);

  int GetString(
    Pointer<Utf16> pszPropertyName,
    int dwFlags,
    Pointer<Utf16> pszValue,
    int cchValue,
    Pointer<Uint32> pdwcchPropertyValueRequired,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPropertyName,
            Uint32 dwFlags,
            Pointer<Utf16> pszValue,
            Uint32 cchValue,
            Pointer<Uint32> pdwcchPropertyValueRequired,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPropertyName,
            int dwFlags,
            Pointer<Utf16> pszValue,
            int cchValue,
            Pointer<Uint32> pdwcchPropertyValueRequired,
          )>()(
        ptr.ref.lpVtbl,
        pszPropertyName,
        dwFlags,
        pszValue,
        cchValue,
        pdwcchPropertyValueRequired,
      );

  int GetDate(
    Pointer<Utf16> pszPropertyName,
    int dwFlags,
    Pointer<FILETIME> pftDateTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPropertyName,
            Uint32 dwFlags,
            Pointer<FILETIME> pftDateTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPropertyName,
            int dwFlags,
            Pointer<FILETIME> pftDateTime,
          )>()(
        ptr.ref.lpVtbl,
        pszPropertyName,
        dwFlags,
        pftDateTime,
      );

  int GetBinary(
    Pointer<Utf16> pszPropertyName,
    int dwFlags,
    Pointer<Utf16> pszContentType,
    int cchContentType,
    Pointer<Uint32> pdwcchContentTypeRequired,
    Pointer<Pointer<COMObject>> ppStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPropertyName,
            Uint32 dwFlags,
            Pointer<Utf16> pszContentType,
            Uint32 cchContentType,
            Pointer<Uint32> pdwcchContentTypeRequired,
            Pointer<Pointer<COMObject>> ppStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPropertyName,
            int dwFlags,
            Pointer<Utf16> pszContentType,
            int cchContentType,
            Pointer<Uint32> pdwcchContentTypeRequired,
            Pointer<Pointer<COMObject>> ppStream,
          )>()(
        ptr.ref.lpVtbl,
        pszPropertyName,
        dwFlags,
        pszContentType,
        cchContentType,
        pdwcchContentTypeRequired,
        ppStream,
      );

  int GetLabels(
    Pointer<Utf16> pszArrayElementName,
    int dwFlags,
    Pointer<Utf16> pszLabels,
    int cchLabels,
    Pointer<Uint32> pdwcchLabelsRequired,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszArrayElementName,
            Uint32 dwFlags,
            Pointer<Utf16> pszLabels,
            Uint32 cchLabels,
            Pointer<Uint32> pdwcchLabelsRequired,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszArrayElementName,
            int dwFlags,
            Pointer<Utf16> pszLabels,
            int cchLabels,
            Pointer<Uint32> pdwcchLabelsRequired,
          )>()(
        ptr.ref.lpVtbl,
        pszArrayElementName,
        dwFlags,
        pszLabels,
        cchLabels,
        pdwcchLabelsRequired,
      );

  int SetString(
    Pointer<Utf16> pszPropertyName,
    int dwFlags,
    Pointer<Utf16> pszValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPropertyName,
            Uint32 dwFlags,
            Pointer<Utf16> pszValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPropertyName,
            int dwFlags,
            Pointer<Utf16> pszValue,
          )>()(
        ptr.ref.lpVtbl,
        pszPropertyName,
        dwFlags,
        pszValue,
      );

  int SetDate(
    Pointer<Utf16> pszPropertyName,
    int dwFlags,
    FILETIME ftDateTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPropertyName,
            Uint32 dwFlags,
            FILETIME ftDateTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPropertyName,
            int dwFlags,
            FILETIME ftDateTime,
          )>()(
        ptr.ref.lpVtbl,
        pszPropertyName,
        dwFlags,
        ftDateTime,
      );

  int SetBinary(
    Pointer<Utf16> pszPropertyName,
    int dwFlags,
    Pointer<Utf16> pszContentType,
    Pointer<COMObject> pStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPropertyName,
            Uint32 dwFlags,
            Pointer<Utf16> pszContentType,
            Pointer<COMObject> pStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPropertyName,
            int dwFlags,
            Pointer<Utf16> pszContentType,
            Pointer<COMObject> pStream,
          )>()(
        ptr.ref.lpVtbl,
        pszPropertyName,
        dwFlags,
        pszContentType,
        pStream,
      );

  int SetLabels(
    Pointer<Utf16> pszArrayElementName,
    int dwFlags,
    int dwLabelCount,
    Pointer<Pointer<Utf16>> ppszLabels,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszArrayElementName,
            Uint32 dwFlags,
            Uint32 dwLabelCount,
            Pointer<Pointer<Utf16>> ppszLabels,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszArrayElementName,
            int dwFlags,
            int dwLabelCount,
            Pointer<Pointer<Utf16>> ppszLabels,
          )>()(
        ptr.ref.lpVtbl,
        pszArrayElementName,
        dwFlags,
        dwLabelCount,
        ppszLabels,
      );

  int CreateArrayNode(
    Pointer<Utf16> pszArrayName,
    int dwFlags,
    int fAppend,
    Pointer<Utf16> pszNewArrayElementName,
    int cchNewArrayElementName,
    Pointer<Uint32> pdwcchNewArrayElementNameRequired,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszArrayName,
            Uint32 dwFlags,
            Int32 fAppend,
            Pointer<Utf16> pszNewArrayElementName,
            Uint32 cchNewArrayElementName,
            Pointer<Uint32> pdwcchNewArrayElementNameRequired,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszArrayName,
            int dwFlags,
            int fAppend,
            Pointer<Utf16> pszNewArrayElementName,
            int cchNewArrayElementName,
            Pointer<Uint32> pdwcchNewArrayElementNameRequired,
          )>()(
        ptr.ref.lpVtbl,
        pszArrayName,
        dwFlags,
        fAppend,
        pszNewArrayElementName,
        cchNewArrayElementName,
        pdwcchNewArrayElementNameRequired,
      );

  int DeleteProperty(
    Pointer<Utf16> pszPropertyName,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPropertyName,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPropertyName,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pszPropertyName,
        dwFlags,
      );

  int DeleteArrayNode(
    Pointer<Utf16> pszArrayElementName,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszArrayElementName,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszArrayElementName,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pszArrayElementName,
        dwFlags,
      );

  int DeleteLabels(
    Pointer<Utf16> pszArrayElementName,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszArrayElementName,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszArrayElementName,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pszArrayElementName,
        dwFlags,
      );

  int GetPropertyCollection(
    Pointer<Pointer<COMObject>> ppPropertyCollection,
    int dwFlags,
    Pointer<Utf16> pszMultiValueName,
    int dwLabelCount,
    Pointer<Pointer<Utf16>> ppszLabels,
    int fAnyLabelMatches,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPropertyCollection,
            Uint32 dwFlags,
            Pointer<Utf16> pszMultiValueName,
            Uint32 dwLabelCount,
            Pointer<Pointer<Utf16>> ppszLabels,
            Int32 fAnyLabelMatches,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPropertyCollection,
            int dwFlags,
            Pointer<Utf16> pszMultiValueName,
            int dwLabelCount,
            Pointer<Pointer<Utf16>> ppszLabels,
            int fAnyLabelMatches,
          )>()(
        ptr.ref.lpVtbl,
        ppPropertyCollection,
        dwFlags,
        pszMultiValueName,
        dwLabelCount,
        ppszLabels,
        fAnyLabelMatches,
      );
}
