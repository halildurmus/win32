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
import 'idispatch.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IWinHttpRequest = Guid.fromComponents(
  0x16fe2ec,
  0xb2c8,
  0x45f8,
  Uint8List.fromList(const [0xb2, 0x3b, 0x39, 0xe5, 0x3a, 0x75, 0x39, 0x6b]),
);

/// Provides all of the nonevent methods for Microsoft Windows HTTP Services
/// (WinHTTP).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/WinHttp/iwinhttprequest-interface>.
///
/// {@category com}
class IWinHttpRequest extends IDispatch implements ComInterface {
  /// Creates a new instance of [IWinHttpRequest] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IWinHttpRequest]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IWinHttpRequest(super.ptr)
    : _vtable = ptr.value.cast<IWinHttpRequestVtbl>().ref;

  /// Creates a new instance of [IWinHttpRequest] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IWinHttpRequest] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IWinHttpRequest.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IWinHttpRequestVtbl _vtable;
  late final _SetProxyFn =
      _vtable.SetProxy.asFunction<
        int Function(VTablePointer, int, VARIANT, VARIANT)
      >();
  late final _SetCredentialsFn =
      _vtable.SetCredentials.asFunction<
        int Function(VTablePointer, BSTR, BSTR, int)
      >();
  late final _OpenFn = _vtable
      .Open.asFunction<int Function(VTablePointer, BSTR, BSTR, VARIANT)>();
  late final _SetRequestHeaderFn = _vtable
      .SetRequestHeader.asFunction<int Function(VTablePointer, BSTR, BSTR)>();
  late final _GetResponseHeaderFn =
      _vtable.GetResponseHeader.asFunction<
        int Function(VTablePointer, BSTR, Pointer<BSTR>)
      >();
  late final _GetAllResponseHeadersFn =
      _vtable.GetAllResponseHeaders.asFunction<
        int Function(VTablePointer, Pointer<BSTR>)
      >();
  late final _SendFn =
      _vtable.Send.asFunction<int Function(VTablePointer, VARIANT)>();
  late final _get_StatusFn = _vtable.get_Status
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_StatusTextFn = _vtable.get_StatusText
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_ResponseTextFn = _vtable.get_ResponseText
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_ResponseBodyFn = _vtable.get_ResponseBody
      .asFunction<int Function(VTablePointer, Pointer<VARIANT>)>();
  late final _get_ResponseStreamFn = _vtable.get_ResponseStream
      .asFunction<int Function(VTablePointer, Pointer<VARIANT>)>();
  late final _get_OptionFn = _vtable.get_Option
      .asFunction<int Function(VTablePointer, int, Pointer<VARIANT>)>();
  late final _put_OptionFn = _vtable.put_Option
      .asFunction<int Function(VTablePointer, int, VARIANT)>();
  late final _WaitForResponseFn =
      _vtable.WaitForResponse.asFunction<
        int Function(VTablePointer, VARIANT, Pointer<VARIANT_BOOL>)
      >();
  late final _AbortFn = _vtable.Abort.asFunction<int Function(VTablePointer)>();
  late final _SetTimeoutsFn =
      _vtable.SetTimeouts.asFunction<
        int Function(VTablePointer, int, int, int, int)
      >();
  late final _SetClientCertificateFn = _vtable
      .SetClientCertificate.asFunction<int Function(VTablePointer, BSTR)>();
  late final _SetAutoLogonPolicyFn =
      _vtable.SetAutoLogonPolicy.asFunction<int Function(VTablePointer, int)>();

  /// Sets proxy server information.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/WinHttp/iwinhttprequest-setproxy>.
  @pragma('vm:prefer-inline')
  void setProxy(int proxySetting, VARIANT proxyServer, VARIANT bypassList) {
    final hr$ = HRESULT(
      _SetProxyFn(ptr, proxySetting, proxyServer, bypassList),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets credentials to be used with an HTTP server, whether it is a proxy
  /// server or an originating server.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/WinHttp/iwinhttprequest-setcredentials>.
  @pragma('vm:prefer-inline')
  void setCredentials(BSTR userName, BSTR password, int flags) {
    final hr$ = HRESULT(_SetCredentialsFn(ptr, userName, password, flags));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Opens an HTTP connection to an HTTP resource.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/WinHttp/iwinhttprequest-open>.
  @pragma('vm:prefer-inline')
  void open(BSTR method, BSTR url, VARIANT async) {
    final hr$ = HRESULT(_OpenFn(ptr, method, url, async));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Adds, changes, or deletes an HTTP request header.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/WinHttp/iwinhttprequest-setrequestheader>.
  @pragma('vm:prefer-inline')
  void setRequestHeader(BSTR header, BSTR value) {
    final hr$ = HRESULT(_SetRequestHeaderFn(ptr, header, value));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the HTTP response headers.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/WinHttp/iwinhttprequest-getresponseheader>.
  BSTR getResponseHeader(BSTR header) {
    final value = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_GetResponseHeaderFn(ptr, header, value));
    if (hr$.isError) {
      free(value);
      throw WindowsException(hr$);
    }
    final result$ = value.value;
    free(value);
    return result$;
  }

  /// Retrieves all HTTP response headers.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/WinHttp/iwinhttprequest-getallresponseheaders>.
  BSTR getAllResponseHeaders() {
    final headers = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_GetAllResponseHeadersFn(ptr, headers));
    if (hr$.isError) {
      free(headers);
      throw WindowsException(hr$);
    }
    final result$ = headers.value;
    free(headers);
    return result$;
  }

  /// Sends an HTTP request to an HTTP server.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/WinHttp/iwinhttprequest-send>.
  @pragma('vm:prefer-inline')
  void send(VARIANT body) {
    final hr$ = HRESULT(_SendFn(ptr, body));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the HTTP status code from the last response.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/WinHttp/iwinhttprequest-status>.
  int get status {
    final status = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_StatusFn(ptr, status));
    if (hr$.isError) {
      free(status);
      throw WindowsException(hr$);
    }
    final result$ = status.value;
    free(status);
    return result$;
  }

  /// Retrieves the HTTP status text.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/WinHttp/iwinhttprequest-statustext>.
  BSTR get statusText {
    final status = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_StatusTextFn(ptr, status));
    if (hr$.isError) {
      free(status);
      throw WindowsException(hr$);
    }
    final result$ = status.value;
    free(status);
    return result$;
  }

  /// Retrieves the response entity body as text.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/WinHttp/iwinhttprequest-responsetext>.
  BSTR get responseText {
    final body = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_ResponseTextFn(ptr, body));
    if (hr$.isError) {
      free(body);
      throw WindowsException(hr$);
    }
    final result$ = body.value;
    free(body);
    return result$;
  }

  /// Retrieves the response entity body as an array of unsigned bytes.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/WinHttp/iwinhttprequest-responsebody>.
  Pointer<VARIANT> get responseBody {
    final body = loggingCalloc<VARIANT>();
    final hr$ = HRESULT(_get_ResponseBodyFn(ptr, body));
    if (hr$.isError) {
      free(body);
      throw WindowsException(hr$);
    }
    return body;
  }

  /// Retrieves the response entity body as an IStream.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/WinHttp/iwinhttprequest-responsestream>.
  Pointer<VARIANT> get responseStream {
    final body = loggingCalloc<VARIANT>();
    final hr$ = HRESULT(_get_ResponseStreamFn(ptr, body));
    if (hr$.isError) {
      free(body);
      throw WindowsException(hr$);
    }
    return body;
  }

  /// Sets or retrieves a Microsoft Windows HTTP Services (WinHTTP) option
  /// value.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/WinHttp/iwinhttprequest-option>.
  Pointer<VARIANT> option(WinHttpRequestOption option) {
    final value = loggingCalloc<VARIANT>();
    final hr$ = HRESULT(_get_OptionFn(ptr, option, value));
    if (hr$.isError) {
      free(value);
      throw WindowsException(hr$);
    }
    return value;
  }

  /// Sets or retrieves a Microsoft Windows HTTP Services (WinHTTP) option
  /// value.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/WinHttp/iwinhttprequest-option>.
  @pragma('vm:prefer-inline')
  void setOption(WinHttpRequestOption option, VARIANT value) {
    final hr$ = HRESULT(_put_OptionFn(ptr, option, value));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Waits for an asynchronous Send method to complete, with optional time-out
  /// value, in seconds.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/WinHttp/iwinhttprequest-waitforresponse>.
  bool waitForResponse(VARIANT timeout) {
    final succeeded = loggingCalloc<VARIANT_BOOL>();
    final hr$ = HRESULT(_WaitForResponseFn(ptr, timeout, succeeded));
    if (hr$.isError) {
      free(succeeded);
      throw WindowsException(hr$);
    }
    final result$ = succeeded.value;
    free(succeeded);
    return result$ != FALSE;
  }

  /// Aborts a WinHTTP Send method.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/WinHttp/iwinhttprequest-abort>.
  @pragma('vm:prefer-inline')
  void abort() {
    final hr$ = HRESULT(_AbortFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Specifies the individual time-out components of a send/receive operation,
  /// in milliseconds.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/WinHttp/iwinhttprequest-settimeouts>.
  @pragma('vm:prefer-inline')
  void setTimeouts(
    int resolveTimeout,
    int connectTimeout,
    int sendTimeout,
    int receiveTimeout,
  ) {
    final hr$ = HRESULT(
      _SetTimeoutsFn(
        ptr,
        resolveTimeout,
        connectTimeout,
        sendTimeout,
        receiveTimeout,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Selects a client certificate to send to a Secure Hypertext Transfer
  /// Protocol (HTTPS) server.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/WinHttp/iwinhttprequest-setclientcertificate>.
  @pragma('vm:prefer-inline')
  void setClientCertificate(BSTR clientCertificate) {
    final hr$ = HRESULT(_SetClientCertificateFn(ptr, clientCertificate));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the current Automatic Logon Policy.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/WinHttp/iwinhttprequest-setautologonpolicy>.
  @pragma('vm:prefer-inline')
  void setAutoLogonPolicy(WinHttpRequestAutoLogonPolicy autoLogonPolicy) {
    final hr$ = HRESULT(_SetAutoLogonPolicyFn(ptr, autoLogonPolicy));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IWinHttpRequest(ptr: $ptr)';
}

/// @nodoc
base class IWinHttpRequestVtbl extends Struct {
  external IDispatchVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 proxySetting,
        VARIANT proxyServer,
        VARIANT bypassList,
      )
    >
  >
  SetProxy;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        BSTR userName,
        BSTR password,
        Int32 flags,
      )
    >
  >
  SetCredentials;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, BSTR method, BSTR url, VARIANT async)
    >
  >
  Open;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, BSTR header, BSTR value)>
  >
  SetRequestHeader;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, BSTR header, Pointer<BSTR> value)
    >
  >
  GetResponseHeader;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> headers)>
  >
  GetAllResponseHeaders;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VARIANT body)>
  >
  Send;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> status)>
  >
  get_Status;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> status)>
  >
  get_StatusText;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> body)>
  >
  get_ResponseText;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<VARIANT> body)>
  >
  get_ResponseBody;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<VARIANT> body)>
  >
  get_ResponseStream;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Int32 option, Pointer<VARIANT> value)
    >
  >
  get_Option;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Int32 option, VARIANT value)
    >
  >
  put_Option;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VARIANT timeout,
        Pointer<VARIANT_BOOL> succeeded,
      )
    >
  >
  WaitForResponse;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>> Abort;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 resolveTimeout,
        Int32 connectTimeout,
        Int32 sendTimeout,
        Int32 receiveTimeout,
      )
    >
  >
  SetTimeouts;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, BSTR clientCertificate)>
  >
  SetClientCertificate;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 autoLogonPolicy)>
  >
  SetAutoLogonPolicy;
}

@internal
final class IWinHttpRequestCompanion extends ComCompanion<IWinHttpRequest> {
  const IWinHttpRequestCompanion();

  @pragma('vm:prefer-inline')
  @override
  IWinHttpRequest Function(VTablePointer) get fromPointer =>
      IWinHttpRequest.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IWinHttpRequest;
}
