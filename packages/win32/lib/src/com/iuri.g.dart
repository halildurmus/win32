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
import 'iunknown.g.dart';
import 'iuri.g.dart';

/// @nodoc
final IID_IUri = GUID.fromComponents(
  0xa39ee748,
  0x6a27,
  0x4817,
  .fromList(const [0xa6, 0xf2, 0x13, 0x91, 0x4b, 0xef, 0x58, 0x90]),
);

/// Exposes methods and properties used to parse and build Uniform Resource
/// Identifiers (URIs).
///
/// To learn more, see
/// <https://learn.microsoft.com/previous-versions/windows/internet-explorer/ie-developer/platform-apis/ms775038(v=vs.85)>.
///
/// {@category com}
class IUri extends IUnknown implements ComInterface {
  /// Creates a new instance of [IUri] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IUri] interface. The
  /// [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  IUri(super.ptr) : _vtable = ptr.value.cast<IUriVtbl>().ref;

  /// Creates a new instance of [IUri] from an existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IUri] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUri.from(IUnknown interface) => interface.queryInterface();

  final IUriVtbl _vtable;
  late final _GetPropertyBSTRFn =
      _vtable.GetPropertyBSTR.asFunction<
        int Function(VTablePointer, int, Pointer<Pointer<Utf16>>, int)
      >();
  late final _GetPropertyLengthFn =
      _vtable.GetPropertyLength.asFunction<
        int Function(VTablePointer, int, Pointer<Uint32>, int)
      >();
  late final _GetPropertyDWORDFn =
      _vtable.GetPropertyDWORD.asFunction<
        int Function(VTablePointer, int, Pointer<Uint32>, int)
      >();
  late final _HasPropertyFn =
      _vtable.HasProperty.asFunction<
        int Function(VTablePointer, int, Pointer<Int32>)
      >();
  late final _GetAbsoluteUriFn =
      _vtable.GetAbsoluteUri.asFunction<
        int Function(VTablePointer, Pointer<Pointer<Utf16>>)
      >();
  late final _GetAuthorityFn =
      _vtable.GetAuthority.asFunction<
        int Function(VTablePointer, Pointer<Pointer<Utf16>>)
      >();
  late final _GetDisplayUriFn =
      _vtable.GetDisplayUri.asFunction<
        int Function(VTablePointer, Pointer<Pointer<Utf16>>)
      >();
  late final _GetDomainFn =
      _vtable.GetDomain.asFunction<
        int Function(VTablePointer, Pointer<Pointer<Utf16>>)
      >();
  late final _GetExtensionFn =
      _vtable.GetExtension.asFunction<
        int Function(VTablePointer, Pointer<Pointer<Utf16>>)
      >();
  late final _GetFragmentFn =
      _vtable.GetFragment.asFunction<
        int Function(VTablePointer, Pointer<Pointer<Utf16>>)
      >();
  late final _GetHostFn =
      _vtable.GetHost.asFunction<
        int Function(VTablePointer, Pointer<Pointer<Utf16>>)
      >();
  late final _GetPasswordFn =
      _vtable.GetPassword.asFunction<
        int Function(VTablePointer, Pointer<Pointer<Utf16>>)
      >();
  late final _GetPathFn =
      _vtable.GetPath.asFunction<
        int Function(VTablePointer, Pointer<Pointer<Utf16>>)
      >();
  late final _GetPathAndQueryFn =
      _vtable.GetPathAndQuery.asFunction<
        int Function(VTablePointer, Pointer<Pointer<Utf16>>)
      >();
  late final _GetQueryFn =
      _vtable.GetQuery.asFunction<
        int Function(VTablePointer, Pointer<Pointer<Utf16>>)
      >();
  late final _GetRawUriFn =
      _vtable.GetRawUri.asFunction<
        int Function(VTablePointer, Pointer<Pointer<Utf16>>)
      >();
  late final _GetSchemeNameFn =
      _vtable.GetSchemeName.asFunction<
        int Function(VTablePointer, Pointer<Pointer<Utf16>>)
      >();
  late final _GetUserInfoFn =
      _vtable.GetUserInfo.asFunction<
        int Function(VTablePointer, Pointer<Pointer<Utf16>>)
      >();
  late final _GetUserNameFn =
      _vtable.GetUserName.asFunction<
        int Function(VTablePointer, Pointer<Pointer<Utf16>>)
      >();
  late final _GetHostTypeFn = _vtable
      .GetHostType.asFunction<int Function(VTablePointer, Pointer<Uint32>)>();
  late final _GetPortFn = _vtable
      .GetPort.asFunction<int Function(VTablePointer, Pointer<Uint32>)>();
  late final _GetSchemeFn = _vtable
      .GetScheme.asFunction<int Function(VTablePointer, Pointer<Uint32>)>();
  late final _GetZoneFn = _vtable
      .GetZone.asFunction<int Function(VTablePointer, Pointer<Uint32>)>();
  late final _GetPropertiesFn = _vtable
      .GetProperties.asFunction<int Function(VTablePointer, Pointer<Uint32>)>();
  late final _IsEqualFn =
      _vtable.IsEqual.asFunction<
        int Function(VTablePointer, VTablePointer, Pointer<Int32>)
      >();

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void getPropertyBSTR(
    Uri_PROPERTY uriProp,
    Pointer<Pointer<Utf16>> pbstrProperty,
    int dwFlags,
  ) {
    final hr$ = HRESULT(
      _GetPropertyBSTRFn(ptr, uriProp, pbstrProperty, dwFlags),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void getPropertyLength(
    Uri_PROPERTY uriProp,
    Pointer<Uint32> pcchProperty,
    int dwFlags,
  ) {
    final hr$ = HRESULT(
      _GetPropertyLengthFn(ptr, uriProp, pcchProperty, dwFlags),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void getPropertyDWORD(
    Uri_PROPERTY uriProp,
    Pointer<Uint32> pdwProperty,
    int dwFlags,
  ) {
    final hr$ = HRESULT(
      _GetPropertyDWORDFn(ptr, uriProp, pdwProperty, dwFlags),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  bool hasProperty(Uri_PROPERTY uriProp) {
    final pfHasProperty = adaptiveCalloc<Int32>();
    final hr$ = HRESULT(_HasPropertyFn(ptr, uriProp, pfHasProperty));
    if (hr$.isError) {
      free(pfHasProperty);
      throw WindowsException(hr$);
    }
    final result$ = pfHasProperty.value;
    free(pfHasProperty);
    return result$ != FALSE;
  }

  /// Throws a [WindowsException] on failure.
  BSTR getAbsoluteUri() {
    final pbstrAbsoluteUri = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_GetAbsoluteUriFn(ptr, pbstrAbsoluteUri));
    if (hr$.isError) {
      free(pbstrAbsoluteUri);
      throw WindowsException(hr$);
    }
    final result$ = pbstrAbsoluteUri.value;
    free(pbstrAbsoluteUri);
    return .new(result$);
  }

  /// Throws a [WindowsException] on failure.
  BSTR getAuthority() {
    final pbstrAuthority = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_GetAuthorityFn(ptr, pbstrAuthority));
    if (hr$.isError) {
      free(pbstrAuthority);
      throw WindowsException(hr$);
    }
    final result$ = pbstrAuthority.value;
    free(pbstrAuthority);
    return .new(result$);
  }

  /// Throws a [WindowsException] on failure.
  BSTR getDisplayUri() {
    final pbstrDisplayString = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_GetDisplayUriFn(ptr, pbstrDisplayString));
    if (hr$.isError) {
      free(pbstrDisplayString);
      throw WindowsException(hr$);
    }
    final result$ = pbstrDisplayString.value;
    free(pbstrDisplayString);
    return .new(result$);
  }

  /// Throws a [WindowsException] on failure.
  BSTR getDomain() {
    final pbstrDomain = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_GetDomainFn(ptr, pbstrDomain));
    if (hr$.isError) {
      free(pbstrDomain);
      throw WindowsException(hr$);
    }
    final result$ = pbstrDomain.value;
    free(pbstrDomain);
    return .new(result$);
  }

  /// Throws a [WindowsException] on failure.
  BSTR getExtension() {
    final pbstrExtension = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_GetExtensionFn(ptr, pbstrExtension));
    if (hr$.isError) {
      free(pbstrExtension);
      throw WindowsException(hr$);
    }
    final result$ = pbstrExtension.value;
    free(pbstrExtension);
    return .new(result$);
  }

  /// Throws a [WindowsException] on failure.
  BSTR getFragment() {
    final pbstrFragment = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_GetFragmentFn(ptr, pbstrFragment));
    if (hr$.isError) {
      free(pbstrFragment);
      throw WindowsException(hr$);
    }
    final result$ = pbstrFragment.value;
    free(pbstrFragment);
    return .new(result$);
  }

  /// Throws a [WindowsException] on failure.
  BSTR getHost() {
    final pbstrHost = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_GetHostFn(ptr, pbstrHost));
    if (hr$.isError) {
      free(pbstrHost);
      throw WindowsException(hr$);
    }
    final result$ = pbstrHost.value;
    free(pbstrHost);
    return .new(result$);
  }

  /// Throws a [WindowsException] on failure.
  BSTR getPassword() {
    final pbstrPassword = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_GetPasswordFn(ptr, pbstrPassword));
    if (hr$.isError) {
      free(pbstrPassword);
      throw WindowsException(hr$);
    }
    final result$ = pbstrPassword.value;
    free(pbstrPassword);
    return .new(result$);
  }

  /// Throws a [WindowsException] on failure.
  BSTR getPath() {
    final pbstrPath = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_GetPathFn(ptr, pbstrPath));
    if (hr$.isError) {
      free(pbstrPath);
      throw WindowsException(hr$);
    }
    final result$ = pbstrPath.value;
    free(pbstrPath);
    return .new(result$);
  }

  /// Throws a [WindowsException] on failure.
  BSTR getPathAndQuery() {
    final pbstrPathAndQuery = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_GetPathAndQueryFn(ptr, pbstrPathAndQuery));
    if (hr$.isError) {
      free(pbstrPathAndQuery);
      throw WindowsException(hr$);
    }
    final result$ = pbstrPathAndQuery.value;
    free(pbstrPathAndQuery);
    return .new(result$);
  }

  /// Throws a [WindowsException] on failure.
  BSTR getQuery() {
    final pbstrQuery = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_GetQueryFn(ptr, pbstrQuery));
    if (hr$.isError) {
      free(pbstrQuery);
      throw WindowsException(hr$);
    }
    final result$ = pbstrQuery.value;
    free(pbstrQuery);
    return .new(result$);
  }

  /// Throws a [WindowsException] on failure.
  BSTR getRawUri() {
    final pbstrRawUri = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_GetRawUriFn(ptr, pbstrRawUri));
    if (hr$.isError) {
      free(pbstrRawUri);
      throw WindowsException(hr$);
    }
    final result$ = pbstrRawUri.value;
    free(pbstrRawUri);
    return .new(result$);
  }

  /// Throws a [WindowsException] on failure.
  BSTR getSchemeName() {
    final pbstrSchemeName = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_GetSchemeNameFn(ptr, pbstrSchemeName));
    if (hr$.isError) {
      free(pbstrSchemeName);
      throw WindowsException(hr$);
    }
    final result$ = pbstrSchemeName.value;
    free(pbstrSchemeName);
    return .new(result$);
  }

  /// Throws a [WindowsException] on failure.
  BSTR getUserInfo() {
    final pbstrUserInfo = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_GetUserInfoFn(ptr, pbstrUserInfo));
    if (hr$.isError) {
      free(pbstrUserInfo);
      throw WindowsException(hr$);
    }
    final result$ = pbstrUserInfo.value;
    free(pbstrUserInfo);
    return .new(result$);
  }

  /// Throws a [WindowsException] on failure.
  BSTR getUserName() {
    final pbstrUserName = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_GetUserNameFn(ptr, pbstrUserName));
    if (hr$.isError) {
      free(pbstrUserName);
      throw WindowsException(hr$);
    }
    final result$ = pbstrUserName.value;
    free(pbstrUserName);
    return .new(result$);
  }

  /// Throws a [WindowsException] on failure.
  int getHostType() {
    final pdwHostType = adaptiveCalloc<Uint32>();
    final hr$ = HRESULT(_GetHostTypeFn(ptr, pdwHostType));
    if (hr$.isError) {
      free(pdwHostType);
      throw WindowsException(hr$);
    }
    final result$ = pdwHostType.value;
    free(pdwHostType);
    return result$;
  }

  /// Throws a [WindowsException] on failure.
  int getPort() {
    final pdwPort = adaptiveCalloc<Uint32>();
    final hr$ = HRESULT(_GetPortFn(ptr, pdwPort));
    if (hr$.isError) {
      free(pdwPort);
      throw WindowsException(hr$);
    }
    final result$ = pdwPort.value;
    free(pdwPort);
    return result$;
  }

  /// Throws a [WindowsException] on failure.
  int getScheme() {
    final pdwScheme = adaptiveCalloc<Uint32>();
    final hr$ = HRESULT(_GetSchemeFn(ptr, pdwScheme));
    if (hr$.isError) {
      free(pdwScheme);
      throw WindowsException(hr$);
    }
    final result$ = pdwScheme.value;
    free(pdwScheme);
    return result$;
  }

  /// Throws a [WindowsException] on failure.
  int getZone() {
    final pdwZone = adaptiveCalloc<Uint32>();
    final hr$ = HRESULT(_GetZoneFn(ptr, pdwZone));
    if (hr$.isError) {
      free(pdwZone);
      throw WindowsException(hr$);
    }
    final result$ = pdwZone.value;
    free(pdwZone);
    return result$;
  }

  /// Throws a [WindowsException] on failure.
  int getProperties() {
    final pdwFlags = adaptiveCalloc<Uint32>();
    final hr$ = HRESULT(_GetPropertiesFn(ptr, pdwFlags));
    if (hr$.isError) {
      free(pdwFlags);
      throw WindowsException(hr$);
    }
    final result$ = pdwFlags.value;
    free(pdwFlags);
    return result$;
  }

  /// Throws a [WindowsException] on failure.
  bool isEqual(IUri? pUri) {
    final pfEqual = adaptiveCalloc<Int32>();
    final hr$ = HRESULT(_IsEqualFn(ptr, pUri?.ptr ?? nullptr, pfEqual));
    if (hr$.isError) {
      free(pfEqual);
      throw WindowsException(hr$);
    }
    final result$ = pfEqual.value;
    free(pfEqual);
    return result$ != FALSE;
  }

  @override
  String toString() => 'IUri(ptr: $ptr)';
}

/// @nodoc
base class IUriVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 uriProp,
        Pointer<Pointer<Utf16>> pbstrProperty,
        Uint32 dwFlags,
      )
    >
  >
  GetPropertyBSTR;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 uriProp,
        Pointer<Uint32> pcchProperty,
        Uint32 dwFlags,
      )
    >
  >
  GetPropertyLength;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 uriProp,
        Pointer<Uint32> pdwProperty,
        Uint32 dwFlags,
      )
    >
  >
  GetPropertyDWORD;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 uriProp,
        Pointer<Int32> pfHasProperty,
      )
    >
  >
  HasProperty;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Pointer<Utf16>> pbstrAbsoluteUri,
      )
    >
  >
  GetAbsoluteUri;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Pointer<Utf16>> pbstrAuthority,
      )
    >
  >
  GetAuthority;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Pointer<Utf16>> pbstrDisplayString,
      )
    >
  >
  GetDisplayUri;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<Utf16>> pbstrDomain)
    >
  >
  GetDomain;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Pointer<Utf16>> pbstrExtension,
      )
    >
  >
  GetExtension;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<Utf16>> pbstrFragment)
    >
  >
  GetFragment;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<Utf16>> pbstrHost)
    >
  >
  GetHost;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<Utf16>> pbstrPassword)
    >
  >
  GetPassword;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<Utf16>> pbstrPath)
    >
  >
  GetPath;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Pointer<Utf16>> pbstrPathAndQuery,
      )
    >
  >
  GetPathAndQuery;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<Utf16>> pbstrQuery)
    >
  >
  GetQuery;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<Utf16>> pbstrRawUri)
    >
  >
  GetRawUri;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Pointer<Utf16>> pbstrSchemeName,
      )
    >
  >
  GetSchemeName;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<Utf16>> pbstrUserInfo)
    >
  >
  GetUserInfo;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<Utf16>> pbstrUserName)
    >
  >
  GetUserName;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Uint32> pdwHostType)
    >
  >
  GetHostType;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Uint32> pdwPort)>
  >
  GetPort;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Uint32> pdwScheme)
    >
  >
  GetScheme;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Uint32> pdwZone)>
  >
  GetZone;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Uint32> pdwFlags)
    >
  >
  GetProperties;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pUri,
        Pointer<Int32> pfEqual,
      )
    >
  >
  IsEqual;
}

@internal
final class IUriCompanion extends ComCompanion<IUri> {
  const IUriCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUri Function(VTablePointer) get fromPointer => IUri.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IUri;
}
