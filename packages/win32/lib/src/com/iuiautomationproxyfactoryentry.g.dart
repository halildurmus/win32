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
import 'iuiautomationproxyfactory.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomationProxyFactoryEntry = GUID.fromComponents(
  0xd50e472e,
  0xb64b,
  0x490c,
  .fromList(const [0xbc, 0xa1, 0xd3, 0x6, 0x96, 0xf9, 0xf2, 0x89]),
);

/// Represents a proxy factory in the table maintained by Microsoft UI
/// Automation, and exposes properties and methods that can be used by client
/// applications to interact with IUIAutomationProxyFactory objects.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationproxyfactoryentry>.
///
/// {@category com}
class IUIAutomationProxyFactoryEntry extends IUnknown implements ComInterface {
  /// Creates a new instance of [IUIAutomationProxyFactoryEntry] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationProxyFactoryEntry] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  IUIAutomationProxyFactoryEntry(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationProxyFactoryEntryVtbl>().ref;

  /// Creates a new instance of [IUIAutomationProxyFactoryEntry] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationProxyFactoryEntry] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationProxyFactoryEntry.from(IUnknown interface) =>
      interface.queryInterface();

  final IUIAutomationProxyFactoryEntryVtbl _vtable;
  late final _get_ProxyFactoryFn = _vtable.get_ProxyFactory
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _get_ClassNameFn = _vtable.get_ClassName
      .asFunction<int Function(VTablePointer, Pointer<Pointer<Utf16>>)>();
  late final _get_ImageNameFn = _vtable.get_ImageName
      .asFunction<int Function(VTablePointer, Pointer<Pointer<Utf16>>)>();
  late final _get_AllowSubstringMatchFn = _vtable.get_AllowSubstringMatch
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CanCheckBaseClassFn = _vtable.get_CanCheckBaseClass
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_NeedsAdviseEventsFn = _vtable.get_NeedsAdviseEvents
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _put_ClassNameFn = _vtable.put_ClassName
      .asFunction<int Function(VTablePointer, Pointer<Utf16>)>();
  late final _put_ImageNameFn = _vtable.put_ImageName
      .asFunction<int Function(VTablePointer, Pointer<Utf16>)>();
  late final _put_AllowSubstringMatchFn = _vtable.put_AllowSubstringMatch
      .asFunction<int Function(VTablePointer, int)>();
  late final _put_CanCheckBaseClassFn = _vtable.put_CanCheckBaseClass
      .asFunction<int Function(VTablePointer, int)>();
  late final _put_NeedsAdviseEventsFn = _vtable.put_NeedsAdviseEvents
      .asFunction<int Function(VTablePointer, int)>();
  late final _SetWinEventsForAutomationEventFn =
      _vtable.SetWinEventsForAutomationEvent.asFunction<
        int Function(VTablePointer, int, int, Pointer<SAFEARRAY>)
      >();
  late final _GetWinEventsForAutomationEventFn =
      _vtable.GetWinEventsForAutomationEvent.asFunction<
        int Function(VTablePointer, int, int, Pointer<Pointer<SAFEARRAY>>)
      >();

  /// Retrieves the proxy factory associated with this entry.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationproxyfactoryentry-get_proxyfactory>.
  IUIAutomationProxyFactory? get proxyFactory {
    final factory = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_ProxyFactoryFn(ptr, factory));
    if (hr$.isError) {
      free(factory);
      throw WindowsException(hr$);
    }
    final result$ = factory.value;
    free(factory);
    if (result$.isNull) return null;
    return .new(result$);
  }

  /// Sets or retrieves the name of the window class served by the proxy
  /// factory.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationproxyfactoryentry-get_classname>.
  BSTR className() {
    final className = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_get_ClassNameFn(ptr, className));
    if (hr$.isError) {
      free(className);
      throw WindowsException(hr$);
    }
    final result$ = className.value;
    free(className);
    return .new(result$);
  }

  /// Sets or retrieves the name of the image of the proxy factory.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationproxyfactoryentry-get_imagename>.
  BSTR imageName() {
    final imageName = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_get_ImageNameFn(ptr, imageName));
    if (hr$.isError) {
      free(imageName);
      throw WindowsException(hr$);
    }
    final result$ = imageName.value;
    free(imageName);
    return .new(result$);
  }

  /// Sets or retrieves a value that specifies whether the proxy allows
  /// substring matching.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationproxyfactoryentry-get_allowsubstringmatch>.
  bool get allowSubstringMatch {
    final allowSubstringMatch = adaptiveCalloc<Int32>();
    final hr$ = HRESULT(_get_AllowSubstringMatchFn(ptr, allowSubstringMatch));
    if (hr$.isError) {
      free(allowSubstringMatch);
      throw WindowsException(hr$);
    }
    final result$ = allowSubstringMatch.value;
    free(allowSubstringMatch);
    return result$ != FALSE;
  }

  /// Sets or retrieves a value that specifies whether the base class can be
  /// checked when searching for a proxy factory.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationproxyfactoryentry-get_cancheckbaseclass>.
  bool get canCheckBaseClass {
    final canCheckBaseClass = adaptiveCalloc<Int32>();
    final hr$ = HRESULT(_get_CanCheckBaseClassFn(ptr, canCheckBaseClass));
    if (hr$.isError) {
      free(canCheckBaseClass);
      throw WindowsException(hr$);
    }
    final result$ = canCheckBaseClass.value;
    free(canCheckBaseClass);
    return result$ != FALSE;
  }

  /// Sets or retrieves a value that specifies whether the proxy must be
  /// notified when an application has registered for events.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationproxyfactoryentry-get_needsadviseevents>.
  bool get needsAdviseEvents {
    final adviseEvents = adaptiveCalloc<Int32>();
    final hr$ = HRESULT(_get_NeedsAdviseEventsFn(ptr, adviseEvents));
    if (hr$.isError) {
      free(adviseEvents);
      throw WindowsException(hr$);
    }
    final result$ = adviseEvents.value;
    free(adviseEvents);
    return result$ != FALSE;
  }

  /// Sets or retrieves the name of the window class served by the proxy
  /// factory.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationproxyfactoryentry-put_classname>.
  @pragma('vm:prefer-inline')
  void setClassName(PCWSTR className) {
    final hr$ = HRESULT(_put_ClassNameFn(ptr, className));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets or retrieves the name of the image of the proxy factory.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationproxyfactoryentry-put_imagename>.
  @pragma('vm:prefer-inline')
  void setImageName(PCWSTR imageName) {
    final hr$ = HRESULT(_put_ImageNameFn(ptr, imageName));
    if (hr$.isError) throw WindowsException(hr$);
  }

  set allowSubstringMatch(bool allowSubstringMatch) {
    final hr$ = HRESULT(
      _put_AllowSubstringMatchFn(ptr, allowSubstringMatch ? TRUE : FALSE),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  set canCheckBaseClass(bool canCheckBaseClass) {
    final hr$ = HRESULT(
      _put_CanCheckBaseClassFn(ptr, canCheckBaseClass ? TRUE : FALSE),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  set needsAdviseEvents(bool adviseEvents) {
    final hr$ = HRESULT(
      _put_NeedsAdviseEventsFn(ptr, adviseEvents ? TRUE : FALSE),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Maps Microsoft UI Automation events to WinEvents.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationproxyfactoryentry-setwineventsforautomationevent>.
  @pragma('vm:prefer-inline')
  void setWinEventsForAutomationEvent(
    UIA_EVENT_ID eventId,
    UIA_PROPERTY_ID propertyId,
    Pointer<SAFEARRAY> winEvents,
  ) {
    final hr$ = HRESULT(
      _SetWinEventsForAutomationEventFn(ptr, eventId, propertyId, winEvents),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the list of WinEvents that are mapped to a specific Microsoft UI
  /// Automation event.
  ///
  /// If an element represented by this proxy raises one the listed WinEvents,
  /// the proxy handles it.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationproxyfactoryentry-getwineventsforautomationevent>.
  Pointer<SAFEARRAY> getWinEventsForAutomationEvent(
    UIA_EVENT_ID eventId,
    UIA_PROPERTY_ID propertyId,
  ) {
    final winEvents = adaptiveCalloc<Pointer<SAFEARRAY>>();
    final hr$ = HRESULT(
      _GetWinEventsForAutomationEventFn(ptr, eventId, propertyId, winEvents),
    );
    if (hr$.isError) {
      free(winEvents);
      throw WindowsException(hr$);
    }
    final result$ = winEvents.value;
    free(winEvents);
    return result$;
  }

  @override
  String toString() => 'IUIAutomationProxyFactoryEntry(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationProxyFactoryEntryVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> factory)
    >
  >
  get_ProxyFactory;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<Utf16>> className)
    >
  >
  get_ClassName;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<Utf16>> imageName)
    >
  >
  get_ImageName;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Int32> allowSubstringMatch)
    >
  >
  get_AllowSubstringMatch;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Int32> canCheckBaseClass)
    >
  >
  get_CanCheckBaseClass;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Int32> adviseEvents)
    >
  >
  get_NeedsAdviseEvents;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Utf16> className)
    >
  >
  put_ClassName;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Utf16> imageName)
    >
  >
  put_ImageName;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Int32 allowSubstringMatch)
    >
  >
  put_AllowSubstringMatch;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 canCheckBaseClass)>
  >
  put_CanCheckBaseClass;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 adviseEvents)>
  >
  put_NeedsAdviseEvents;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 eventId,
        Int32 propertyId,
        Pointer<SAFEARRAY> winEvents,
      )
    >
  >
  SetWinEventsForAutomationEvent;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 eventId,
        Int32 propertyId,
        Pointer<Pointer<SAFEARRAY>> winEvents,
      )
    >
  >
  GetWinEventsForAutomationEvent;
}

@internal
final class IUIAutomationProxyFactoryEntryCompanion
    extends ComCompanion<IUIAutomationProxyFactoryEntry> {
  const IUIAutomationProxyFactoryEntryCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationProxyFactoryEntry Function(VTablePointer) get fromPointer =>
      IUIAutomationProxyFactoryEntry.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IUIAutomationProxyFactoryEntry;
}
