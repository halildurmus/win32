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
import 'iuiautomationcacherequest.g.dart';
import 'iuiautomationcondition.g.dart';
import 'iuiautomationelement.g.dart';
import 'iuiautomationelement6.g.dart';
import 'iuiautomationelementarray.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomationElement7 = Guid.fromComponents(
  0x204e8572,
  0xcfc3,
  0x4c11,
  Uint8List.fromList(const [0xb0, 0xc8, 0x7d, 0xa7, 0x42, 0x7, 0x50, 0xb7]),
);

/// Extends the IUIAutomationElement6 interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationelement7>.
///
/// {@category com}
class IUIAutomationElement7 extends IUIAutomationElement6
    implements ComInterface {
  /// Creates a new instance of [IUIAutomationElement7] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IUIAutomationElement7]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationElement7(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationElement7Vtbl>().ref;

  /// Creates a new instance of [IUIAutomationElement7] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationElement7] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationElement7.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationElement7Vtbl _vtable;
  late final _FindFirstWithOptionsFn =
      _vtable.FindFirstWithOptions.asFunction<
        int Function(
          VTablePointer,
          int,
          VTablePointer,
          int,
          VTablePointer,
          Pointer<VTablePointer>,
        )
      >();
  late final _FindAllWithOptionsFn =
      _vtable.FindAllWithOptions.asFunction<
        int Function(
          VTablePointer,
          int,
          VTablePointer,
          int,
          VTablePointer,
          Pointer<VTablePointer>,
        )
      >();
  late final _FindFirstWithOptionsBuildCacheFn =
      _vtable.FindFirstWithOptionsBuildCache.asFunction<
        int Function(
          VTablePointer,
          int,
          VTablePointer,
          VTablePointer,
          int,
          VTablePointer,
          Pointer<VTablePointer>,
        )
      >();
  late final _FindAllWithOptionsBuildCacheFn =
      _vtable.FindAllWithOptionsBuildCache.asFunction<
        int Function(
          VTablePointer,
          int,
          VTablePointer,
          VTablePointer,
          int,
          VTablePointer,
          Pointer<VTablePointer>,
        )
      >();
  late final _GetCurrentMetadataValueFn =
      _vtable.GetCurrentMetadataValue.asFunction<
        int Function(VTablePointer, int, int, Pointer<VARIANT>)
      >();

  /// Finds the first matching element in the specified order.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement7-findfirstwithoptions>.
  IUIAutomationElement? findFirstWithOptions(
    TreeScope scope,
    IUIAutomationCondition? condition,
    TreeTraversalOptions traversalOptions,
    IUIAutomationElement? root,
  ) {
    final found = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _FindFirstWithOptionsFn(
        ptr,
        scope,
        condition?.ptr ?? nullptr,
        traversalOptions,
        root?.ptr ?? nullptr,
        found,
      ),
    );
    if (hr$.isError) {
      free(found);
      throw WindowsException(hr$);
    }
    final result$ = found.value;
    free(found);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  /// Find all matching elements in the specified order.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement7-findallwithoptions>.
  IUIAutomationElementArray? findAllWithOptions(
    TreeScope scope,
    IUIAutomationCondition? condition,
    TreeTraversalOptions traversalOptions,
    IUIAutomationElement? root,
  ) {
    final found = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _FindAllWithOptionsFn(
        ptr,
        scope,
        condition?.ptr ?? nullptr,
        traversalOptions,
        root?.ptr ?? nullptr,
        found,
      ),
    );
    if (hr$.isError) {
      free(found);
      throw WindowsException(hr$);
    }
    final result$ = found.value;
    free(found);
    if (result$.isNull) return null;
    return IUIAutomationElementArray(result$);
  }

  /// Finds the first matching element in the specified order, but also caches
  /// its properties and pattern.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement7-findfirstwithoptionsbuildcache>.
  IUIAutomationElement? findFirstWithOptionsBuildCache(
    TreeScope scope,
    IUIAutomationCondition? condition,
    IUIAutomationCacheRequest? cacheRequest,
    TreeTraversalOptions traversalOptions,
    IUIAutomationElement? root,
  ) {
    final found = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _FindFirstWithOptionsBuildCacheFn(
        ptr,
        scope,
        condition?.ptr ?? nullptr,
        cacheRequest?.ptr ?? nullptr,
        traversalOptions,
        root?.ptr ?? nullptr,
        found,
      ),
    );
    if (hr$.isError) {
      free(found);
      throw WindowsException(hr$);
    }
    final result$ = found.value;
    free(found);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  /// Finds all matching elements in the specified order, but also caches their
  /// properties and patterns.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement7-findallwithoptionsbuildcache>.
  IUIAutomationElementArray? findAllWithOptionsBuildCache(
    TreeScope scope,
    IUIAutomationCondition? condition,
    IUIAutomationCacheRequest? cacheRequest,
    TreeTraversalOptions traversalOptions,
    IUIAutomationElement? root,
  ) {
    final found = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _FindAllWithOptionsBuildCacheFn(
        ptr,
        scope,
        condition?.ptr ?? nullptr,
        cacheRequest?.ptr ?? nullptr,
        traversalOptions,
        root?.ptr ?? nullptr,
        found,
      ),
    );
    if (hr$.isError) {
      free(found);
      throw WindowsException(hr$);
    }
    final result$ = found.value;
    free(found);
    if (result$.isNull) return null;
    return IUIAutomationElementArray(result$);
  }

  /// Gets metadata from the UI Automation element that indicates how the
  /// information should be interpreted.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement7-getcurrentmetadatavalue>.
  Pointer<VARIANT> getCurrentMetadataValue(
    int targetId,
    UIA_METADATA_ID metadataId,
  ) {
    final returnVal = loggingCalloc<VARIANT>();
    final hr$ = HRESULT(
      _GetCurrentMetadataValueFn(ptr, targetId, metadataId, returnVal),
    );
    if (hr$.isError) {
      free(returnVal);
      throw WindowsException(hr$);
    }
    return returnVal;
  }

  @override
  String toString() => 'IUIAutomationElement7(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationElement7Vtbl extends Struct {
  external IUIAutomationElement6Vtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 scope,
        VTablePointer condition,
        Int32 traversalOptions,
        VTablePointer root,
        Pointer<VTablePointer> found,
      )
    >
  >
  FindFirstWithOptions;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 scope,
        VTablePointer condition,
        Int32 traversalOptions,
        VTablePointer root,
        Pointer<VTablePointer> found,
      )
    >
  >
  FindAllWithOptions;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 scope,
        VTablePointer condition,
        VTablePointer cacheRequest,
        Int32 traversalOptions,
        VTablePointer root,
        Pointer<VTablePointer> found,
      )
    >
  >
  FindFirstWithOptionsBuildCache;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 scope,
        VTablePointer condition,
        VTablePointer cacheRequest,
        Int32 traversalOptions,
        VTablePointer root,
        Pointer<VTablePointer> found,
      )
    >
  >
  FindAllWithOptionsBuildCache;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 targetId,
        Int32 metadataId,
        Pointer<VARIANT> returnVal,
      )
    >
  >
  GetCurrentMetadataValue;
}

@internal
final class IUIAutomationElement7Companion
    extends ComCompanion<IUIAutomationElement7> {
  const IUIAutomationElement7Companion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationElement7 Function(VTablePointer) get fromPointer =>
      IUIAutomationElement7.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationElement7;
}
