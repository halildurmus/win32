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
import 'iinspectable.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IWebAuthenticationCoreManagerInterop = Guid.fromComponents(
  0xf4b8e804,
  0x811e,
  0x4436,
  Uint8List.fromList(const [0xb6, 0x9c, 0x44, 0xcb, 0x67, 0xb7, 0x20, 0x84]),
);

/// Contains core methods for obtaining tokens from web account providers.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/webauthenticationcoremanagerinterop/nn-webauthenticationcoremanagerinterop-iwebauthenticationcoremanagerinterop>.
///
/// {@category com}
class IWebAuthenticationCoreManagerInterop extends IInspectable
    implements ComInterface {
  /// Creates a new instance of [IWebAuthenticationCoreManagerInterop] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IWebAuthenticationCoreManagerInterop] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IWebAuthenticationCoreManagerInterop(super.ptr)
    : _vtable = ptr.value.cast<IWebAuthenticationCoreManagerInteropVtbl>().ref;

  /// Creates a new instance of [IWebAuthenticationCoreManagerInterop] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IWebAuthenticationCoreManagerInterop] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IWebAuthenticationCoreManagerInterop.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IWebAuthenticationCoreManagerInteropVtbl _vtable;
  late final _RequestTokenForWindowAsyncFn =
      _vtable.RequestTokenForWindowAsync.asFunction<
        int Function(
          VTablePointer,
          int,
          VTablePointer,
          Pointer<GUID>,
          Pointer<Pointer>,
        )
      >();
  late final _RequestTokenWithWebAccountForWindowAsyncFn =
      _vtable.RequestTokenWithWebAccountForWindowAsync.asFunction<
        int Function(
          VTablePointer,
          int,
          VTablePointer,
          VTablePointer,
          Pointer<GUID>,
          Pointer<Pointer>,
        )
      >();

  /// Asynchronously requests a token from a web account provider.
  ///
  /// If necessary, the user is prompted to enter their credentials.
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
  /// <https://learn.microsoft.com/windows/win32/api/webauthenticationcoremanagerinterop/nf-webauthenticationcoremanagerinterop-iwebauthenticationcoremanagerinterop-requesttokenforwindowasync>.
  T requestTokenForWindowAsync<T extends IUnknown>(
    int appWindow,
    IInspectable? request,
  ) {
    final companion = ComInterface.type<T>();
    final riid = companion.iid;
    final asyncInfo = loggingCalloc<Pointer>();
    final hr$ = HRESULT(
      _RequestTokenForWindowAsyncFn(
        ptr,
        appWindow,
        request?.ptr ?? nullptr,
        riid.ptr,
        asyncInfo,
      ),
    );
    if (hr$.isError) {
      free(asyncInfo);
      throw WindowsException(hr$);
    }
    final result = companion.fromPointer(asyncInfo.value.cast());
    free(asyncInfo);
    return result;
  }

  /// Asynchronously requests a token from a web account provider.
  ///
  /// If necessary, the user is prompted to enter their credentials.
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
  /// <https://learn.microsoft.com/windows/win32/api/webauthenticationcoremanagerinterop/nf-webauthenticationcoremanagerinterop-iwebauthenticationcoremanagerinterop-requesttokenwithwebaccountforwindowasync>.
  T requestTokenWithWebAccountForWindowAsync<T extends IUnknown>(
    int appWindow,
    IInspectable? request,
    IInspectable? webAccount,
  ) {
    final companion = ComInterface.type<T>();
    final riid = companion.iid;
    final asyncInfo = loggingCalloc<Pointer>();
    final hr$ = HRESULT(
      _RequestTokenWithWebAccountForWindowAsyncFn(
        ptr,
        appWindow,
        request?.ptr ?? nullptr,
        webAccount?.ptr ?? nullptr,
        riid.ptr,
        asyncInfo,
      ),
    );
    if (hr$.isError) {
      free(asyncInfo);
      throw WindowsException(hr$);
    }
    final result = companion.fromPointer(asyncInfo.value.cast());
    free(asyncInfo);
    return result;
  }

  @override
  String toString() => 'IWebAuthenticationCoreManagerInterop(ptr: $ptr)';
}

/// @nodoc
base class IWebAuthenticationCoreManagerInteropVtbl extends Struct {
  external IInspectableVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        HWND appWindow,
        VTablePointer request,
        Pointer<GUID> riid,
        Pointer<Pointer> asyncInfo,
      )
    >
  >
  RequestTokenForWindowAsync;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        HWND appWindow,
        VTablePointer request,
        VTablePointer webAccount,
        Pointer<GUID> riid,
        Pointer<Pointer> asyncInfo,
      )
    >
  >
  RequestTokenWithWebAccountForWindowAsync;
}

@internal
final class IWebAuthenticationCoreManagerInteropCompanion
    extends ComCompanion<IWebAuthenticationCoreManagerInterop> {
  const IWebAuthenticationCoreManagerInteropCompanion();

  @pragma('vm:prefer-inline')
  @override
  IWebAuthenticationCoreManagerInterop Function(VTablePointer)
  get fromPointer => IWebAuthenticationCoreManagerInterop.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IWebAuthenticationCoreManagerInterop;
}
