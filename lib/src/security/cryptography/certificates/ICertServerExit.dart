// ICertServerExit.dart

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

import '../../../system/com/IDispatch.dart';
import '../../../foundation/structs.g.dart';
import '../../../specialTypes.dart';

/// @nodoc
const IID_ICertServerExit = '{4BA9EB90-732C-11D0-8816-00A0C903B83C}';

/// {@category Interface}
/// {@category com}
class ICertServerExit extends IDispatch {
  // vtable begins at 7, is 12 entries long.
  ICertServerExit(Pointer<COMObject> ptr) : super(ptr);

  int SetContext(
    int Context,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Context,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Context,
          )>()(
        ptr.ref.lpVtbl,
        Context,
      );

  int GetRequestProperty(
    Pointer<Utf16> strPropertyName,
    int PropertyType,
    Pointer<VARIANT> pvarPropertyValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strPropertyName,
            Int32 PropertyType,
            Pointer<VARIANT> pvarPropertyValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strPropertyName,
            int PropertyType,
            Pointer<VARIANT> pvarPropertyValue,
          )>()(
        ptr.ref.lpVtbl,
        strPropertyName,
        PropertyType,
        pvarPropertyValue,
      );

  int GetRequestAttribute(
    Pointer<Utf16> strAttributeName,
    Pointer<Pointer<Utf16>> pstrAttributeValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strAttributeName,
            Pointer<Pointer<Utf16>> pstrAttributeValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strAttributeName,
            Pointer<Pointer<Utf16>> pstrAttributeValue,
          )>()(
        ptr.ref.lpVtbl,
        strAttributeName,
        pstrAttributeValue,
      );

  int GetCertificateProperty(
    Pointer<Utf16> strPropertyName,
    int PropertyType,
    Pointer<VARIANT> pvarPropertyValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strPropertyName,
            Int32 PropertyType,
            Pointer<VARIANT> pvarPropertyValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strPropertyName,
            int PropertyType,
            Pointer<VARIANT> pvarPropertyValue,
          )>()(
        ptr.ref.lpVtbl,
        strPropertyName,
        PropertyType,
        pvarPropertyValue,
      );

  int GetCertificateExtension(
    Pointer<Utf16> strExtensionName,
    int Type,
    Pointer<VARIANT> pvarValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strExtensionName,
            Int32 Type,
            Pointer<VARIANT> pvarValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strExtensionName,
            int Type,
            Pointer<VARIANT> pvarValue,
          )>()(
        ptr.ref.lpVtbl,
        strExtensionName,
        Type,
        pvarValue,
      );

  int GetCertificateExtensionFlags(
    Pointer<Int32> pExtFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pExtFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pExtFlags,
          )>()(
        ptr.ref.lpVtbl,
        pExtFlags,
      );

  int EnumerateExtensionsSetup(
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
      );

  int EnumerateExtensions(
    Pointer<Pointer<Utf16>> pstrExtensionName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pstrExtensionName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pstrExtensionName,
          )>()(
        ptr.ref.lpVtbl,
        pstrExtensionName,
      );

  int EnumerateExtensionsClose() => ptr.ref.lpVtbl.value
          .elementAt(15)
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

  int EnumerateAttributesSetup(
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
      );

  int EnumerateAttributes(
    Pointer<Pointer<Utf16>> pstrAttributeName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pstrAttributeName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pstrAttributeName,
          )>()(
        ptr.ref.lpVtbl,
        pstrAttributeName,
      );

  int EnumerateAttributesClose() => ptr.ref.lpVtbl.value
          .elementAt(18)
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
}
