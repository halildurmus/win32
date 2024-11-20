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
import '../variant.dart';
import 'interface.g.dart';
import 'irecordinfo.g.dart';
import 'itypeinfo.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IRecordInfo = Guid.fromComponents(
  0x2f,
  0x0,
  0x0,
  Uint8List.fromList(const [0xc0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x46]),
);

/// Describes the structure of a particular UDT.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/nn-oaidl-irecordinfo>.
///
/// {@category com}
class IRecordInfo extends IUnknown implements ComInterface {
  /// Creates a new instance of [IRecordInfo] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IRecordInfo] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IRecordInfo(super.ptr) : _vtable = ptr.value.cast<IRecordInfoVtbl>().ref;

  /// Creates a new instance of [IRecordInfo] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IRecordInfo] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IRecordInfo.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IRecordInfoVtbl _vtable;
  late final _RecordInitFn =
      _vtable.RecordInit.asFunction<int Function(VTablePointer, Pointer)>();
  late final _RecordClearFn =
      _vtable.RecordClear.asFunction<int Function(VTablePointer, Pointer)>();
  late final _RecordCopyFn = _vtable
      .RecordCopy.asFunction<int Function(VTablePointer, Pointer, Pointer)>();
  late final _GetGuidFn =
      _vtable.GetGuid.asFunction<int Function(VTablePointer, Pointer<GUID>)>();
  late final _GetNameFn =
      _vtable.GetName.asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _GetSizeFn = _vtable
      .GetSize.asFunction<int Function(VTablePointer, Pointer<Uint32>)>();
  late final _GetTypeInfoFn =
      _vtable.GetTypeInfo.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetFieldFn =
      _vtable.GetField.asFunction<
        int Function(VTablePointer, Pointer, PCWSTR, Pointer<VARIANT>)
      >();
  late final _GetFieldNoCopyFn =
      _vtable.GetFieldNoCopy.asFunction<
        int Function(
          VTablePointer,
          Pointer,
          PCWSTR,
          Pointer<VARIANT>,
          Pointer<Pointer>,
        )
      >();
  late final _PutFieldFn =
      _vtable.PutField.asFunction<
        int Function(VTablePointer, int, Pointer, PCWSTR, Pointer<VARIANT>)
      >();
  late final _PutFieldNoCopyFn =
      _vtable.PutFieldNoCopy.asFunction<
        int Function(VTablePointer, int, Pointer, PCWSTR, Pointer<VARIANT>)
      >();
  late final _GetFieldNamesFn =
      _vtable.GetFieldNames.asFunction<
        int Function(VTablePointer, Pointer<Uint32>, Pointer<BSTR>)
      >();
  late final _IsMatchingTypeFn = _vtable
      .IsMatchingType.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _RecordCreateFn =
      _vtable.RecordCreate.asFunction<Pointer Function(VTablePointer)>();
  late final _RecordCreateCopyFn =
      _vtable.RecordCreateCopy.asFunction<
        int Function(VTablePointer, Pointer, Pointer<Pointer>)
      >();
  late final _RecordDestroyFn =
      _vtable.RecordDestroy.asFunction<int Function(VTablePointer, Pointer)>();

  /// Initializes a new instance of a record.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-irecordinfo-recordinit>.
  @pragma('vm:prefer-inline')
  void recordInit(Pointer pvNew) {
    final hr$ = HRESULT(_RecordInitFn(ptr, pvNew));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Releases object references and other values of a record without
  /// deallocating the record.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-irecordinfo-recordclear>.
  @pragma('vm:prefer-inline')
  void recordClear(Pointer pvExisting) {
    final hr$ = HRESULT(_RecordClearFn(ptr, pvExisting));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Copies an existing record into the passed in buffer.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-irecordinfo-recordcopy>.
  @pragma('vm:prefer-inline')
  void recordCopy(Pointer pvExisting, Pointer pvNew) {
    final hr$ = HRESULT(_RecordCopyFn(ptr, pvExisting, pvNew));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the GUID of the record type.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-irecordinfo-getguid>.
  Pointer<GUID> getGuid() {
    final pguid = loggingCalloc<GUID>();
    final hr$ = HRESULT(_GetGuidFn(ptr, pguid));
    if (hr$.isError) {
      free(pguid);
      throw WindowsException(hr$);
    }
    return pguid;
  }

  /// Gets the name of the record type.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-irecordinfo-getname>.
  BSTR getName() {
    final pbstrName = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_GetNameFn(ptr, pbstrName));
    if (hr$.isError) {
      free(pbstrName);
      throw WindowsException(hr$);
    }
    final result$ = pbstrName.value;
    free(pbstrName);
    return result$;
  }

  /// Gets the number of bytes of memory necessary to hold the record instance.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-irecordinfo-getsize>.
  int getSize() {
    final pcbSize = loggingCalloc<Uint32>();
    final hr$ = HRESULT(_GetSizeFn(ptr, pcbSize));
    if (hr$.isError) {
      free(pcbSize);
      throw WindowsException(hr$);
    }
    final result$ = pcbSize.value;
    free(pcbSize);
    return result$;
  }

  /// Retrieves the type information that describes a UDT or safearray of UDTs.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-irecordinfo-gettypeinfo>.
  ITypeInfo? getTypeInfo() {
    final ppTypeInfo = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetTypeInfoFn(ptr, ppTypeInfo));
    if (hr$.isError) {
      free(ppTypeInfo);
      throw WindowsException(hr$);
    }
    final result$ = ppTypeInfo.value;
    free(ppTypeInfo);
    if (result$.isNull) return null;
    return ITypeInfo(result$);
  }

  /// Returns a pointer to the VARIANT containing the value of a given field
  /// name.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-irecordinfo-getfield>.
  Pointer<VARIANT> getField(Pointer pvData, PCWSTR szFieldName) {
    final pvarField = loggingCalloc<VARIANT>();
    final hr$ = HRESULT(_GetFieldFn(ptr, pvData, szFieldName, pvarField));
    if (hr$.isError) {
      free(pvarField);
      throw WindowsException(hr$);
    }
    return pvarField;
  }

  /// Returns a pointer to the value of a given field name without copying the
  /// value and allocating resources.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-irecordinfo-getfieldnocopy>.
  @pragma('vm:prefer-inline')
  void getFieldNoCopy(
    Pointer pvData,
    PCWSTR szFieldName,
    Pointer<VARIANT> pvarField,
    Pointer<Pointer> ppvDataCArray,
  ) {
    final hr$ = HRESULT(
      _GetFieldNoCopyFn(ptr, pvData, szFieldName, pvarField, ppvDataCArray),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Puts a variant into a field.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-irecordinfo-putfield>.
  @pragma('vm:prefer-inline')
  void putField(
    int wFlags,
    Pointer pvData,
    PCWSTR szFieldName,
    Pointer<VARIANT> pvarField,
  ) {
    final hr$ = HRESULT(
      _PutFieldFn(ptr, wFlags, pvData, szFieldName, pvarField),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Passes ownership of the data to the assigned field by placing the actual
  /// data into the field.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-irecordinfo-putfieldnocopy>.
  @pragma('vm:prefer-inline')
  void putFieldNoCopy(
    int wFlags,
    Pointer pvData,
    PCWSTR szFieldName,
    Pointer<VARIANT> pvarField,
  ) {
    final hr$ = HRESULT(
      _PutFieldNoCopyFn(ptr, wFlags, pvData, szFieldName, pvarField),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the names of the fields of the record.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-irecordinfo-getfieldnames>.
  @pragma('vm:prefer-inline')
  void getFieldNames(Pointer<Uint32> pcNames, Pointer<BSTR> rgBstrNames) {
    final hr$ = HRESULT(_GetFieldNamesFn(ptr, pcNames, rgBstrNames));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Determines whether the record that is passed in matches that of the
  /// current record information.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-irecordinfo-ismatchingtype>.
  @pragma('vm:prefer-inline')
  bool isMatchingType(IRecordInfo? pRecordInfo) =>
      _IsMatchingTypeFn(ptr, pRecordInfo?.ptr ?? nullptr) != FALSE;

  /// Allocates memory for a new record, initializes the instance and returns a
  /// pointer to the record.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-irecordinfo-recordcreate>.
  @pragma('vm:prefer-inline')
  Pointer recordCreate() => _RecordCreateFn(ptr);

  /// Creates a copy of an instance of a record to the specified location.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-irecordinfo-recordcreatecopy>.
  @pragma('vm:prefer-inline')
  void recordCreateCopy(Pointer pvSource, Pointer<Pointer> ppvDest) {
    final hr$ = HRESULT(_RecordCreateCopyFn(ptr, pvSource, ppvDest));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Releases the resources and deallocates the memory of the record.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-irecordinfo-recorddestroy>.
  @pragma('vm:prefer-inline')
  void recordDestroy(Pointer pvRecord) {
    final hr$ = HRESULT(_RecordDestroyFn(ptr, pvRecord));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IRecordInfo(ptr: $ptr)';
}

/// @nodoc
base class IRecordInfoVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer pvNew)>
  >
  RecordInit;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer pvExisting)>
  >
  RecordClear;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer pvExisting, Pointer pvNew)
    >
  >
  RecordCopy;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<GUID> pguid)>
  >
  GetGuid;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> pbstrName)>
  >
  GetName;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Uint32> pcbSize)>
  >
  GetSize;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppTypeInfo)
    >
  >
  GetTypeInfo;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer pvData,
        PCWSTR szFieldName,
        Pointer<VARIANT> pvarField,
      )
    >
  >
  GetField;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer pvData,
        PCWSTR szFieldName,
        Pointer<VARIANT> pvarField,
        Pointer<Pointer> ppvDataCArray,
      )
    >
  >
  GetFieldNoCopy;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 wFlags,
        Pointer pvData,
        PCWSTR szFieldName,
        Pointer<VARIANT> pvarField,
      )
    >
  >
  PutField;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 wFlags,
        Pointer pvData,
        PCWSTR szFieldName,
        Pointer<VARIANT> pvarField,
      )
    >
  >
  PutFieldNoCopy;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Uint32> pcNames,
        Pointer<BSTR> rgBstrNames,
      )
    >
  >
  GetFieldNames;
  external Pointer<
    NativeFunction<
      BOOL Function(VTablePointer this$, VTablePointer pRecordInfo)
    >
  >
  IsMatchingType;
  external Pointer<NativeFunction<Pointer Function(VTablePointer this$)>>
  RecordCreate;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer pvSource,
        Pointer<Pointer> ppvDest,
      )
    >
  >
  RecordCreateCopy;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer pvRecord)>
  >
  RecordDestroy;
}

@internal
final class IRecordInfoCompanion extends ComCompanion<IRecordInfo> {
  const IRecordInfoCompanion();

  @pragma('vm:prefer-inline')
  @override
  IRecordInfo Function(VTablePointer) get fromPointer => IRecordInfo.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IRecordInfo;
}
