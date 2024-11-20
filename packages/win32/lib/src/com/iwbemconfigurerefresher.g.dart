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
import 'interface.g.dart';
import 'iunknown.g.dart';
import 'iwbemclassobject.g.dart';
import 'iwbemcontext.g.dart';
import 'iwbemhiperfenum.g.dart';
import 'iwbemrefresher.g.dart';
import 'iwbemservices.g.dart';

/// @nodoc
final IID_IWbemConfigureRefresher = Guid.fromComponents(
  0x49353c92,
  0x516b,
  0x11d1,
  Uint8List.fromList(const [0xae, 0xa6, 0x0, 0xc0, 0x4f, 0xb6, 0x88, 0x20]),
);

/// Used by client code to add enumerators, objects, and nested refreshers into
/// a refresher.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wbemcli/nn-wbemcli-iwbemconfigurerefresher>.
///
/// {@category com}
class IWbemConfigureRefresher extends IUnknown implements ComInterface {
  /// Creates a new instance of [IWbemConfigureRefresher] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IWbemConfigureRefresher]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IWbemConfigureRefresher(super.ptr)
    : _vtable = ptr.value.cast<IWbemConfigureRefresherVtbl>().ref;

  /// Creates a new instance of [IWbemConfigureRefresher] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IWbemConfigureRefresher] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IWbemConfigureRefresher.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IWbemConfigureRefresherVtbl _vtable;
  late final _AddObjectByPathFn =
      _vtable.AddObjectByPath.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          PCWSTR,
          int,
          VTablePointer,
          Pointer<VTablePointer>,
          Pointer<Int32>,
        )
      >();
  late final _AddObjectByTemplateFn =
      _vtable.AddObjectByTemplate.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          VTablePointer,
          int,
          VTablePointer,
          Pointer<VTablePointer>,
          Pointer<Int32>,
        )
      >();
  late final _AddRefresherFn =
      _vtable.AddRefresher.asFunction<
        int Function(VTablePointer, VTablePointer, int, Pointer<Int32>)
      >();
  late final _RemoveFn =
      _vtable.Remove.asFunction<int Function(VTablePointer, int, int)>();
  late final _AddEnumFn =
      _vtable.AddEnum.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          PCWSTR,
          int,
          VTablePointer,
          Pointer<VTablePointer>,
          Pointer<Int32>,
        )
      >();

  /// Adds an object to a refresher by specifying an object path.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemconfigurerefresher-addobjectbypath>.
  @pragma('vm:prefer-inline')
  void addObjectByPath(
    IWbemServices? pNamespace,
    PCWSTR wszPath,
    int lFlags,
    IWbemContext? pContext,
    Pointer<VTablePointer> ppRefreshable,
    Pointer<Int32> plId,
  ) {
    final hr$ = HRESULT(
      _AddObjectByPathFn(
        ptr,
        pNamespace?.ptr ?? nullptr,
        wszPath,
        lFlags,
        pContext?.ptr ?? nullptr,
        ppRefreshable,
        plId,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// With the `IWbemConfigureRefresher.addObjectByTemplate` method, you can add
  /// an object you want refreshed to a refresher by specifying an
  /// IWbemClassObject instance template.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemconfigurerefresher-addobjectbytemplate>.
  @pragma('vm:prefer-inline')
  void addObjectByTemplate(
    IWbemServices? pNamespace,
    IWbemClassObject? pTemplate,
    int lFlags,
    IWbemContext? pContext,
    Pointer<VTablePointer> ppRefreshable,
    Pointer<Int32> plId,
  ) {
    final hr$ = HRESULT(
      _AddObjectByTemplateFn(
        ptr,
        pNamespace?.ptr ?? nullptr,
        pTemplate?.ptr ?? nullptr,
        lFlags,
        pContext?.ptr ?? nullptr,
        ppRefreshable,
        plId,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Adds a refresher to a refresher.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemconfigurerefresher-addrefresher>.
  @pragma('vm:prefer-inline')
  void addRefresher(
    IWbemRefresher? pRefresher,
    int lFlags,
    Pointer<Int32> plId,
  ) {
    final hr$ = HRESULT(
      _AddRefresherFn(ptr, pRefresher?.ptr ?? nullptr, lFlags, plId),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Used to remove an object, enumerator, or nested refresher from a
  /// refresher.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemconfigurerefresher-remove>.
  @pragma('vm:prefer-inline')
  void remove(int lId, int lFlags) {
    final hr$ = HRESULT(_RemoveFn(ptr, lId, lFlags));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Adds an enumerator to the requested refresher.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemconfigurerefresher-addenum>.
  @pragma('vm:prefer-inline')
  void addEnum(
    IWbemServices? pNamespace,
    PCWSTR wszClassName,
    int lFlags,
    IWbemContext? pContext,
    Pointer<VTablePointer> ppEnum,
    Pointer<Int32> plId,
  ) {
    final hr$ = HRESULT(
      _AddEnumFn(
        ptr,
        pNamespace?.ptr ?? nullptr,
        wszClassName,
        lFlags,
        pContext?.ptr ?? nullptr,
        ppEnum,
        plId,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IWbemConfigureRefresher(ptr: $ptr)';
}

/// @nodoc
base class IWbemConfigureRefresherVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pNamespace,
        PCWSTR wszPath,
        Int32 lFlags,
        VTablePointer pContext,
        Pointer<VTablePointer> ppRefreshable,
        Pointer<Int32> plId,
      )
    >
  >
  AddObjectByPath;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pNamespace,
        VTablePointer pTemplate,
        Int32 lFlags,
        VTablePointer pContext,
        Pointer<VTablePointer> ppRefreshable,
        Pointer<Int32> plId,
      )
    >
  >
  AddObjectByTemplate;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pRefresher,
        Int32 lFlags,
        Pointer<Int32> plId,
      )
    >
  >
  AddRefresher;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 lId, Int32 lFlags)>
  >
  Remove;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pNamespace,
        PCWSTR wszClassName,
        Int32 lFlags,
        VTablePointer pContext,
        Pointer<VTablePointer> ppEnum,
        Pointer<Int32> plId,
      )
    >
  >
  AddEnum;
}

@internal
final class IWbemConfigureRefresherCompanion
    extends ComCompanion<IWbemConfigureRefresher> {
  const IWbemConfigureRefresherCompanion();

  @pragma('vm:prefer-inline')
  @override
  IWbemConfigureRefresher Function(VTablePointer) get fromPointer =>
      IWbemConfigureRefresher.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IWbemConfigureRefresher;
}
