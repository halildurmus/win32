// IDXGIInfoQueue.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../system/com/IUnknown.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/dxgi/structs.g.dart';

/// @nodoc
const IID_IDXGIInfoQueue = '{D67441C7-672A-476F-9E82-CD55B44949CE}';

/// {@category Interface}
/// {@category com}
class IDXGIInfoQueue extends IUnknown {
  // vtable begins at 3, is 37 entries long.
  IDXGIInfoQueue(Pointer<COMObject> ptr) : super(ptr);

  int SetMessageCountLimit(
    GUID Producer,
    int MessageCountLimit,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID Producer,
            Uint64 MessageCountLimit,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID Producer,
            int MessageCountLimit,
          )>()(
        ptr.ref.lpVtbl,
        Producer,
        MessageCountLimit,
      );

  void ClearStoredMessages(
    GUID Producer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            GUID Producer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            GUID Producer,
          )>()(
        ptr.ref.lpVtbl,
        Producer,
      );

  int GetMessage(
    GUID Producer,
    int MessageIndex,
    Pointer<DXGI_INFO_QUEUE_MESSAGE> pMessage,
    Pointer<IntPtr> pMessageByteLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID Producer,
            Uint64 MessageIndex,
            Pointer<DXGI_INFO_QUEUE_MESSAGE> pMessage,
            Pointer<IntPtr> pMessageByteLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID Producer,
            int MessageIndex,
            Pointer<DXGI_INFO_QUEUE_MESSAGE> pMessage,
            Pointer<IntPtr> pMessageByteLength,
          )>()(
        ptr.ref.lpVtbl,
        Producer,
        MessageIndex,
        pMessage,
        pMessageByteLength,
      );

  int GetNumStoredMessagesAllowedByRetrievalFilters(
    GUID Producer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint64 Function(
            Pointer,
            GUID Producer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID Producer,
          )>()(
        ptr.ref.lpVtbl,
        Producer,
      );

  int GetNumStoredMessages(
    GUID Producer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint64 Function(
            Pointer,
            GUID Producer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID Producer,
          )>()(
        ptr.ref.lpVtbl,
        Producer,
      );

  int GetNumMessagesDiscardedByMessageCountLimit(
    GUID Producer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint64 Function(
            Pointer,
            GUID Producer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID Producer,
          )>()(
        ptr.ref.lpVtbl,
        Producer,
      );

  int GetMessageCountLimit(
    GUID Producer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint64 Function(
            Pointer,
            GUID Producer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID Producer,
          )>()(
        ptr.ref.lpVtbl,
        Producer,
      );

  int GetNumMessagesAllowedByStorageFilter(
    GUID Producer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint64 Function(
            Pointer,
            GUID Producer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID Producer,
          )>()(
        ptr.ref.lpVtbl,
        Producer,
      );

  int GetNumMessagesDeniedByStorageFilter(
    GUID Producer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint64 Function(
            Pointer,
            GUID Producer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID Producer,
          )>()(
        ptr.ref.lpVtbl,
        Producer,
      );

  int AddStorageFilterEntries(
    GUID Producer,
    Pointer<DXGI_INFO_QUEUE_FILTER> pFilter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID Producer,
            Pointer<DXGI_INFO_QUEUE_FILTER> pFilter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID Producer,
            Pointer<DXGI_INFO_QUEUE_FILTER> pFilter,
          )>()(
        ptr.ref.lpVtbl,
        Producer,
        pFilter,
      );

  int GetStorageFilter(
    GUID Producer,
    Pointer<DXGI_INFO_QUEUE_FILTER> pFilter,
    Pointer<IntPtr> pFilterByteLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID Producer,
            Pointer<DXGI_INFO_QUEUE_FILTER> pFilter,
            Pointer<IntPtr> pFilterByteLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID Producer,
            Pointer<DXGI_INFO_QUEUE_FILTER> pFilter,
            Pointer<IntPtr> pFilterByteLength,
          )>()(
        ptr.ref.lpVtbl,
        Producer,
        pFilter,
        pFilterByteLength,
      );

  void ClearStorageFilter(
    GUID Producer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            GUID Producer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            GUID Producer,
          )>()(
        ptr.ref.lpVtbl,
        Producer,
      );

  int PushEmptyStorageFilter(
    GUID Producer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID Producer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID Producer,
          )>()(
        ptr.ref.lpVtbl,
        Producer,
      );

  int PushDenyAllStorageFilter(
    GUID Producer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID Producer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID Producer,
          )>()(
        ptr.ref.lpVtbl,
        Producer,
      );

  int PushCopyOfStorageFilter(
    GUID Producer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID Producer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID Producer,
          )>()(
        ptr.ref.lpVtbl,
        Producer,
      );

  int PushStorageFilter(
    GUID Producer,
    Pointer<DXGI_INFO_QUEUE_FILTER> pFilter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID Producer,
            Pointer<DXGI_INFO_QUEUE_FILTER> pFilter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID Producer,
            Pointer<DXGI_INFO_QUEUE_FILTER> pFilter,
          )>()(
        ptr.ref.lpVtbl,
        Producer,
        pFilter,
      );

  void PopStorageFilter(
    GUID Producer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            GUID Producer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            GUID Producer,
          )>()(
        ptr.ref.lpVtbl,
        Producer,
      );

  int GetStorageFilterStackSize(
    GUID Producer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
            GUID Producer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID Producer,
          )>()(
        ptr.ref.lpVtbl,
        Producer,
      );

  int AddRetrievalFilterEntries(
    GUID Producer,
    Pointer<DXGI_INFO_QUEUE_FILTER> pFilter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID Producer,
            Pointer<DXGI_INFO_QUEUE_FILTER> pFilter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID Producer,
            Pointer<DXGI_INFO_QUEUE_FILTER> pFilter,
          )>()(
        ptr.ref.lpVtbl,
        Producer,
        pFilter,
      );

  int GetRetrievalFilter(
    GUID Producer,
    Pointer<DXGI_INFO_QUEUE_FILTER> pFilter,
    Pointer<IntPtr> pFilterByteLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID Producer,
            Pointer<DXGI_INFO_QUEUE_FILTER> pFilter,
            Pointer<IntPtr> pFilterByteLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID Producer,
            Pointer<DXGI_INFO_QUEUE_FILTER> pFilter,
            Pointer<IntPtr> pFilterByteLength,
          )>()(
        ptr.ref.lpVtbl,
        Producer,
        pFilter,
        pFilterByteLength,
      );

  void ClearRetrievalFilter(
    GUID Producer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            GUID Producer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            GUID Producer,
          )>()(
        ptr.ref.lpVtbl,
        Producer,
      );

  int PushEmptyRetrievalFilter(
    GUID Producer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID Producer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID Producer,
          )>()(
        ptr.ref.lpVtbl,
        Producer,
      );

  int PushDenyAllRetrievalFilter(
    GUID Producer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID Producer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID Producer,
          )>()(
        ptr.ref.lpVtbl,
        Producer,
      );

  int PushCopyOfRetrievalFilter(
    GUID Producer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID Producer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID Producer,
          )>()(
        ptr.ref.lpVtbl,
        Producer,
      );

  int PushRetrievalFilter(
    GUID Producer,
    Pointer<DXGI_INFO_QUEUE_FILTER> pFilter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID Producer,
            Pointer<DXGI_INFO_QUEUE_FILTER> pFilter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID Producer,
            Pointer<DXGI_INFO_QUEUE_FILTER> pFilter,
          )>()(
        ptr.ref.lpVtbl,
        Producer,
        pFilter,
      );

  void PopRetrievalFilter(
    GUID Producer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            GUID Producer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            GUID Producer,
          )>()(
        ptr.ref.lpVtbl,
        Producer,
      );

  int GetRetrievalFilterStackSize(
    GUID Producer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
            GUID Producer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID Producer,
          )>()(
        ptr.ref.lpVtbl,
        Producer,
      );

  int AddMessage(
    GUID Producer,
    int Category,
    int Severity,
    int ID,
    Pointer<Utf8> pDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID Producer,
            Int32 Category,
            Int32 Severity,
            Int32 ID,
            Pointer<Utf8> pDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID Producer,
            int Category,
            int Severity,
            int ID,
            Pointer<Utf8> pDescription,
          )>()(
        ptr.ref.lpVtbl,
        Producer,
        Category,
        Severity,
        ID,
        pDescription,
      );

  int AddApplicationMessage(
    int Severity,
    Pointer<Utf8> pDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Severity,
            Pointer<Utf8> pDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Severity,
            Pointer<Utf8> pDescription,
          )>()(
        ptr.ref.lpVtbl,
        Severity,
        pDescription,
      );

  int SetBreakOnCategory(
    GUID Producer,
    int Category,
    int bEnable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID Producer,
            Int32 Category,
            Int32 bEnable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID Producer,
            int Category,
            int bEnable,
          )>()(
        ptr.ref.lpVtbl,
        Producer,
        Category,
        bEnable,
      );

  int SetBreakOnSeverity(
    GUID Producer,
    int Severity,
    int bEnable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID Producer,
            Int32 Severity,
            Int32 bEnable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID Producer,
            int Severity,
            int bEnable,
          )>()(
        ptr.ref.lpVtbl,
        Producer,
        Severity,
        bEnable,
      );

  int SetBreakOnID(
    GUID Producer,
    int ID,
    int bEnable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID Producer,
            Int32 ID,
            Int32 bEnable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID Producer,
            int ID,
            int bEnable,
          )>()(
        ptr.ref.lpVtbl,
        Producer,
        ID,
        bEnable,
      );

  int GetBreakOnCategory(
    GUID Producer,
    int Category,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID Producer,
            Int32 Category,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID Producer,
            int Category,
          )>()(
        ptr.ref.lpVtbl,
        Producer,
        Category,
      );

  int GetBreakOnSeverity(
    GUID Producer,
    int Severity,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID Producer,
            Int32 Severity,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID Producer,
            int Severity,
          )>()(
        ptr.ref.lpVtbl,
        Producer,
        Severity,
      );

  int GetBreakOnID(
    GUID Producer,
    int ID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID Producer,
            Int32 ID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID Producer,
            int ID,
          )>()(
        ptr.ref.lpVtbl,
        Producer,
        ID,
      );

  void SetMuteDebugOutput(
    GUID Producer,
    int bMute,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            GUID Producer,
            Int32 bMute,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            GUID Producer,
            int bMute,
          )>()(
        ptr.ref.lpVtbl,
        Producer,
        bMute,
      );

  int GetMuteDebugOutput(
    GUID Producer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID Producer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID Producer,
          )>()(
        ptr.ref.lpVtbl,
        Producer,
      );
}
