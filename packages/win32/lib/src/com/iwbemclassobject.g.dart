// Dart representation of a COM interface.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';

import '../allocator.dart';
import '../bstr.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/iunknown.dart';
import '../extensions/pointer.dart';
import '../guid.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import '../variant.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';
import 'iwbemclassobject.g.dart';
import 'iwbemqualifierset.g.dart';

/// @nodoc
final IID_IWbemClassObject = Guid.fromComponents(
  0xdc12a681,
  0x737f,
  0x11cf,
  Uint8List.fromList(const [0x88, 0x4d, 0x0, 0xaa, 0x0, 0x4b, 0x2e, 0x24]),
);

/// Contains and manipulates both class definitions and class object instances.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wbemcli/nn-wbemcli-iwbemclassobject>.
///
/// {@category com}
class IWbemClassObject extends IUnknown implements ComInterface {
  /// Creates a new instance of [IWbemClassObject] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IWbemClassObject]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IWbemClassObject(super.ptr)
    : _vtable = ptr.value.cast<IWbemClassObjectVtbl>().ref;

  /// Creates a new instance of [IWbemClassObject] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IWbemClassObject] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IWbemClassObject.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IWbemClassObjectVtbl _vtable;
  late final _GetQualifierSetFn =
      _vtable.GetQualifierSet.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetFn =
      _vtable.Get.asFunction<
        int Function(
          VTablePointer,
          PCWSTR,
          int,
          Pointer<VARIANT>,
          Pointer<Int32>,
          Pointer<Int32>,
        )
      >();
  late final _PutFn =
      _vtable.Put.asFunction<
        int Function(VTablePointer, PCWSTR, int, Pointer<VARIANT>, int)
      >();
  late final _DeleteFn =
      _vtable.Delete.asFunction<int Function(VTablePointer, PCWSTR)>();
  late final _GetNamesFn =
      _vtable.GetNames.asFunction<
        int Function(
          VTablePointer,
          PCWSTR,
          int,
          Pointer<VARIANT>,
          Pointer<Pointer<SAFEARRAY>>,
        )
      >();
  late final _BeginEnumerationFn =
      _vtable.BeginEnumeration.asFunction<int Function(VTablePointer, int)>();
  late final _NextFn =
      _vtable.Next.asFunction<
        int Function(
          VTablePointer,
          int,
          Pointer<BSTR>,
          Pointer<VARIANT>,
          Pointer<Int32>,
          Pointer<Int32>,
        )
      >();
  late final _EndEnumerationFn =
      _vtable.EndEnumeration.asFunction<int Function(VTablePointer)>();
  late final _GetPropertyQualifierSetFn =
      _vtable.GetPropertyQualifierSet.asFunction<
        int Function(VTablePointer, PCWSTR, Pointer<VTablePointer>)
      >();
  late final _CloneFn = _vtable
      .Clone.asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _GetObjectTextFn =
      _vtable.GetObjectText.asFunction<
        int Function(VTablePointer, int, Pointer<BSTR>)
      >();
  late final _SpawnDerivedClassFn =
      _vtable.SpawnDerivedClass.asFunction<
        int Function(VTablePointer, int, Pointer<VTablePointer>)
      >();
  late final _SpawnInstanceFn =
      _vtable.SpawnInstance.asFunction<
        int Function(VTablePointer, int, Pointer<VTablePointer>)
      >();
  late final _CompareToFn = _vtable
      .CompareTo.asFunction<int Function(VTablePointer, int, VTablePointer)>();
  late final _GetPropertyOriginFn =
      _vtable.GetPropertyOrigin.asFunction<
        int Function(VTablePointer, PCWSTR, Pointer<BSTR>)
      >();
  late final _InheritsFromFn =
      _vtable.InheritsFrom.asFunction<int Function(VTablePointer, PCWSTR)>();
  late final _GetMethodFn =
      _vtable.GetMethod.asFunction<
        int Function(
          VTablePointer,
          PCWSTR,
          int,
          Pointer<VTablePointer>,
          Pointer<VTablePointer>,
        )
      >();
  late final _PutMethodFn =
      _vtable.PutMethod.asFunction<
        int Function(VTablePointer, PCWSTR, int, VTablePointer, VTablePointer)
      >();
  late final _DeleteMethodFn =
      _vtable.DeleteMethod.asFunction<int Function(VTablePointer, PCWSTR)>();
  late final _BeginMethodEnumerationFn = _vtable
      .BeginMethodEnumeration.asFunction<int Function(VTablePointer, int)>();
  late final _NextMethodFn =
      _vtable.NextMethod.asFunction<
        int Function(
          VTablePointer,
          int,
          Pointer<BSTR>,
          Pointer<VTablePointer>,
          Pointer<VTablePointer>,
        )
      >();
  late final _EndMethodEnumerationFn =
      _vtable.EndMethodEnumeration.asFunction<int Function(VTablePointer)>();
  late final _GetMethodQualifierSetFn =
      _vtable.GetMethodQualifierSet.asFunction<
        int Function(VTablePointer, PCWSTR, Pointer<VTablePointer>)
      >();
  late final _GetMethodOriginFn =
      _vtable.GetMethodOrigin.asFunction<
        int Function(VTablePointer, PCWSTR, Pointer<BSTR>)
      >();

  /// Returns an interface pointer that allows read and write operations on the
  /// set of qualifiers for the entire class object, whether the object is an
  /// instance or a class definition.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-getqualifierset>.
  IWbemQualifierSet? getQualifierSet() {
    final ppQualSet = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetQualifierSetFn(ptr, ppQualSet));
    if (hr$.isError) {
      free(ppQualSet);
      throw WindowsException(hr$);
    }
    final result$ = ppQualSet.value;
    free(ppQualSet);
    if (result$.isNull) return null;
    return IWbemQualifierSet(result$);
  }

  /// Retrieves the specified property value, if it exists.
  ///
  /// This method can also return system properties.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-get>.
  @pragma('vm:prefer-inline')
  void get(
    PCWSTR wszName,
    int lFlags,
    Pointer<VARIANT> pVal,
    Pointer<Int32>? pType,
    Pointer<Int32>? plFlavor,
  ) {
    final hr$ = HRESULT(
      _GetFn(ptr, wszName, lFlags, pVal, pType ?? nullptr, plFlavor ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets a named property to a new value.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-put>.
  @pragma('vm:prefer-inline')
  void put(PCWSTR wszName, int lFlags, Pointer<VARIANT> pVal, int type) {
    final hr$ = HRESULT(_PutFn(ptr, wszName, lFlags, pVal, type));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Deletes the specified property from a CIM class definition and all of its
  /// qualifiers.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-delete>.
  @pragma('vm:prefer-inline')
  void delete(PCWSTR wszName) {
    final hr$ = HRESULT(_DeleteFn(ptr, wszName));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the names of the properties in the object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-getnames>.
  Pointer<SAFEARRAY> getNames(
    PCWSTR wszQualifierName,
    WBEM_CONDITION_FLAG_TYPE lFlags,
    Pointer<VARIANT> pQualifierVal,
  ) {
    final pNames = loggingCalloc<Pointer<SAFEARRAY>>();
    final hr$ = HRESULT(
      _GetNamesFn(ptr, wszQualifierName, lFlags, pQualifierVal, pNames),
    );
    if (hr$.isError) {
      free(pNames);
      throw WindowsException(hr$);
    }
    final result$ = pNames.value;
    free(pNames);
    return result$;
  }

  /// Resets an enumeration back to the beginning of the enumeration.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-beginenumeration>.
  @pragma('vm:prefer-inline')
  void beginEnumeration(int lEnumFlags) {
    final hr$ = HRESULT(_BeginEnumerationFn(ptr, lEnumFlags));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the next property in an enumeration that started with
  /// `IWbemClassObject.beginEnumeration`.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-next>.
  @pragma('vm:prefer-inline')
  void next(
    int lFlags,
    Pointer<BSTR> strName,
    Pointer<VARIANT> pVal,
    Pointer<Int32> pType,
    Pointer<Int32> plFlavor,
  ) {
    final hr$ = HRESULT(_NextFn(ptr, lFlags, strName, pVal, pType, plFlavor));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Terminates an enumeration sequence started with
  /// `IWbemClassObject.beginEnumeration`.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-endenumeration>.
  @pragma('vm:prefer-inline')
  void endEnumeration() {
    final hr$ = HRESULT(_EndEnumerationFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the qualifier set for a particular property in the class object.
  ///
  /// You can use this method with properties that are a member of an instance
  /// or a class definition.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-getpropertyqualifierset>.
  IWbemQualifierSet? getPropertyQualifierSet(PCWSTR wszProperty) {
    final ppQualSet = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _GetPropertyQualifierSetFn(ptr, wszProperty, ppQualSet),
    );
    if (hr$.isError) {
      free(ppQualSet);
      throw WindowsException(hr$);
    }
    final result$ = ppQualSet.value;
    free(ppQualSet);
    if (result$.isNull) return null;
    return IWbemQualifierSet(result$);
  }

  /// Returns a new object that is a complete clone of the current object.
  ///
  /// The new object has a COM reference count of 1.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-clone>.
  IWbemClassObject? clone() {
    final ppCopy = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_CloneFn(ptr, ppCopy));
    if (hr$.isError) {
      free(ppCopy);
      throw WindowsException(hr$);
    }
    final result$ = ppCopy.value;
    free(ppCopy);
    if (result$.isNull) return null;
    return IWbemClassObject(result$);
  }

  /// Returns a textual rendering of the object in the MOF syntax.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-getobjecttext>.
  BSTR getObjectText(int lFlags) {
    final pstrObjectText = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_GetObjectTextFn(ptr, lFlags, pstrObjectText));
    if (hr$.isError) {
      free(pstrObjectText);
      throw WindowsException(hr$);
    }
    final result$ = pstrObjectText.value;
    free(pstrObjectText);
    return result$;
  }

  /// Use the `IWbemClassObject.spawnDerivedClass` method to create a newly
  /// derived class object from the current object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-spawnderivedclass>.
  IWbemClassObject? spawnDerivedClass(int lFlags) {
    final ppNewClass = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_SpawnDerivedClassFn(ptr, lFlags, ppNewClass));
    if (hr$.isError) {
      free(ppNewClass);
      throw WindowsException(hr$);
    }
    final result$ = ppNewClass.value;
    free(ppNewClass);
    if (result$.isNull) return null;
    return IWbemClassObject(result$);
  }

  /// Use the `IWbemClassObject.spawnInstance` method to create a new instance
  /// of a class.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-spawninstance>.
  IWbemClassObject? spawnInstance(int lFlags) {
    final ppNewInstance = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_SpawnInstanceFn(ptr, lFlags, ppNewInstance));
    if (hr$.isError) {
      free(ppNewInstance);
      throw WindowsException(hr$);
    }
    final result$ = ppNewInstance.value;
    free(ppNewInstance);
    if (result$.isNull) return null;
    return IWbemClassObject(result$);
  }

  /// Compares an object to another Windows Management object.
  ///
  /// Note that there are certain constraints in this comparison process.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-compareto>.
  @pragma('vm:prefer-inline')
  void compareTo(WBEM_COMPARISON_FLAG lFlags, IWbemClassObject? pCompareTo) {
    final hr$ = HRESULT(_CompareToFn(ptr, lFlags, pCompareTo?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the name of the class in which a particular property was
  /// introduced.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-getpropertyorigin>.
  BSTR getPropertyOrigin(PCWSTR wszName) {
    final pstrClassName = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_GetPropertyOriginFn(ptr, wszName, pstrClassName));
    if (hr$.isError) {
      free(pstrClassName);
      throw WindowsException(hr$);
    }
    final result$ = pstrClassName.value;
    free(pstrClassName);
    return result$;
  }

  /// Determines if the current class or instance derives from a specified
  /// parent class.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-inheritsfrom>.
  @pragma('vm:prefer-inline')
  void inheritsFrom(PCWSTR strAncestor) {
    final hr$ = HRESULT(_InheritsFromFn(ptr, strAncestor));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Returns information about the requested method.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-getmethod>.
  @pragma('vm:prefer-inline')
  void getMethod(
    PCWSTR wszName,
    int lFlags,
    Pointer<VTablePointer> ppInSignature,
    Pointer<VTablePointer> ppOutSignature,
  ) {
    final hr$ = HRESULT(
      _GetMethodFn(ptr, wszName, lFlags, ppInSignature, ppOutSignature),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Used to create a method.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-putmethod>.
  @pragma('vm:prefer-inline')
  void putMethod(
    PCWSTR wszName,
    int lFlags,
    IWbemClassObject? pInSignature,
    IWbemClassObject? pOutSignature,
  ) {
    final hr$ = HRESULT(
      _PutMethodFn(
        ptr,
        wszName,
        lFlags,
        pInSignature?.ptr ?? nullptr,
        pOutSignature?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Use the `IWbemClassObject.deleteMethod` method to delete a method.
  ///
  /// This call is supported only if the current object is a CIM class
  /// definition. Method manipulation is not available from IWbemClassObject
  /// pointers which point to CIM instances.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-deletemethod>.
  @pragma('vm:prefer-inline')
  void deleteMethod(PCWSTR wszName) {
    final hr$ = HRESULT(_DeleteMethodFn(ptr, wszName));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Use the `IWbemClassObject.beginMethodEnumeration` method call to begin an
  /// enumeration of the methods available for the object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-beginmethodenumeration>.
  @pragma('vm:prefer-inline')
  void beginMethodEnumeration(int lEnumFlags) {
    final hr$ = HRESULT(_BeginMethodEnumerationFn(ptr, lEnumFlags));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Used to retrieve the next method in a method enumeration sequence that
  /// starts with a call to `IWbemClassObject.beginMethodEnumeration`.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-nextmethod>.
  @pragma('vm:prefer-inline')
  void nextMethod(
    int lFlags,
    Pointer<BSTR> pstrName,
    Pointer<VTablePointer> ppInSignature,
    Pointer<VTablePointer> ppOutSignature,
  ) {
    final hr$ = HRESULT(
      _NextMethodFn(ptr, lFlags, pstrName, ppInSignature, ppOutSignature),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Used to terminate a method enumeration sequence started with
  /// `IWbemClassObject.beginMethodEnumeration`.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-endmethodenumeration>.
  @pragma('vm:prefer-inline')
  void endMethodEnumeration() {
    final hr$ = HRESULT(_EndMethodEnumerationFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// The `IWbemClassObject.getMethodQualifierSet` is used to retrieve the
  /// qualifier set for a particular method.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-getmethodqualifierset>.
  IWbemQualifierSet? getMethodQualifierSet(PCWSTR wszMethod) {
    final ppQualSet = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetMethodQualifierSetFn(ptr, wszMethod, ppQualSet));
    if (hr$.isError) {
      free(ppQualSet);
      throw WindowsException(hr$);
    }
    final result$ = ppQualSet.value;
    free(ppQualSet);
    if (result$.isNull) return null;
    return IWbemQualifierSet(result$);
  }

  /// Used to determine the class for which a method was declared.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-getmethodorigin>.
  BSTR getMethodOrigin(PCWSTR wszMethodName) {
    final pstrClassName = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_GetMethodOriginFn(ptr, wszMethodName, pstrClassName));
    if (hr$.isError) {
      free(pstrClassName);
      throw WindowsException(hr$);
    }
    final result$ = pstrClassName.value;
    free(pstrClassName);
    return result$;
  }

  @override
  String toString() => 'IWbemClassObject(ptr: $ptr)';
}

/// @nodoc
base class IWbemClassObjectVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppQualSet)
    >
  >
  GetQualifierSet;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR wszName,
        Int32 lFlags,
        Pointer<VARIANT> pVal,
        Pointer<Int32> pType,
        Pointer<Int32> plFlavor,
      )
    >
  >
  Get;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR wszName,
        Int32 lFlags,
        Pointer<VARIANT> pVal,
        Int32 type,
      )
    >
  >
  Put;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, PCWSTR wszName)>
  >
  Delete;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR wszQualifierName,
        Int32 lFlags,
        Pointer<VARIANT> pQualifierVal,
        Pointer<Pointer<SAFEARRAY>> pNames,
      )
    >
  >
  GetNames;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 lEnumFlags)>
  >
  BeginEnumeration;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 lFlags,
        Pointer<BSTR> strName,
        Pointer<VARIANT> pVal,
        Pointer<Int32> pType,
        Pointer<Int32> plFlavor,
      )
    >
  >
  Next;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  EndEnumeration;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR wszProperty,
        Pointer<VTablePointer> ppQualSet,
      )
    >
  >
  GetPropertyQualifierSet;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppCopy)
    >
  >
  Clone;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 lFlags,
        Pointer<BSTR> pstrObjectText,
      )
    >
  >
  GetObjectText;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 lFlags,
        Pointer<VTablePointer> ppNewClass,
      )
    >
  >
  SpawnDerivedClass;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 lFlags,
        Pointer<VTablePointer> ppNewInstance,
      )
    >
  >
  SpawnInstance;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 lFlags,
        VTablePointer pCompareTo,
      )
    >
  >
  CompareTo;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR wszName,
        Pointer<BSTR> pstrClassName,
      )
    >
  >
  GetPropertyOrigin;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, PCWSTR strAncestor)>
  >
  InheritsFrom;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR wszName,
        Int32 lFlags,
        Pointer<VTablePointer> ppInSignature,
        Pointer<VTablePointer> ppOutSignature,
      )
    >
  >
  GetMethod;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR wszName,
        Int32 lFlags,
        VTablePointer pInSignature,
        VTablePointer pOutSignature,
      )
    >
  >
  PutMethod;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, PCWSTR wszName)>
  >
  DeleteMethod;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 lEnumFlags)>
  >
  BeginMethodEnumeration;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 lFlags,
        Pointer<BSTR> pstrName,
        Pointer<VTablePointer> ppInSignature,
        Pointer<VTablePointer> ppOutSignature,
      )
    >
  >
  NextMethod;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  EndMethodEnumeration;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR wszMethod,
        Pointer<VTablePointer> ppQualSet,
      )
    >
  >
  GetMethodQualifierSet;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR wszMethodName,
        Pointer<BSTR> pstrClassName,
      )
    >
  >
  GetMethodOrigin;
}

@internal
final class IWbemClassObjectCompanion extends ComCompanion<IWbemClassObject> {
  const IWbemClassObjectCompanion();

  @pragma('vm:prefer-inline')
  @override
  IWbemClassObject Function(VTablePointer) get fromPointer =>
      IWbemClassObject.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IWbemClassObject;
}
