// iwbemclassobject.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../propertykey.dart';
import '../structs.g.dart';
import '../utils.dart';
import '../variant.dart';
import '../win32/ole32.g.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IWbemClassObject = '{dc12a681-737f-11cf-884d-00aa004b2e24}';

/// The IWbemClassObject interface contains and manipulates both class
/// definitions and class object instances.
///
/// {@category com}
class IWbemClassObject extends IUnknown {
  // vtable begins at 3, is 24 entries long.
  IWbemClassObject(super.ptr);

  factory IWbemClassObject.from(IUnknown interface) =>
      IWbemClassObject(interface.toInterface(IID_IWbemClassObject));

  int getQualifierSet(Pointer<Pointer<COMObject>> ppQualSet) =>
      (ptr.ref.vtable + 3)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(Pointer, Pointer<Pointer<COMObject>> ppQualSet)
              >
            >
          >()
          .value
          .asFunction<
            int Function(Pointer, Pointer<Pointer<COMObject>> ppQualSet)
          >()(ptr.ref.lpVtbl, ppQualSet);

  int get(
    Pointer<Utf16> wszName,
    int lFlags,
    Pointer<VARIANT> pVal,
    Pointer<Int32> pType,
    Pointer<Int32> plFlavor,
  ) => (ptr.ref.vtable + 4)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<Utf16> wszName,
              Int32 lFlags,
              Pointer<VARIANT> pVal,
              Pointer<Int32> pType,
              Pointer<Int32> plFlavor,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<Utf16> wszName,
          int lFlags,
          Pointer<VARIANT> pVal,
          Pointer<Int32> pType,
          Pointer<Int32> plFlavor,
        )
      >()(ptr.ref.lpVtbl, wszName, lFlags, pVal, pType, plFlavor);

  int put(
    Pointer<Utf16> wszName,
    int lFlags,
    Pointer<VARIANT> pVal,
    int Type,
  ) => (ptr.ref.vtable + 5)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<Utf16> wszName,
              Int32 lFlags,
              Pointer<VARIANT> pVal,
              Int32 Type,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<Utf16> wszName,
          int lFlags,
          Pointer<VARIANT> pVal,
          int Type,
        )
      >()(ptr.ref.lpVtbl, wszName, lFlags, pVal, Type);

  int delete(Pointer<Utf16> wszName) => (ptr.ref.vtable + 6)
      .cast<
        Pointer<NativeFunction<Int32 Function(Pointer, Pointer<Utf16> wszName)>>
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Utf16> wszName)>()(
    ptr.ref.lpVtbl,
    wszName,
  );

  int getNames(
    Pointer<Utf16> wszQualifierName,
    int lFlags,
    Pointer<VARIANT> pQualifierVal,
    Pointer<Pointer<SAFEARRAY>> pNames,
  ) => (ptr.ref.vtable + 7)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<Utf16> wszQualifierName,
              Int32 lFlags,
              Pointer<VARIANT> pQualifierVal,
              Pointer<Pointer<SAFEARRAY>> pNames,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<Utf16> wszQualifierName,
          int lFlags,
          Pointer<VARIANT> pQualifierVal,
          Pointer<Pointer<SAFEARRAY>> pNames,
        )
      >()(ptr.ref.lpVtbl, wszQualifierName, lFlags, pQualifierVal, pNames);

  int beginEnumeration(int lEnumFlags) => (ptr.ref.vtable + 8)
      .cast<
        Pointer<NativeFunction<Int32 Function(Pointer, Int32 lEnumFlags)>>
      >()
      .value
      .asFunction<int Function(Pointer, int lEnumFlags)>()(
    ptr.ref.lpVtbl,
    lEnumFlags,
  );

  int next(
    int lFlags,
    Pointer<Pointer<Utf16>> strName,
    Pointer<VARIANT> pVal,
    Pointer<Int32> pType,
    Pointer<Int32> plFlavor,
  ) => (ptr.ref.vtable + 9)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Int32 lFlags,
              Pointer<Pointer<Utf16>> strName,
              Pointer<VARIANT> pVal,
              Pointer<Int32> pType,
              Pointer<Int32> plFlavor,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          int lFlags,
          Pointer<Pointer<Utf16>> strName,
          Pointer<VARIANT> pVal,
          Pointer<Int32> pType,
          Pointer<Int32> plFlavor,
        )
      >()(ptr.ref.lpVtbl, lFlags, strName, pVal, pType, plFlavor);

  int endEnumeration() => (ptr.ref.vtable + 10)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer)>>>()
      .value
      .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int getPropertyQualifierSet(
    Pointer<Utf16> wszProperty,
    Pointer<Pointer<COMObject>> ppQualSet,
  ) => (ptr.ref.vtable + 11)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<Utf16> wszProperty,
              Pointer<Pointer<COMObject>> ppQualSet,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<Utf16> wszProperty,
          Pointer<Pointer<COMObject>> ppQualSet,
        )
      >()(ptr.ref.lpVtbl, wszProperty, ppQualSet);

  int clone(Pointer<Pointer<COMObject>> ppCopy) => (ptr.ref.vtable + 12)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<Pointer<COMObject>> ppCopy)
          >
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Pointer<COMObject>> ppCopy)>()(
    ptr.ref.lpVtbl,
    ppCopy,
  );

  int getObjectText(int lFlags, Pointer<Pointer<Utf16>> pstrObjectText) =>
      (ptr.ref.vtable + 13)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Int32 lFlags,
                  Pointer<Pointer<Utf16>> pstrObjectText,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(
              Pointer,
              int lFlags,
              Pointer<Pointer<Utf16>> pstrObjectText,
            )
          >()(ptr.ref.lpVtbl, lFlags, pstrObjectText);

  int spawnDerivedClass(int lFlags, Pointer<Pointer<COMObject>> ppNewClass) =>
      (ptr.ref.vtable + 14)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Int32 lFlags,
                  Pointer<Pointer<COMObject>> ppNewClass,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(
              Pointer,
              int lFlags,
              Pointer<Pointer<COMObject>> ppNewClass,
            )
          >()(ptr.ref.lpVtbl, lFlags, ppNewClass);

  int spawnInstance(int lFlags, Pointer<Pointer<COMObject>> ppNewInstance) =>
      (ptr.ref.vtable + 15)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Int32 lFlags,
                  Pointer<Pointer<COMObject>> ppNewInstance,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(
              Pointer,
              int lFlags,
              Pointer<Pointer<COMObject>> ppNewInstance,
            )
          >()(ptr.ref.lpVtbl, lFlags, ppNewInstance);

  int compareTo(int lFlags, Pointer<COMObject> pCompareTo) => (ptr.ref.vtable +
          16)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Int32 lFlags, Pointer<COMObject> pCompareTo)
          >
        >
      >()
      .value
      .asFunction<
        int Function(Pointer, int lFlags, Pointer<COMObject> pCompareTo)
      >()(ptr.ref.lpVtbl, lFlags, pCompareTo);

  int getPropertyOrigin(
    Pointer<Utf16> wszName,
    Pointer<Pointer<Utf16>> pstrClassName,
  ) => (ptr.ref.vtable + 17)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<Utf16> wszName,
              Pointer<Pointer<Utf16>> pstrClassName,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<Utf16> wszName,
          Pointer<Pointer<Utf16>> pstrClassName,
        )
      >()(ptr.ref.lpVtbl, wszName, pstrClassName);

  int inheritsFrom(Pointer<Utf16> strAncestor) => (ptr.ref.vtable + 18)
      .cast<
        Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Utf16> strAncestor)>
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Utf16> strAncestor)>()(
    ptr.ref.lpVtbl,
    strAncestor,
  );

  int getMethod(
    Pointer<Utf16> wszName,
    int lFlags,
    Pointer<Pointer<COMObject>> ppInSignature,
    Pointer<Pointer<COMObject>> ppOutSignature,
  ) => (ptr.ref.vtable + 19)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<Utf16> wszName,
              Int32 lFlags,
              Pointer<Pointer<COMObject>> ppInSignature,
              Pointer<Pointer<COMObject>> ppOutSignature,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<Utf16> wszName,
          int lFlags,
          Pointer<Pointer<COMObject>> ppInSignature,
          Pointer<Pointer<COMObject>> ppOutSignature,
        )
      >()(ptr.ref.lpVtbl, wszName, lFlags, ppInSignature, ppOutSignature);

  int putMethod(
    Pointer<Utf16> wszName,
    int lFlags,
    Pointer<COMObject> pInSignature,
    Pointer<COMObject> pOutSignature,
  ) => (ptr.ref.vtable + 20)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<Utf16> wszName,
              Int32 lFlags,
              Pointer<COMObject> pInSignature,
              Pointer<COMObject> pOutSignature,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<Utf16> wszName,
          int lFlags,
          Pointer<COMObject> pInSignature,
          Pointer<COMObject> pOutSignature,
        )
      >()(ptr.ref.lpVtbl, wszName, lFlags, pInSignature, pOutSignature);

  int deleteMethod(Pointer<Utf16> wszName) => (ptr.ref.vtable + 21)
      .cast<
        Pointer<NativeFunction<Int32 Function(Pointer, Pointer<Utf16> wszName)>>
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Utf16> wszName)>()(
    ptr.ref.lpVtbl,
    wszName,
  );

  int beginMethodEnumeration(int lEnumFlags) => (ptr.ref.vtable + 22)
      .cast<
        Pointer<NativeFunction<Int32 Function(Pointer, Int32 lEnumFlags)>>
      >()
      .value
      .asFunction<int Function(Pointer, int lEnumFlags)>()(
    ptr.ref.lpVtbl,
    lEnumFlags,
  );

  int nextMethod(
    int lFlags,
    Pointer<Pointer<Utf16>> pstrName,
    Pointer<Pointer<COMObject>> ppInSignature,
    Pointer<Pointer<COMObject>> ppOutSignature,
  ) => (ptr.ref.vtable + 23)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Int32 lFlags,
              Pointer<Pointer<Utf16>> pstrName,
              Pointer<Pointer<COMObject>> ppInSignature,
              Pointer<Pointer<COMObject>> ppOutSignature,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          int lFlags,
          Pointer<Pointer<Utf16>> pstrName,
          Pointer<Pointer<COMObject>> ppInSignature,
          Pointer<Pointer<COMObject>> ppOutSignature,
        )
      >()(ptr.ref.lpVtbl, lFlags, pstrName, ppInSignature, ppOutSignature);

  int endMethodEnumeration() => (ptr.ref.vtable + 24)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer)>>>()
      .value
      .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int getMethodQualifierSet(
    Pointer<Utf16> wszMethod,
    Pointer<Pointer<COMObject>> ppQualSet,
  ) => (ptr.ref.vtable + 25)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<Utf16> wszMethod,
              Pointer<Pointer<COMObject>> ppQualSet,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<Utf16> wszMethod,
          Pointer<Pointer<COMObject>> ppQualSet,
        )
      >()(ptr.ref.lpVtbl, wszMethod, ppQualSet);

  int getMethodOrigin(
    Pointer<Utf16> wszMethodName,
    Pointer<Pointer<Utf16>> pstrClassName,
  ) => (ptr.ref.vtable + 26)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<Utf16> wszMethodName,
              Pointer<Pointer<Utf16>> pstrClassName,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<Utf16> wszMethodName,
          Pointer<Pointer<Utf16>> pstrClassName,
        )
      >()(ptr.ref.lpVtbl, wszMethodName, pstrClassName);
}

/// @nodoc
const CLSID_WbemClassObject = '{9a653086-174f-11d2-b5f9-00104b703efd}';

/// {@category com}
class WbemClassObject extends IWbemClassObject {
  WbemClassObject(super.ptr);

  factory WbemClassObject.createInstance() => WbemClassObject(
    COMObject.createFromID(CLSID_WbemClassObject, IID_IWbemClassObject),
  );
}
