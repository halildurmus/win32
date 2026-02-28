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

/// @nodoc
final IID_ID3D11InfoQueue = GUID.fromComponents(
  0x6543dbb6,
  0x1b48,
  0x42f5,
  Uint8List.fromList(const [0xab, 0x82, 0xe9, 0x7e, 0xc7, 0x43, 0x26, 0xf6]),
);

/// An information-queue interface stores, retrieves, and filters debug
/// messages.
///
/// The queue consists of a message queue, an optional storage filter stack, and
/// a optional retrieval filter stack.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nn-d3d11sdklayers-id3d11infoqueue>.
///
/// {@category com}
class ID3D11InfoQueue extends IUnknown implements ComInterface {
  /// Creates a new instance of [ID3D11InfoQueue] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11InfoQueue]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3D11InfoQueue(super.ptr)
    : _vtable = ptr.value.cast<ID3D11InfoQueueVtbl>().ref;

  /// Creates a new instance of [ID3D11InfoQueue] from an existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11InfoQueue] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11InfoQueue.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3D11InfoQueueVtbl _vtable;
  late final _SetMessageCountLimitFn = _vtable
      .SetMessageCountLimit.asFunction<int Function(VTablePointer, int)>();
  late final _ClearStoredMessagesFn =
      _vtable.ClearStoredMessages.asFunction<void Function(VTablePointer)>();
  late final _GetMessageFn =
      _vtable.GetMessage.asFunction<
        int Function(
          VTablePointer,
          int,
          Pointer<D3D11_MESSAGE>,
          Pointer<IntPtr>,
        )
      >();
  late final _GetNumMessagesAllowedByStorageFilterFn =
      _vtable.GetNumMessagesAllowedByStorageFilter.asFunction<
        int Function(VTablePointer)
      >();
  late final _GetNumMessagesDeniedByStorageFilterFn =
      _vtable.GetNumMessagesDeniedByStorageFilter.asFunction<
        int Function(VTablePointer)
      >();
  late final _GetNumStoredMessagesFn =
      _vtable.GetNumStoredMessages.asFunction<int Function(VTablePointer)>();
  late final _GetNumStoredMessagesAllowedByRetrievalFilterFn =
      _vtable.GetNumStoredMessagesAllowedByRetrievalFilter.asFunction<
        int Function(VTablePointer)
      >();
  late final _GetNumMessagesDiscardedByMessageCountLimitFn =
      _vtable.GetNumMessagesDiscardedByMessageCountLimit.asFunction<
        int Function(VTablePointer)
      >();
  late final _GetMessageCountLimitFn =
      _vtable.GetMessageCountLimit.asFunction<int Function(VTablePointer)>();
  late final _AddStorageFilterEntriesFn =
      _vtable.AddStorageFilterEntries.asFunction<
        int Function(VTablePointer, Pointer<D3D11_INFO_QUEUE_FILTER>)
      >();
  late final _GetStorageFilterFn =
      _vtable.GetStorageFilter.asFunction<
        int Function(
          VTablePointer,
          Pointer<D3D11_INFO_QUEUE_FILTER>,
          Pointer<IntPtr>,
        )
      >();
  late final _ClearStorageFilterFn =
      _vtable.ClearStorageFilter.asFunction<void Function(VTablePointer)>();
  late final _PushEmptyStorageFilterFn =
      _vtable.PushEmptyStorageFilter.asFunction<int Function(VTablePointer)>();
  late final _PushCopyOfStorageFilterFn =
      _vtable.PushCopyOfStorageFilter.asFunction<int Function(VTablePointer)>();
  late final _PushStorageFilterFn =
      _vtable.PushStorageFilter.asFunction<
        int Function(VTablePointer, Pointer<D3D11_INFO_QUEUE_FILTER>)
      >();
  late final _PopStorageFilterFn =
      _vtable.PopStorageFilter.asFunction<void Function(VTablePointer)>();
  late final _GetStorageFilterStackSizeFn = _vtable
      .GetStorageFilterStackSize.asFunction<int Function(VTablePointer)>();
  late final _AddRetrievalFilterEntriesFn =
      _vtable.AddRetrievalFilterEntries.asFunction<
        int Function(VTablePointer, Pointer<D3D11_INFO_QUEUE_FILTER>)
      >();
  late final _GetRetrievalFilterFn =
      _vtable.GetRetrievalFilter.asFunction<
        int Function(
          VTablePointer,
          Pointer<D3D11_INFO_QUEUE_FILTER>,
          Pointer<IntPtr>,
        )
      >();
  late final _ClearRetrievalFilterFn =
      _vtable.ClearRetrievalFilter.asFunction<void Function(VTablePointer)>();
  late final _PushEmptyRetrievalFilterFn = _vtable
      .PushEmptyRetrievalFilter.asFunction<int Function(VTablePointer)>();
  late final _PushCopyOfRetrievalFilterFn = _vtable
      .PushCopyOfRetrievalFilter.asFunction<int Function(VTablePointer)>();
  late final _PushRetrievalFilterFn =
      _vtable.PushRetrievalFilter.asFunction<
        int Function(VTablePointer, Pointer<D3D11_INFO_QUEUE_FILTER>)
      >();
  late final _PopRetrievalFilterFn =
      _vtable.PopRetrievalFilter.asFunction<void Function(VTablePointer)>();
  late final _GetRetrievalFilterStackSizeFn = _vtable
      .GetRetrievalFilterStackSize.asFunction<int Function(VTablePointer)>();
  late final _AddMessageFn =
      _vtable.AddMessage.asFunction<
        int Function(VTablePointer, int, int, int, Pointer<Utf8>)
      >();
  late final _AddApplicationMessageFn =
      _vtable.AddApplicationMessage.asFunction<
        int Function(VTablePointer, int, Pointer<Utf8>)
      >();
  late final _SetBreakOnCategoryFn = _vtable
      .SetBreakOnCategory.asFunction<int Function(VTablePointer, int, int)>();
  late final _SetBreakOnSeverityFn = _vtable
      .SetBreakOnSeverity.asFunction<int Function(VTablePointer, int, int)>();
  late final _SetBreakOnIDFn =
      _vtable.SetBreakOnID.asFunction<int Function(VTablePointer, int, int)>();
  late final _GetBreakOnCategoryFn =
      _vtable.GetBreakOnCategory.asFunction<int Function(VTablePointer, int)>();
  late final _GetBreakOnSeverityFn =
      _vtable.GetBreakOnSeverity.asFunction<int Function(VTablePointer, int)>();
  late final _GetBreakOnIDFn =
      _vtable.GetBreakOnID.asFunction<int Function(VTablePointer, int)>();
  late final _SetMuteDebugOutputFn = _vtable
      .SetMuteDebugOutput.asFunction<void Function(VTablePointer, int)>();
  late final _GetMuteDebugOutputFn =
      _vtable.GetMuteDebugOutput.asFunction<int Function(VTablePointer)>();

  /// Set the maximum number of messages that can be added to the message queue.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11infoqueue-setmessagecountlimit>.
  @pragma('vm:prefer-inline')
  void setMessageCountLimit(int messageCountLimit) {
    final hr$ = HRESULT(_SetMessageCountLimitFn(ptr, messageCountLimit));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Clear all messages from the message queue.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11infoqueue-clearstoredmessages>.
  @pragma('vm:prefer-inline')
  void clearStoredMessages() => _ClearStoredMessagesFn(ptr);

  /// Get a message from the message queue.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11infoqueue-getmessage>.
  @pragma('vm:prefer-inline')
  void getMessage(
    int messageIndex,
    Pointer<D3D11_MESSAGE>? pMessage,
    Pointer<IntPtr> pMessageByteLength,
  ) {
    final hr$ = HRESULT(
      _GetMessageFn(ptr, messageIndex, pMessage ?? nullptr, pMessageByteLength),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Get the number of messages that were allowed to pass through a storage
  /// filter.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11infoqueue-getnummessagesallowedbystoragefilter>.
  @pragma('vm:prefer-inline')
  int getNumMessagesAllowedByStorageFilter() =>
      _GetNumMessagesAllowedByStorageFilterFn(ptr);

  /// Get the number of messages that were denied passage through a storage
  /// filter.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11infoqueue-getnummessagesdeniedbystoragefilter>.
  @pragma('vm:prefer-inline')
  int getNumMessagesDeniedByStorageFilter() =>
      _GetNumMessagesDeniedByStorageFilterFn(ptr);

  /// Get the number of messages currently stored in the message queue.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11infoqueue-getnumstoredmessages>.
  @pragma('vm:prefer-inline')
  int getNumStoredMessages() => _GetNumStoredMessagesFn(ptr);

  /// Get the number of messages that are able to pass through a retrieval
  /// filter.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11infoqueue-getnumstoredmessagesallowedbyretrievalfilter>.
  @pragma('vm:prefer-inline')
  int getNumStoredMessagesAllowedByRetrievalFilter() =>
      _GetNumStoredMessagesAllowedByRetrievalFilterFn(ptr);

  /// Get the number of messages that were discarded due to the message count
  /// limit.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11infoqueue-getnummessagesdiscardedbymessagecountlimit>.
  @pragma('vm:prefer-inline')
  int getNumMessagesDiscardedByMessageCountLimit() =>
      _GetNumMessagesDiscardedByMessageCountLimitFn(ptr);

  /// Get the maximum number of messages that can be added to the message queue.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11infoqueue-getmessagecountlimit>.
  @pragma('vm:prefer-inline')
  int getMessageCountLimit() => _GetMessageCountLimitFn(ptr);

  /// Add storage filters to the top of the storage-filter stack.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11infoqueue-addstoragefilterentries>.
  @pragma('vm:prefer-inline')
  void addStorageFilterEntries(Pointer<D3D11_INFO_QUEUE_FILTER> pFilter) {
    final hr$ = HRESULT(_AddStorageFilterEntriesFn(ptr, pFilter));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Get the storage filter at the top of the storage-filter stack.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11infoqueue-getstoragefilter>.
  @pragma('vm:prefer-inline')
  void getStorageFilter(
    Pointer<D3D11_INFO_QUEUE_FILTER>? pFilter,
    Pointer<IntPtr> pFilterByteLength,
  ) {
    final hr$ = HRESULT(
      _GetStorageFilterFn(ptr, pFilter ?? nullptr, pFilterByteLength),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Remove a storage filter from the top of the storage-filter stack.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11infoqueue-clearstoragefilter>.
  @pragma('vm:prefer-inline')
  void clearStorageFilter() => _ClearStorageFilterFn(ptr);

  /// Push an empty storage filter onto the storage-filter stack.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11infoqueue-pushemptystoragefilter>.
  @pragma('vm:prefer-inline')
  void pushEmptyStorageFilter() {
    final hr$ = HRESULT(_PushEmptyStorageFilterFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Push a copy of storage filter currently on the top of the storage-filter
  /// stack onto the storage-filter stack.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11infoqueue-pushcopyofstoragefilter>.
  @pragma('vm:prefer-inline')
  void pushCopyOfStorageFilter() {
    final hr$ = HRESULT(_PushCopyOfStorageFilterFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Push a storage filter onto the storage-filter stack.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11infoqueue-pushstoragefilter>.
  @pragma('vm:prefer-inline')
  void pushStorageFilter(Pointer<D3D11_INFO_QUEUE_FILTER> pFilter) {
    final hr$ = HRESULT(_PushStorageFilterFn(ptr, pFilter));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Pop a storage filter from the top of the storage-filter stack.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11infoqueue-popstoragefilter>.
  @pragma('vm:prefer-inline')
  void popStorageFilter() => _PopStorageFilterFn(ptr);

  /// Get the size of the storage-filter stack in bytes.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11infoqueue-getstoragefilterstacksize>.
  @pragma('vm:prefer-inline')
  int getStorageFilterStackSize() => _GetStorageFilterStackSizeFn(ptr);

  /// Add storage filters to the top of the retrieval-filter stack.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11infoqueue-addretrievalfilterentries>.
  @pragma('vm:prefer-inline')
  void addRetrievalFilterEntries(Pointer<D3D11_INFO_QUEUE_FILTER> pFilter) {
    final hr$ = HRESULT(_AddRetrievalFilterEntriesFn(ptr, pFilter));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Get the retrieval filter at the top of the retrieval-filter stack.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11infoqueue-getretrievalfilter>.
  @pragma('vm:prefer-inline')
  void getRetrievalFilter(
    Pointer<D3D11_INFO_QUEUE_FILTER>? pFilter,
    Pointer<IntPtr> pFilterByteLength,
  ) {
    final hr$ = HRESULT(
      _GetRetrievalFilterFn(ptr, pFilter ?? nullptr, pFilterByteLength),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Remove a retrieval filter from the top of the retrieval-filter stack.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11infoqueue-clearretrievalfilter>.
  @pragma('vm:prefer-inline')
  void clearRetrievalFilter() => _ClearRetrievalFilterFn(ptr);

  /// Push an empty retrieval filter onto the retrieval-filter stack.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11infoqueue-pushemptyretrievalfilter>.
  @pragma('vm:prefer-inline')
  void pushEmptyRetrievalFilter() {
    final hr$ = HRESULT(_PushEmptyRetrievalFilterFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Push a copy of retrieval filter currently on the top of the
  /// retrieval-filter stack onto the retrieval-filter stack.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11infoqueue-pushcopyofretrievalfilter>.
  @pragma('vm:prefer-inline')
  void pushCopyOfRetrievalFilter() {
    final hr$ = HRESULT(_PushCopyOfRetrievalFilterFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Push a retrieval filter onto the retrieval-filter stack.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11infoqueue-pushretrievalfilter>.
  @pragma('vm:prefer-inline')
  void pushRetrievalFilter(Pointer<D3D11_INFO_QUEUE_FILTER> pFilter) {
    final hr$ = HRESULT(_PushRetrievalFilterFn(ptr, pFilter));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Pop a retrieval filter from the top of the retrieval-filter stack.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11infoqueue-popretrievalfilter>.
  @pragma('vm:prefer-inline')
  void popRetrievalFilter() => _PopRetrievalFilterFn(ptr);

  /// Get the size of the retrieval-filter stack in bytes.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11infoqueue-getretrievalfilterstacksize>.
  @pragma('vm:prefer-inline')
  int getRetrievalFilterStackSize() => _GetRetrievalFilterStackSizeFn(ptr);

  /// Add a debug message to the message queue and send that message to debug
  /// output.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11infoqueue-addmessage>.
  @pragma('vm:prefer-inline')
  void addMessage(
    D3D11_MESSAGE_CATEGORY category,
    D3D11_MESSAGE_SEVERITY severity,
    D3D11_MESSAGE_ID iD,
    PCSTR pDescription,
  ) {
    final hr$ = HRESULT(
      _AddMessageFn(ptr, category, severity, iD, pDescription),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Add a user-defined message to the message queue and send that message to
  /// debug output.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11infoqueue-addapplicationmessage>.
  @pragma('vm:prefer-inline')
  void addApplicationMessage(
    D3D11_MESSAGE_SEVERITY severity,
    PCSTR pDescription,
  ) {
    final hr$ = HRESULT(_AddApplicationMessageFn(ptr, severity, pDescription));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Set a message category to break on when a message with that category
  /// passes through the storage filter.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11infoqueue-setbreakoncategory>.
  @pragma('vm:prefer-inline')
  void setBreakOnCategory(D3D11_MESSAGE_CATEGORY category, bool bEnable) {
    final hr$ = HRESULT(
      _SetBreakOnCategoryFn(ptr, category, bEnable ? TRUE : FALSE),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Set a message severity level to break on when a message with that severity
  /// level passes through the storage filter.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11infoqueue-setbreakonseverity>.
  @pragma('vm:prefer-inline')
  void setBreakOnSeverity(D3D11_MESSAGE_SEVERITY severity, bool bEnable) {
    final hr$ = HRESULT(
      _SetBreakOnSeverityFn(ptr, severity, bEnable ? TRUE : FALSE),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Set a message identifier to break on when a message with that identifier
  /// passes through the storage filter.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11infoqueue-setbreakonid>.
  @pragma('vm:prefer-inline')
  void setBreakOnID(D3D11_MESSAGE_ID iD, bool bEnable) {
    final hr$ = HRESULT(_SetBreakOnIDFn(ptr, iD, bEnable ? TRUE : FALSE));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Get a message category to break on when a message with that category
  /// passes through the storage filter.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11infoqueue-getbreakoncategory>.
  @pragma('vm:prefer-inline')
  bool getBreakOnCategory(D3D11_MESSAGE_CATEGORY category) =>
      _GetBreakOnCategoryFn(ptr, category) != FALSE;

  /// Get a message severity level to break on when a message with that severity
  /// level passes through the storage filter.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11infoqueue-getbreakonseverity>.
  @pragma('vm:prefer-inline')
  bool getBreakOnSeverity(D3D11_MESSAGE_SEVERITY severity) =>
      _GetBreakOnSeverityFn(ptr, severity) != FALSE;

  /// Get a message identifier to break on when a message with that identifier
  /// passes through the storage filter.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11infoqueue-getbreakonid>.
  @pragma('vm:prefer-inline')
  bool getBreakOnID(D3D11_MESSAGE_ID iD) => _GetBreakOnIDFn(ptr, iD) != FALSE;

  /// Set a boolean that turns the debug output on or off.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11infoqueue-setmutedebugoutput>.
  @pragma('vm:prefer-inline')
  void setMuteDebugOutput(bool bMute) =>
      _SetMuteDebugOutputFn(ptr, bMute ? TRUE : FALSE);

  /// Get a boolean that turns the debug output on or off.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11infoqueue-getmutedebugoutput>.
  @pragma('vm:prefer-inline')
  bool getMuteDebugOutput() => _GetMuteDebugOutputFn(ptr) != FALSE;

  @override
  String toString() => 'ID3D11InfoQueue(ptr: $ptr)';
}

/// @nodoc
base class ID3D11InfoQueueVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Uint64 messageCountLimit)
    >
  >
  SetMessageCountLimit;
  external Pointer<NativeFunction<Void Function(VTablePointer this$)>>
  ClearStoredMessages;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint64 messageIndex,
        Pointer<D3D11_MESSAGE> pMessage,
        Pointer<IntPtr> pMessageByteLength,
      )
    >
  >
  GetMessage;
  external Pointer<NativeFunction<Uint64 Function(VTablePointer this$)>>
  GetNumMessagesAllowedByStorageFilter;
  external Pointer<NativeFunction<Uint64 Function(VTablePointer this$)>>
  GetNumMessagesDeniedByStorageFilter;
  external Pointer<NativeFunction<Uint64 Function(VTablePointer this$)>>
  GetNumStoredMessages;
  external Pointer<NativeFunction<Uint64 Function(VTablePointer this$)>>
  GetNumStoredMessagesAllowedByRetrievalFilter;
  external Pointer<NativeFunction<Uint64 Function(VTablePointer this$)>>
  GetNumMessagesDiscardedByMessageCountLimit;
  external Pointer<NativeFunction<Uint64 Function(VTablePointer this$)>>
  GetMessageCountLimit;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<D3D11_INFO_QUEUE_FILTER> pFilter,
      )
    >
  >
  AddStorageFilterEntries;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<D3D11_INFO_QUEUE_FILTER> pFilter,
        Pointer<IntPtr> pFilterByteLength,
      )
    >
  >
  GetStorageFilter;
  external Pointer<NativeFunction<Void Function(VTablePointer this$)>>
  ClearStorageFilter;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  PushEmptyStorageFilter;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  PushCopyOfStorageFilter;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<D3D11_INFO_QUEUE_FILTER> pFilter,
      )
    >
  >
  PushStorageFilter;
  external Pointer<NativeFunction<Void Function(VTablePointer this$)>>
  PopStorageFilter;
  external Pointer<NativeFunction<Uint32 Function(VTablePointer this$)>>
  GetStorageFilterStackSize;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<D3D11_INFO_QUEUE_FILTER> pFilter,
      )
    >
  >
  AddRetrievalFilterEntries;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<D3D11_INFO_QUEUE_FILTER> pFilter,
        Pointer<IntPtr> pFilterByteLength,
      )
    >
  >
  GetRetrievalFilter;
  external Pointer<NativeFunction<Void Function(VTablePointer this$)>>
  ClearRetrievalFilter;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  PushEmptyRetrievalFilter;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  PushCopyOfRetrievalFilter;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<D3D11_INFO_QUEUE_FILTER> pFilter,
      )
    >
  >
  PushRetrievalFilter;
  external Pointer<NativeFunction<Void Function(VTablePointer this$)>>
  PopRetrievalFilter;
  external Pointer<NativeFunction<Uint32 Function(VTablePointer this$)>>
  GetRetrievalFilterStackSize;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 category,
        Int32 severity,
        Int32 iD,
        Pointer<Utf8> pDescription,
      )
    >
  >
  AddMessage;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 severity,
        Pointer<Utf8> pDescription,
      )
    >
  >
  AddApplicationMessage;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Int32 category, Int32 bEnable)
    >
  >
  SetBreakOnCategory;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Int32 severity, Int32 bEnable)
    >
  >
  SetBreakOnSeverity;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 iD, Int32 bEnable)>
  >
  SetBreakOnID;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 category)>
  >
  GetBreakOnCategory;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 severity)>
  >
  GetBreakOnSeverity;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 iD)>
  >
  GetBreakOnID;
  external Pointer<
    NativeFunction<Void Function(VTablePointer this$, Int32 bMute)>
  >
  SetMuteDebugOutput;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  GetMuteDebugOutput;
}

@internal
final class ID3D11InfoQueueCompanion extends ComCompanion<ID3D11InfoQueue> {
  const ID3D11InfoQueueCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11InfoQueue Function(VTablePointer) get fromPointer =>
      ID3D11InfoQueue.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11InfoQueue;
}
