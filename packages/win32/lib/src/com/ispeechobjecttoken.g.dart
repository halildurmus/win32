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
import 'ispeechdatakey.g.dart';
import 'ispeechobjecttokencategory.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ISpeechObjectToken = Guid.fromComponents(
  0xc74a3adc,
  0xb727,
  0x4500,
  Uint8List.fromList(const [0xa8, 0x4a, 0xb5, 0x26, 0x72, 0x1c, 0x8b, 0x8c]),
);

/// {@category com}
class ISpeechObjectToken extends IDispatch implements ComInterface {
  /// Creates a new instance of [ISpeechObjectToken] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ISpeechObjectToken]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  ISpeechObjectToken(super.ptr)
    : _vtable = ptr.value.cast<ISpeechObjectTokenVtbl>().ref;

  /// Creates a new instance of [ISpeechObjectToken] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [ISpeechObjectToken] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ISpeechObjectToken.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final ISpeechObjectTokenVtbl _vtable;
  late final _get_IdFn = _vtable.get_Id
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_DataKeyFn = _vtable.get_DataKey
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _get_CategoryFn = _vtable.get_Category
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _GetDescriptionFn =
      _vtable.GetDescription.asFunction<
        int Function(VTablePointer, int, Pointer<BSTR>)
      >();
  late final _SetIdFn =
      _vtable.SetId.asFunction<int Function(VTablePointer, BSTR, BSTR, int)>();
  late final _GetAttributeFn =
      _vtable.GetAttribute.asFunction<
        int Function(VTablePointer, BSTR, Pointer<BSTR>)
      >();
  late final _CreateInstanceFn =
      _vtable.CreateInstance.asFunction<
        int Function(VTablePointer, VTablePointer, int, Pointer<VTablePointer>)
      >();
  late final _RemoveFn =
      _vtable.Remove.asFunction<int Function(VTablePointer, BSTR)>();
  late final _GetStorageFileNameFn =
      _vtable.GetStorageFileName.asFunction<
        int Function(VTablePointer, BSTR, BSTR, BSTR, int, Pointer<BSTR>)
      >();
  late final _RemoveStorageFileNameFn =
      _vtable.RemoveStorageFileName.asFunction<
        int Function(VTablePointer, BSTR, BSTR, int)
      >();
  late final _IsUISupportedFn =
      _vtable.IsUISupported.asFunction<
        int Function(
          VTablePointer,
          BSTR,
          Pointer<VARIANT>,
          VTablePointer,
          Pointer<VARIANT_BOOL>,
        )
      >();
  late final _DisplayUIFn =
      _vtable.DisplayUI.asFunction<
        int Function(
          VTablePointer,
          int,
          BSTR,
          BSTR,
          Pointer<VARIANT>,
          VTablePointer,
        )
      >();
  late final _MatchesAttributesFn =
      _vtable.MatchesAttributes.asFunction<
        int Function(VTablePointer, BSTR, Pointer<VARIANT_BOOL>)
      >();

  BSTR get id {
    final objectId = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_IdFn(ptr, objectId));
    if (hr$.isError) {
      free(objectId);
      throw WindowsException(hr$);
    }
    final result$ = objectId.value;
    free(objectId);
    return result$;
  }

  ISpeechDataKey? get dataKey {
    final dataKey = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_DataKeyFn(ptr, dataKey));
    if (hr$.isError) {
      free(dataKey);
      throw WindowsException(hr$);
    }
    final result$ = dataKey.value;
    free(dataKey);
    if (result$.isNull) return null;
    return ISpeechDataKey(result$);
  }

  ISpeechObjectTokenCategory? get category {
    final category = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_CategoryFn(ptr, category));
    if (hr$.isError) {
      free(category);
      throw WindowsException(hr$);
    }
    final result$ = category.value;
    free(category);
    if (result$.isNull) return null;
    return ISpeechObjectTokenCategory(result$);
  }

  /// Throws a [WindowsException] on failure.
  BSTR getDescription(int locale) {
    final description = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_GetDescriptionFn(ptr, locale, description));
    if (hr$.isError) {
      free(description);
      throw WindowsException(hr$);
    }
    final result$ = description.value;
    free(description);
    return result$;
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void setId(BSTR id, BSTR categoryID, bool createIfNotExist) {
    final hr$ = HRESULT(
      _SetIdFn(ptr, id, categoryID, createIfNotExist ? VARIANT_TRUE : FALSE),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  BSTR getAttribute(BSTR attributeName) {
    final attributeValue = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_GetAttributeFn(ptr, attributeName, attributeValue));
    if (hr$.isError) {
      free(attributeValue);
      throw WindowsException(hr$);
    }
    final result$ = attributeValue.value;
    free(attributeValue);
    return result$;
  }

  /// Throws a [WindowsException] on failure.
  IUnknown? createInstance(IUnknown? pUnkOuter, SpeechTokenContext clsContext) {
    final object = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CreateInstanceFn(ptr, pUnkOuter?.ptr ?? nullptr, clsContext, object),
    );
    if (hr$.isError) {
      free(object);
      throw WindowsException(hr$);
    }
    final result$ = object.value;
    free(object);
    if (result$.isNull) return null;
    return IUnknown(result$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void remove(BSTR objectStorageCLSID) {
    final hr$ = HRESULT(_RemoveFn(ptr, objectStorageCLSID));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  BSTR getStorageFileName(
    BSTR objectStorageCLSID,
    BSTR keyName,
    BSTR fileName,
    SpeechTokenShellFolder folder,
  ) {
    final filePath = loggingCalloc<BSTR>();
    final hr$ = HRESULT(
      _GetStorageFileNameFn(
        ptr,
        objectStorageCLSID,
        keyName,
        fileName,
        folder,
        filePath,
      ),
    );
    if (hr$.isError) {
      free(filePath);
      throw WindowsException(hr$);
    }
    final result$ = filePath.value;
    free(filePath);
    return result$;
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void removeStorageFileName(
    BSTR objectStorageCLSID,
    BSTR keyName,
    bool deleteFile,
  ) {
    final hr$ = HRESULT(
      _RemoveStorageFileNameFn(
        ptr,
        objectStorageCLSID,
        keyName,
        deleteFile ? VARIANT_TRUE : FALSE,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  bool isUISupported(
    BSTR typeOfUI,
    Pointer<VARIANT> extraData,
    IUnknown? object,
  ) {
    final supported = loggingCalloc<VARIANT_BOOL>();
    final hr$ = HRESULT(
      _IsUISupportedFn(
        ptr,
        typeOfUI,
        extraData,
        object?.ptr ?? nullptr,
        supported,
      ),
    );
    if (hr$.isError) {
      free(supported);
      throw WindowsException(hr$);
    }
    final result$ = supported.value;
    free(supported);
    return result$ != FALSE;
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void displayUI(
    int hWnd,
    BSTR title,
    BSTR typeOfUI,
    Pointer<VARIANT> extraData,
    IUnknown? object,
  ) {
    final hr$ = HRESULT(
      _DisplayUIFn(
        ptr,
        hWnd,
        title,
        typeOfUI,
        extraData,
        object?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  bool matchesAttributes(BSTR attributes) {
    final matches = loggingCalloc<VARIANT_BOOL>();
    final hr$ = HRESULT(_MatchesAttributesFn(ptr, attributes, matches));
    if (hr$.isError) {
      free(matches);
      throw WindowsException(hr$);
    }
    final result$ = matches.value;
    free(matches);
    return result$ != FALSE;
  }

  @override
  String toString() => 'ISpeechObjectToken(ptr: $ptr)';
}

/// @nodoc
base class ISpeechObjectTokenVtbl extends Struct {
  external IDispatchVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> objectId)>
  >
  get_Id;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> dataKey)
    >
  >
  get_DataKey;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> category)
    >
  >
  get_Category;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 locale,
        Pointer<BSTR> description,
      )
    >
  >
  GetDescription;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        BSTR id,
        BSTR categoryID,
        VARIANT_BOOL createIfNotExist,
      )
    >
  >
  SetId;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        BSTR attributeName,
        Pointer<BSTR> attributeValue,
      )
    >
  >
  GetAttribute;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pUnkOuter,
        Uint32 clsContext,
        Pointer<VTablePointer> object,
      )
    >
  >
  CreateInstance;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, BSTR objectStorageCLSID)>
  >
  Remove;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        BSTR objectStorageCLSID,
        BSTR keyName,
        BSTR fileName,
        Int32 folder,
        Pointer<BSTR> filePath,
      )
    >
  >
  GetStorageFileName;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        BSTR objectStorageCLSID,
        BSTR keyName,
        VARIANT_BOOL deleteFile,
      )
    >
  >
  RemoveStorageFileName;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        BSTR typeOfUI,
        Pointer<VARIANT> extraData,
        VTablePointer object,
        Pointer<VARIANT_BOOL> supported,
      )
    >
  >
  IsUISupported;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 hWnd,
        BSTR title,
        BSTR typeOfUI,
        Pointer<VARIANT> extraData,
        VTablePointer object,
      )
    >
  >
  DisplayUI;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        BSTR attributes,
        Pointer<VARIANT_BOOL> matches,
      )
    >
  >
  MatchesAttributes;
}

@internal
final class ISpeechObjectTokenCompanion
    extends ComCompanion<ISpeechObjectToken> {
  const ISpeechObjectTokenCompanion();

  @pragma('vm:prefer-inline')
  @override
  ISpeechObjectToken Function(VTablePointer) get fromPointer =>
      ISpeechObjectToken.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_ISpeechObjectToken;
}
