// IProvisioningDomain.dart

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
import '../../data/xml/msxml/IXMLDOMNodeList.dart';

/// @nodoc
const IID_IProvisioningDomain = '{C96FBD50-24DD-11D8-89FB-00904B2EA9C6}';

/// {@category Interface}
/// {@category com}
class IProvisioningDomain extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IProvisioningDomain(Pointer<COMObject> ptr) : super(ptr);

  int Add(
    Pointer<Utf16> pszwPathToFolder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszwPathToFolder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszwPathToFolder,
          )>()(
        ptr.ref.lpVtbl,
        pszwPathToFolder,
      );

  int Query(
    Pointer<Utf16> pszwDomain,
    Pointer<Utf16> pszwLanguage,
    Pointer<Utf16> pszwXPathQuery,
    Pointer<Pointer<COMObject>> Nodes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszwDomain,
            Pointer<Utf16> pszwLanguage,
            Pointer<Utf16> pszwXPathQuery,
            Pointer<Pointer<COMObject>> Nodes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszwDomain,
            Pointer<Utf16> pszwLanguage,
            Pointer<Utf16> pszwXPathQuery,
            Pointer<Pointer<COMObject>> Nodes,
          )>()(
        ptr.ref.lpVtbl,
        pszwDomain,
        pszwLanguage,
        pszwXPathQuery,
        Nodes,
      );
}
