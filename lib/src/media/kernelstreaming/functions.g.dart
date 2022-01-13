// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../combase.dart';
import '../../guid.dart';
import '../../foundation/structs.g.dart';
import '../../media/kernelstreaming/structs.g.dart'; // -----------------------------------------------------------------------

// ksuser.dll
// -----------------------------------------------------------------------
final _ksuser = DynamicLibrary.open('ksuser.dll');

int KsCreateAllocator(
  int ConnectionHandle,
  Pointer<KSALLOCATOR_FRAMING> AllocatorFraming,
  Pointer<IntPtr> AllocatorHandle,
) =>
    _KsCreateAllocator(
      ConnectionHandle,
      AllocatorFraming,
      AllocatorHandle,
    );

late final _KsCreateAllocator = _ksuser.lookupFunction<
    Uint32 Function(
  IntPtr ConnectionHandle,
  Pointer<KSALLOCATOR_FRAMING> AllocatorFraming,
  Pointer<IntPtr> AllocatorHandle,
),
    int Function(
  int ConnectionHandle,
  Pointer<KSALLOCATOR_FRAMING> AllocatorFraming,
  Pointer<IntPtr> AllocatorHandle,
)>('KsCreateAllocator');

int KsCreateAllocator2(
  int ConnectionHandle,
  Pointer<KSALLOCATOR_FRAMING> AllocatorFraming,
  Pointer<IntPtr> AllocatorHandle,
) =>
    _KsCreateAllocator2(
      ConnectionHandle,
      AllocatorFraming,
      AllocatorHandle,
    );

late final _KsCreateAllocator2 = _ksuser.lookupFunction<
    Int32 Function(
  IntPtr ConnectionHandle,
  Pointer<KSALLOCATOR_FRAMING> AllocatorFraming,
  Pointer<IntPtr> AllocatorHandle,
),
    int Function(
  int ConnectionHandle,
  Pointer<KSALLOCATOR_FRAMING> AllocatorFraming,
  Pointer<IntPtr> AllocatorHandle,
)>('KsCreateAllocator2');

int KsCreateClock(
  int ConnectionHandle,
  Pointer<KSCLOCK_CREATE> ClockCreate,
  Pointer<IntPtr> ClockHandle,
) =>
    _KsCreateClock(
      ConnectionHandle,
      ClockCreate,
      ClockHandle,
    );

late final _KsCreateClock = _ksuser.lookupFunction<
    Uint32 Function(
  IntPtr ConnectionHandle,
  Pointer<KSCLOCK_CREATE> ClockCreate,
  Pointer<IntPtr> ClockHandle,
),
    int Function(
  int ConnectionHandle,
  Pointer<KSCLOCK_CREATE> ClockCreate,
  Pointer<IntPtr> ClockHandle,
)>('KsCreateClock');

int KsCreateClock2(
  int ConnectionHandle,
  Pointer<KSCLOCK_CREATE> ClockCreate,
  Pointer<IntPtr> ClockHandle,
) =>
    _KsCreateClock2(
      ConnectionHandle,
      ClockCreate,
      ClockHandle,
    );

late final _KsCreateClock2 = _ksuser.lookupFunction<
    Int32 Function(
  IntPtr ConnectionHandle,
  Pointer<KSCLOCK_CREATE> ClockCreate,
  Pointer<IntPtr> ClockHandle,
),
    int Function(
  int ConnectionHandle,
  Pointer<KSCLOCK_CREATE> ClockCreate,
  Pointer<IntPtr> ClockHandle,
)>('KsCreateClock2');

int KsCreatePin(
  int FilterHandle,
  Pointer<KSPIN_CONNECT> Connect,
  int DesiredAccess,
  Pointer<IntPtr> ConnectionHandle,
) =>
    _KsCreatePin(
      FilterHandle,
      Connect,
      DesiredAccess,
      ConnectionHandle,
    );

late final _KsCreatePin = _ksuser.lookupFunction<
    Uint32 Function(
  IntPtr FilterHandle,
  Pointer<KSPIN_CONNECT> Connect,
  Uint32 DesiredAccess,
  Pointer<IntPtr> ConnectionHandle,
),
    int Function(
  int FilterHandle,
  Pointer<KSPIN_CONNECT> Connect,
  int DesiredAccess,
  Pointer<IntPtr> ConnectionHandle,
)>('KsCreatePin');

int KsCreatePin2(
  int FilterHandle,
  Pointer<KSPIN_CONNECT> Connect,
  int DesiredAccess,
  Pointer<IntPtr> ConnectionHandle,
) =>
    _KsCreatePin2(
      FilterHandle,
      Connect,
      DesiredAccess,
      ConnectionHandle,
    );

late final _KsCreatePin2 = _ksuser.lookupFunction<
    Int32 Function(
  IntPtr FilterHandle,
  Pointer<KSPIN_CONNECT> Connect,
  Uint32 DesiredAccess,
  Pointer<IntPtr> ConnectionHandle,
),
    int Function(
  int FilterHandle,
  Pointer<KSPIN_CONNECT> Connect,
  int DesiredAccess,
  Pointer<IntPtr> ConnectionHandle,
)>('KsCreatePin2');

int KsCreateTopologyNode(
  int ParentHandle,
  Pointer<KSNODE_CREATE> NodeCreate,
  int DesiredAccess,
  Pointer<IntPtr> NodeHandle,
) =>
    _KsCreateTopologyNode(
      ParentHandle,
      NodeCreate,
      DesiredAccess,
      NodeHandle,
    );

late final _KsCreateTopologyNode = _ksuser.lookupFunction<
    Uint32 Function(
  IntPtr ParentHandle,
  Pointer<KSNODE_CREATE> NodeCreate,
  Uint32 DesiredAccess,
  Pointer<IntPtr> NodeHandle,
),
    int Function(
  int ParentHandle,
  Pointer<KSNODE_CREATE> NodeCreate,
  int DesiredAccess,
  Pointer<IntPtr> NodeHandle,
)>('KsCreateTopologyNode');

int KsCreateTopologyNode2(
  int ParentHandle,
  Pointer<KSNODE_CREATE> NodeCreate,
  int DesiredAccess,
  Pointer<IntPtr> NodeHandle,
) =>
    _KsCreateTopologyNode2(
      ParentHandle,
      NodeCreate,
      DesiredAccess,
      NodeHandle,
    );

late final _KsCreateTopologyNode2 = _ksuser.lookupFunction<
    Int32 Function(
  IntPtr ParentHandle,
  Pointer<KSNODE_CREATE> NodeCreate,
  Uint32 DesiredAccess,
  Pointer<IntPtr> NodeHandle,
),
    int Function(
  int ParentHandle,
  Pointer<KSNODE_CREATE> NodeCreate,
  int DesiredAccess,
  Pointer<IntPtr> NodeHandle,
)>('KsCreateTopologyNode2');
