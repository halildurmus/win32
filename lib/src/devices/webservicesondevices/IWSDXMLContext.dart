// IWSDXMLContext.dart

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
import '../../devices/webservicesondevices/structs.g.dart';

/// @nodoc
const IID_IWSDXMLContext = '{75D8F3EE-3E5A-43B4-A15A-BCF6887460C0}';

/// {@category Interface}
/// {@category com}
class IWSDXMLContext extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IWSDXMLContext(Pointer<COMObject> ptr) : super(ptr);

  int AddNamespace(
    Pointer<Utf16> pszUri,
    Pointer<Utf16> pszSuggestedPrefix,
    Pointer<Pointer<WSDXML_NAMESPACE>> ppNamespace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszUri,
            Pointer<Utf16> pszSuggestedPrefix,
            Pointer<Pointer<WSDXML_NAMESPACE>> ppNamespace,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszUri,
            Pointer<Utf16> pszSuggestedPrefix,
            Pointer<Pointer<WSDXML_NAMESPACE>> ppNamespace,
          )>()(
        ptr.ref.lpVtbl,
        pszUri,
        pszSuggestedPrefix,
        ppNamespace,
      );

  int AddNameToNamespace(
    Pointer<Utf16> pszUri,
    Pointer<Utf16> pszName,
    Pointer<Pointer<WSDXML_NAME>> ppName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszUri,
            Pointer<Utf16> pszName,
            Pointer<Pointer<WSDXML_NAME>> ppName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszUri,
            Pointer<Utf16> pszName,
            Pointer<Pointer<WSDXML_NAME>> ppName,
          )>()(
        ptr.ref.lpVtbl,
        pszUri,
        pszName,
        ppName,
      );

  int SetNamespaces(
    Pointer<Pointer<WSDXML_NAMESPACE>> pNamespaces,
    int wNamespacesCount,
    int bLayerNumber,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<WSDXML_NAMESPACE>> pNamespaces,
            Uint16 wNamespacesCount,
            Uint8 bLayerNumber,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<WSDXML_NAMESPACE>> pNamespaces,
            int wNamespacesCount,
            int bLayerNumber,
          )>()(
        ptr.ref.lpVtbl,
        pNamespaces,
        wNamespacesCount,
        bLayerNumber,
      );

  int SetTypes(
    Pointer<Pointer<WSDXML_TYPE>> pTypes,
    int dwTypesCount,
    int bLayerNumber,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<WSDXML_TYPE>> pTypes,
            Uint32 dwTypesCount,
            Uint8 bLayerNumber,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<WSDXML_TYPE>> pTypes,
            int dwTypesCount,
            int bLayerNumber,
          )>()(
        ptr.ref.lpVtbl,
        pTypes,
        dwTypesCount,
        bLayerNumber,
      );
}
