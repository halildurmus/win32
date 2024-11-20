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
import 'itypecomp.g.dart';
import 'itypeinfo.g.dart';
import 'itypelib.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ITypeInfo = Guid.fromComponents(
  0x20401,
  0x0,
  0x0,
  Uint8List.fromList(const [0xc0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x46]),
);

/// Used for reading information about objects.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/nn-oaidl-itypeinfo>.
///
/// {@category com}
class ITypeInfo extends IUnknown implements ComInterface {
  /// Creates a new instance of [ITypeInfo] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ITypeInfo] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  ITypeInfo(super.ptr) : _vtable = ptr.value.cast<ITypeInfoVtbl>().ref;

  /// Creates a new instance of [ITypeInfo] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [ITypeInfo] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ITypeInfo.from(IUnknown interface, {bool releaseOriginal = false}) =>
      interface.cast(releaseOriginal: releaseOriginal);

  final ITypeInfoVtbl _vtable;
  late final _GetTypeAttrFn =
      _vtable.GetTypeAttr.asFunction<
        int Function(VTablePointer, Pointer<Pointer<TYPEATTR>>)
      >();
  late final _GetTypeCompFn =
      _vtable.GetTypeComp.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetFuncDescFn =
      _vtable.GetFuncDesc.asFunction<
        int Function(VTablePointer, int, Pointer<Pointer<FUNCDESC>>)
      >();
  late final _GetVarDescFn =
      _vtable.GetVarDesc.asFunction<
        int Function(VTablePointer, int, Pointer<Pointer<VARDESC>>)
      >();
  late final _GetNamesFn =
      _vtable.GetNames.asFunction<
        int Function(VTablePointer, int, Pointer<BSTR>, int, Pointer<Uint32>)
      >();
  late final _GetRefTypeOfImplTypeFn =
      _vtable.GetRefTypeOfImplType.asFunction<
        int Function(VTablePointer, int, Pointer<Uint32>)
      >();
  late final _GetImplTypeFlagsFn =
      _vtable.GetImplTypeFlags.asFunction<
        int Function(VTablePointer, int, Pointer<Int32>)
      >();
  late final _GetIDsOfNamesFn =
      _vtable.GetIDsOfNames.asFunction<
        int Function(VTablePointer, Pointer<PCWSTR>, int, Pointer<Int32>)
      >();
  late final _InvokeFn =
      _vtable.Invoke.asFunction<
        int Function(
          VTablePointer,
          Pointer,
          int,
          int,
          Pointer<DISPPARAMS>,
          Pointer<VARIANT>,
          Pointer<EXCEPINFO>,
          Pointer<Uint32>,
        )
      >();
  late final _GetDocumentationFn =
      _vtable.GetDocumentation.asFunction<
        int Function(
          VTablePointer,
          int,
          Pointer<BSTR>,
          Pointer<BSTR>,
          Pointer<Uint32>,
          Pointer<BSTR>,
        )
      >();
  late final _GetDllEntryFn =
      _vtable.GetDllEntry.asFunction<
        int Function(
          VTablePointer,
          int,
          int,
          Pointer<BSTR>,
          Pointer<BSTR>,
          Pointer<Uint16>,
        )
      >();
  late final _GetRefTypeInfoFn =
      _vtable.GetRefTypeInfo.asFunction<
        int Function(VTablePointer, int, Pointer<VTablePointer>)
      >();
  late final _AddressOfMemberFn =
      _vtable.AddressOfMember.asFunction<
        int Function(VTablePointer, int, int, Pointer<Pointer>)
      >();
  late final _CreateInstanceFn =
      _vtable.CreateInstance.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          Pointer<GUID>,
          Pointer<Pointer>,
        )
      >();
  late final _GetMopsFn = _vtable
      .GetMops.asFunction<int Function(VTablePointer, int, Pointer<BSTR>)>();
  late final _GetContainingTypeLibFn =
      _vtable.GetContainingTypeLib.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>, Pointer<Uint32>)
      >();
  late final _ReleaseTypeAttrFn =
      _vtable.ReleaseTypeAttr.asFunction<
        void Function(VTablePointer, Pointer<TYPEATTR>)
      >();
  late final _ReleaseFuncDescFn =
      _vtable.ReleaseFuncDesc.asFunction<
        void Function(VTablePointer, Pointer<FUNCDESC>)
      >();
  late final _ReleaseVarDescFn =
      _vtable.ReleaseVarDesc.asFunction<
        void Function(VTablePointer, Pointer<VARDESC>)
      >();

  /// Retrieves a TYPEATTR structure that contains the attributes of the type
  /// description.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypeinfo-gettypeattr>.
  Pointer<TYPEATTR> getTypeAttr() {
    final ppTypeAttr = loggingCalloc<Pointer<TYPEATTR>>();
    final hr$ = HRESULT(_GetTypeAttrFn(ptr, ppTypeAttr));
    if (hr$.isError) {
      free(ppTypeAttr);
      throw WindowsException(hr$);
    }
    final result$ = ppTypeAttr.value;
    free(ppTypeAttr);
    return result$;
  }

  /// Retrieves the ITypeComp interface for the type description, which enables
  /// a client compiler to bind to the type description's members.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypeinfo-gettypecomp>.
  ITypeComp? getTypeComp() {
    final ppTComp = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetTypeCompFn(ptr, ppTComp));
    if (hr$.isError) {
      free(ppTComp);
      throw WindowsException(hr$);
    }
    final result$ = ppTComp.value;
    free(ppTComp);
    if (result$.isNull) return null;
    return ITypeComp(result$);
  }

  /// Retrieves the FUNCDESC structure that contains information about a
  /// specified function.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypeinfo-getfuncdesc>.
  Pointer<FUNCDESC> getFuncDesc(int index) {
    final ppFuncDesc = loggingCalloc<Pointer<FUNCDESC>>();
    final hr$ = HRESULT(_GetFuncDescFn(ptr, index, ppFuncDesc));
    if (hr$.isError) {
      free(ppFuncDesc);
      throw WindowsException(hr$);
    }
    final result$ = ppFuncDesc.value;
    free(ppFuncDesc);
    return result$;
  }

  /// Retrieves a VARDESC structure that describes the specified variable.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypeinfo-getvardesc>.
  Pointer<VARDESC> getVarDesc(int index) {
    final ppVarDesc = loggingCalloc<Pointer<VARDESC>>();
    final hr$ = HRESULT(_GetVarDescFn(ptr, index, ppVarDesc));
    if (hr$.isError) {
      free(ppVarDesc);
      throw WindowsException(hr$);
    }
    final result$ = ppVarDesc.value;
    free(ppVarDesc);
    return result$;
  }

  /// Retrieves the variable with the specified member ID or the name of the
  /// property or method and the parameters that correspond to the specified
  /// function ID.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypeinfo-getnames>.
  @pragma('vm:prefer-inline')
  void getNames(
    int memid,
    Pointer<BSTR> rgBstrNames,
    int cMaxNames,
    Pointer<Uint32> pcNames,
  ) {
    final hr$ = HRESULT(
      _GetNamesFn(ptr, memid, rgBstrNames, cMaxNames, pcNames),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// If a type description describes a COM class, it retrieves the type
  /// description of the implemented interface types.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypeinfo-getreftypeofimpltype>.
  int getRefTypeOfImplType(int index) {
    final pRefType = loggingCalloc<Uint32>();
    final hr$ = HRESULT(_GetRefTypeOfImplTypeFn(ptr, index, pRefType));
    if (hr$.isError) {
      free(pRefType);
      throw WindowsException(hr$);
    }
    final result$ = pRefType.value;
    free(pRefType);
    return result$;
  }

  /// Retrieves the IMPLTYPEFLAGS enumeration for one implemented interface or
  /// base interface in a type description.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypeinfo-getimpltypeflags>.
  IMPLTYPEFLAGS getImplTypeFlags(int index) {
    final pImplTypeFlags = loggingCalloc<Int32>();
    final hr$ = HRESULT(_GetImplTypeFlagsFn(ptr, index, pImplTypeFlags));
    if (hr$.isError) {
      free(pImplTypeFlags);
      throw WindowsException(hr$);
    }
    final result$ = pImplTypeFlags.value;
    free(pImplTypeFlags);
    return IMPLTYPEFLAGS(result$);
  }

  /// Maps between member names and member IDs, and parameter names and
  /// parameter IDs.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypeinfo-getidsofnames>.
  @pragma('vm:prefer-inline')
  void getIDsOfNames(
    Pointer<PCWSTR> rgszNames,
    int cNames,
    Pointer<Int32> pMemId,
  ) {
    final hr$ = HRESULT(_GetIDsOfNamesFn(ptr, rgszNames, cNames, pMemId));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Invokes a method, or accesses a property of an object, that implements the
  /// interface described by the type description.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypeinfo-invoke>.
  @pragma('vm:prefer-inline')
  void invoke(
    Pointer pvInstance,
    int memid,
    DISPATCH_FLAGS wFlags,
    Pointer<DISPPARAMS> pDispParams,
    Pointer<VARIANT> pVarResult,
    Pointer<EXCEPINFO> pExcepInfo,
    Pointer<Uint32> puArgErr,
  ) {
    final hr$ = HRESULT(
      _InvokeFn(
        ptr,
        pvInstance,
        memid,
        wFlags,
        pDispParams,
        pVarResult,
        pExcepInfo,
        puArgErr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the documentation string, the complete Help file name and path,
  /// and the context ID for the Help topic for a specified type description.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypeinfo-getdocumentation>.
  @pragma('vm:prefer-inline')
  void getDocumentation(
    int memid,
    Pointer<BSTR>? pBstrName,
    Pointer<BSTR>? pBstrDocString,
    Pointer<Uint32> pdwHelpContext,
    Pointer<BSTR>? pBstrHelpFile,
  ) {
    final hr$ = HRESULT(
      _GetDocumentationFn(
        ptr,
        memid,
        pBstrName ?? nullptr,
        pBstrDocString ?? nullptr,
        pdwHelpContext,
        pBstrHelpFile ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves a description or specification of an entry point for a function
  /// in a DLL.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypeinfo-getdllentry>.
  @pragma('vm:prefer-inline')
  void getDllEntry(
    int memid,
    INVOKEKIND invKind,
    Pointer<BSTR>? pBstrDllName,
    Pointer<BSTR>? pBstrName,
    Pointer<Uint16> pwOrdinal,
  ) {
    final hr$ = HRESULT(
      _GetDllEntryFn(
        ptr,
        memid,
        invKind,
        pBstrDllName ?? nullptr,
        pBstrName ?? nullptr,
        pwOrdinal,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// If a type description references other type descriptions, it retrieves the
  /// referenced type descriptions.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypeinfo-getreftypeinfo>.
  ITypeInfo? getRefTypeInfo(int hRefType) {
    final ppTInfo = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetRefTypeInfoFn(ptr, hRefType, ppTInfo));
    if (hr$.isError) {
      free(ppTInfo);
      throw WindowsException(hr$);
    }
    final result$ = ppTInfo.value;
    free(ppTInfo);
    if (result$.isNull) return null;
    return ITypeInfo(result$);
  }

  /// Retrieves the addresses of static functions or variables, such as those
  /// defined in a DLL.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypeinfo-addressofmember>.
  @pragma('vm:prefer-inline')
  void addressOfMember(int memid, INVOKEKIND invKind, Pointer<Pointer> ppv) {
    final hr$ = HRESULT(_AddressOfMemberFn(ptr, memid, invKind, ppv));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Creates a new instance of a type that describes a component object class
  /// (coclass).
  ///
  /// This method uses the [ComInterface.type] method to retrieve metadata about
  /// the target interface defined by [T], including its IID (Interface ID) and
  /// instantiation logic.
  ///
  /// All COM interfaces provided by this package are pre-registered. Custom COM
  /// interfaces must be registered manually using the [ComInterface.register]
  /// method before calling this method.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypeinfo-createinstance>.
  T createInstance<T extends IUnknown>(IUnknown? pUnkOuter) {
    final companion = ComInterface.type<T>();
    final riid = companion.iid;
    final ppvObj = loggingCalloc<Pointer>();
    final hr$ = HRESULT(
      _CreateInstanceFn(ptr, pUnkOuter?.ptr ?? nullptr, riid.ptr, ppvObj),
    );
    if (hr$.isError) {
      free(ppvObj);
      throw WindowsException(hr$);
    }
    final result = companion.fromPointer(ppvObj.value.cast());
    free(ppvObj);
    return result;
  }

  /// Retrieves marshaling information.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypeinfo-getmops>.
  BSTR getMops(int memid) {
    final pBstrMops = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_GetMopsFn(ptr, memid, pBstrMops));
    if (hr$.isError) {
      free(pBstrMops);
      throw WindowsException(hr$);
    }
    final result$ = pBstrMops.value;
    free(pBstrMops);
    return result$;
  }

  /// Retrieves the containing type library and the index of the type
  /// description within that type library.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypeinfo-getcontainingtypelib>.
  @pragma('vm:prefer-inline')
  void getContainingTypeLib(
    Pointer<VTablePointer> ppTLib,
    Pointer<Uint32> pIndex,
  ) {
    final hr$ = HRESULT(_GetContainingTypeLibFn(ptr, ppTLib, pIndex));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Releases a TYPEATTR previously returned by `ITypeInfo.getTypeAttr`.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypeinfo-releasetypeattr>.
  @pragma('vm:prefer-inline')
  void releaseTypeAttr(Pointer<TYPEATTR> pTypeAttr) =>
      _ReleaseTypeAttrFn(ptr, pTypeAttr);

  /// Releases a FUNCDESC previously returned by `ITypeInfo.getFuncDesc`.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypeinfo-releasefuncdesc>.
  @pragma('vm:prefer-inline')
  void releaseFuncDesc(Pointer<FUNCDESC> pFuncDesc) =>
      _ReleaseFuncDescFn(ptr, pFuncDesc);

  /// Releases a VARDESC previously returned by `ITypeInfo.getVarDesc`.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypeinfo-releasevardesc>.
  @pragma('vm:prefer-inline')
  void releaseVarDesc(Pointer<VARDESC> pVarDesc) =>
      _ReleaseVarDescFn(ptr, pVarDesc);

  @override
  String toString() => 'ITypeInfo(ptr: $ptr)';
}

/// @nodoc
base class ITypeInfoVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<TYPEATTR>> ppTypeAttr)
    >
  >
  GetTypeAttr;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppTComp)
    >
  >
  GetTypeComp;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 index,
        Pointer<Pointer<FUNCDESC>> ppFuncDesc,
      )
    >
  >
  GetFuncDesc;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 index,
        Pointer<Pointer<VARDESC>> ppVarDesc,
      )
    >
  >
  GetVarDesc;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 memid,
        Pointer<BSTR> rgBstrNames,
        Uint32 cMaxNames,
        Pointer<Uint32> pcNames,
      )
    >
  >
  GetNames;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 index,
        Pointer<Uint32> pRefType,
      )
    >
  >
  GetRefTypeOfImplType;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 index,
        Pointer<Int32> pImplTypeFlags,
      )
    >
  >
  GetImplTypeFlags;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PCWSTR> rgszNames,
        Uint32 cNames,
        Pointer<Int32> pMemId,
      )
    >
  >
  GetIDsOfNames;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer pvInstance,
        Int32 memid,
        Uint16 wFlags,
        Pointer<DISPPARAMS> pDispParams,
        Pointer<VARIANT> pVarResult,
        Pointer<EXCEPINFO> pExcepInfo,
        Pointer<Uint32> puArgErr,
      )
    >
  >
  Invoke;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 memid,
        Pointer<BSTR> pBstrName,
        Pointer<BSTR> pBstrDocString,
        Pointer<Uint32> pdwHelpContext,
        Pointer<BSTR> pBstrHelpFile,
      )
    >
  >
  GetDocumentation;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 memid,
        Int32 invKind,
        Pointer<BSTR> pBstrDllName,
        Pointer<BSTR> pBstrName,
        Pointer<Uint16> pwOrdinal,
      )
    >
  >
  GetDllEntry;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 hRefType,
        Pointer<VTablePointer> ppTInfo,
      )
    >
  >
  GetRefTypeInfo;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 memid,
        Int32 invKind,
        Pointer<Pointer> ppv,
      )
    >
  >
  AddressOfMember;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pUnkOuter,
        Pointer<GUID> riid,
        Pointer<Pointer> ppvObj,
      )
    >
  >
  CreateInstance;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Int32 memid, Pointer<BSTR> pBstrMops)
    >
  >
  GetMops;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> ppTLib,
        Pointer<Uint32> pIndex,
      )
    >
  >
  GetContainingTypeLib;
  external Pointer<
    NativeFunction<
      Void Function(VTablePointer this$, Pointer<TYPEATTR> pTypeAttr)
    >
  >
  ReleaseTypeAttr;
  external Pointer<
    NativeFunction<
      Void Function(VTablePointer this$, Pointer<FUNCDESC> pFuncDesc)
    >
  >
  ReleaseFuncDesc;
  external Pointer<
    NativeFunction<
      Void Function(VTablePointer this$, Pointer<VARDESC> pVarDesc)
    >
  >
  ReleaseVarDesc;
}

@internal
final class ITypeInfoCompanion extends ComCompanion<ITypeInfo> {
  const ITypeInfoCompanion();

  @pragma('vm:prefer-inline')
  @override
  ITypeInfo Function(VTablePointer) get fromPointer => ITypeInfo.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_ITypeInfo;
}
