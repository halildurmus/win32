// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Dart representation of a COM interface.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:meta/meta.dart';

import '../bstr.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
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
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'interface.g.dart';
import 'itypecomp.g.dart';
import 'itypeinfo.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ITypeLib = GUID.fromComponents(
  0x20402,
  0x0,
  0x0,
  .fromList(const [0xc0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x46]),
);

/// Represents a type library, the data that describes a set of objects.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/nn-oaidl-itypelib>.
///
/// {@category com}
class ITypeLib extends IUnknown implements ComInterface {
  /// Creates a new instance of [ITypeLib] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ITypeLib] interface. The
  /// [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ITypeLib(super.ptr) : _vtable = ptr.value.cast<ITypeLibVtbl>().ref;

  /// Creates a new instance of [ITypeLib] from an existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ITypeLib] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ITypeLib.from(IUnknown interface) => interface.queryInterface();

  final ITypeLibVtbl _vtable;
  late final _GetTypeInfoCountFn =
      _vtable.GetTypeInfoCount.asFunction<int Function(VTablePointer)>();
  late final _GetTypeInfoFn =
      _vtable.GetTypeInfo.asFunction<
        int Function(VTablePointer, int, Pointer<VTablePointer>)
      >();
  late final _GetTypeInfoTypeFn =
      _vtable.GetTypeInfoType.asFunction<
        int Function(VTablePointer, int, Pointer<Int32>)
      >();
  late final _GetTypeInfoOfGuidFn =
      _vtable.GetTypeInfoOfGuid.asFunction<
        int Function(VTablePointer, Pointer<GUID>, Pointer<VTablePointer>)
      >();
  late final _GetLibAttrFn =
      _vtable.GetLibAttr.asFunction<
        int Function(VTablePointer, Pointer<Pointer<TLIBATTR>>)
      >();
  late final _GetTypeCompFn =
      _vtable.GetTypeComp.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetDocumentationFn =
      _vtable.GetDocumentation.asFunction<
        int Function(
          VTablePointer,
          int,
          Pointer<Pointer<Utf16>>,
          Pointer<Pointer<Utf16>>,
          Pointer<Uint32>,
          Pointer<Pointer<Utf16>>,
        )
      >();
  late final _IsNameFn =
      _vtable.IsName.asFunction<
        int Function(VTablePointer, Pointer<Utf16>, int, Pointer<Int32>)
      >();
  late final _FindNameFn =
      _vtable.FindName.asFunction<
        int Function(
          VTablePointer,
          Pointer<Utf16>,
          int,
          Pointer<VTablePointer>,
          Pointer<Int32>,
          Pointer<Uint16>,
        )
      >();
  late final _ReleaseTLibAttrFn =
      _vtable.ReleaseTLibAttr.asFunction<
        void Function(VTablePointer, Pointer<TLIBATTR>)
      >();

  /// Provides the number of type descriptions that are in a type library.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypelib-gettypeinfocount>.
  @pragma('vm:prefer-inline')
  int getTypeInfoCount() => _GetTypeInfoCountFn(ptr);

  /// Retrieves the specified type description in the library.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypelib-gettypeinfo>.
  ITypeInfo? getTypeInfo(int index) {
    final ppTInfo = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetTypeInfoFn(ptr, index, ppTInfo));
    if (hr$.isError) {
      free(ppTInfo);
      throw WindowsException(hr$);
    }
    final result$ = ppTInfo.value;
    free(ppTInfo);
    if (result$.isNull) return null;
    return .new(result$);
  }

  /// Retrieves the type of a type description.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypelib-gettypeinfotype>.
  TYPEKIND getTypeInfoType(int index) {
    final pTKind = adaptiveCalloc<Int32>();
    final hr$ = HRESULT(_GetTypeInfoTypeFn(ptr, index, pTKind));
    if (hr$.isError) {
      free(pTKind);
      throw WindowsException(hr$);
    }
    final result$ = pTKind.value;
    free(pTKind);
    return .new(result$);
  }

  /// Retrieves the type description that corresponds to the specified GUID.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypelib-gettypeinfoofguid>.
  ITypeInfo? getTypeInfoOfGuid(Pointer<GUID> guid) {
    final ppTinfo = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetTypeInfoOfGuidFn(ptr, guid, ppTinfo));
    if (hr$.isError) {
      free(ppTinfo);
      throw WindowsException(hr$);
    }
    final result$ = ppTinfo.value;
    free(ppTinfo);
    if (result$.isNull) return null;
    return .new(result$);
  }

  /// Retrieves the structure that contains the library's attributes.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypelib-getlibattr>.
  Pointer<TLIBATTR> getLibAttr() {
    final ppTLibAttr = adaptiveCalloc<Pointer<TLIBATTR>>();
    final hr$ = HRESULT(_GetLibAttrFn(ptr, ppTLibAttr));
    if (hr$.isError) {
      free(ppTLibAttr);
      throw WindowsException(hr$);
    }
    final result$ = ppTLibAttr.value;
    free(ppTLibAttr);
    return result$;
  }

  /// Enables a client compiler to bind to the types, variables, constants, and
  /// global functions for a library.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypelib-gettypecomp>.
  ITypeComp? getTypeComp() {
    final ppTComp = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetTypeCompFn(ptr, ppTComp));
    if (hr$.isError) {
      free(ppTComp);
      throw WindowsException(hr$);
    }
    final result$ = ppTComp.value;
    free(ppTComp);
    if (result$.isNull) return null;
    return .new(result$);
  }

  /// Retrieves the documentation string for the library, the complete Help file
  /// name and path, and the context identifier for the library Help topic in
  /// the Help file.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypelib-getdocumentation>.
  @pragma('vm:prefer-inline')
  void getDocumentation(
    int index,
    Pointer<Pointer<Utf16>>? pBstrName,
    Pointer<Pointer<Utf16>>? pBstrDocString,
    Pointer<Uint32> pdwHelpContext,
    Pointer<Pointer<Utf16>>? pBstrHelpFile,
  ) {
    final hr$ = HRESULT(
      _GetDocumentationFn(
        ptr,
        index,
        pBstrName ?? nullptr,
        pBstrDocString ?? nullptr,
        pdwHelpContext,
        pBstrHelpFile ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Indicates whether a passed-in string contains the name of a type or member
  /// described in the library.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypelib-isname>.
  @pragma('vm:prefer-inline')
  void isName(PWSTR szNameBuf, int lHashVal, Pointer<Int32> pfName) {
    final hr$ = HRESULT(_IsNameFn(ptr, szNameBuf, lHashVal, pfName));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Finds occurrences of a type description in a type library.
  ///
  /// This may be used to quickly verify that a name exists in a type library.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypelib-findname>.
  @pragma('vm:prefer-inline')
  void findName(
    PWSTR szNameBuf,
    int lHashVal,
    Pointer<VTablePointer> ppTInfo,
    Pointer<Int32> rgMemId,
    Pointer<Uint16> pcFound,
  ) {
    final hr$ = HRESULT(
      _FindNameFn(ptr, szNameBuf, lHashVal, ppTInfo, rgMemId, pcFound),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Releases the TLIBATTR originally obtained from GetLibAttr.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypelib-releasetlibattr>.
  @pragma('vm:prefer-inline')
  void releaseTLibAttr(Pointer<TLIBATTR> pTLibAttr) =>
      _ReleaseTLibAttrFn(ptr, pTLibAttr);

  @override
  String toString() => 'ITypeLib(ptr: $ptr)';
}

/// @nodoc
base class ITypeLibVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<NativeFunction<Uint32 Function(VTablePointer this$)>>
  GetTypeInfoCount;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 index,
        Pointer<VTablePointer> ppTInfo,
      )
    >
  >
  GetTypeInfo;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Uint32 index, Pointer<Int32> pTKind)
    >
  >
  GetTypeInfoType;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> guid,
        Pointer<VTablePointer> ppTinfo,
      )
    >
  >
  GetTypeInfoOfGuid;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<TLIBATTR>> ppTLibAttr)
    >
  >
  GetLibAttr;
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
        Int32 index,
        Pointer<Pointer<Utf16>> pBstrName,
        Pointer<Pointer<Utf16>> pBstrDocString,
        Pointer<Uint32> pdwHelpContext,
        Pointer<Pointer<Utf16>> pBstrHelpFile,
      )
    >
  >
  GetDocumentation;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Utf16> szNameBuf,
        Uint32 lHashVal,
        Pointer<Int32> pfName,
      )
    >
  >
  IsName;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Utf16> szNameBuf,
        Uint32 lHashVal,
        Pointer<VTablePointer> ppTInfo,
        Pointer<Int32> rgMemId,
        Pointer<Uint16> pcFound,
      )
    >
  >
  FindName;
  external Pointer<
    NativeFunction<
      Void Function(VTablePointer this$, Pointer<TLIBATTR> pTLibAttr)
    >
  >
  ReleaseTLibAttr;
}

@internal
final class ITypeLibCompanion extends ComCompanion<ITypeLib> {
  const ITypeLibCompanion();

  @pragma('vm:prefer-inline')
  @override
  ITypeLib Function(VTablePointer) get fromPointer => ITypeLib.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ITypeLib;
}
