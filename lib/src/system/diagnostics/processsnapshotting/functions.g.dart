// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../../combase.dart';
import '../../../guid.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/processsnapshotting/structs.g.dart'; // -----------------------------------------------------------------------

// kernel32.dll
// -----------------------------------------------------------------------
final _kernel32 = DynamicLibrary.open('kernel32.dll');

int PssCaptureSnapshot(
  int ProcessHandle,
  int CaptureFlags,
  int ThreadContextFlags,
  Pointer<IntPtr> SnapshotHandle,
) =>
    _PssCaptureSnapshot(
      ProcessHandle,
      CaptureFlags,
      ThreadContextFlags,
      SnapshotHandle,
    );

late final _PssCaptureSnapshot = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr ProcessHandle,
  Uint32 CaptureFlags,
  Uint32 ThreadContextFlags,
  Pointer<IntPtr> SnapshotHandle,
),
    int Function(
  int ProcessHandle,
  int CaptureFlags,
  int ThreadContextFlags,
  Pointer<IntPtr> SnapshotHandle,
)>('PssCaptureSnapshot');

int PssDuplicateSnapshot(
  int SourceProcessHandle,
  int SnapshotHandle,
  int TargetProcessHandle,
  Pointer<IntPtr> TargetSnapshotHandle,
  int Flags,
) =>
    _PssDuplicateSnapshot(
      SourceProcessHandle,
      SnapshotHandle,
      TargetProcessHandle,
      TargetSnapshotHandle,
      Flags,
    );

late final _PssDuplicateSnapshot = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr SourceProcessHandle,
  IntPtr SnapshotHandle,
  IntPtr TargetProcessHandle,
  Pointer<IntPtr> TargetSnapshotHandle,
  Uint32 Flags,
),
    int Function(
  int SourceProcessHandle,
  int SnapshotHandle,
  int TargetProcessHandle,
  Pointer<IntPtr> TargetSnapshotHandle,
  int Flags,
)>('PssDuplicateSnapshot');

int PssFreeSnapshot(
  int ProcessHandle,
  int SnapshotHandle,
) =>
    _PssFreeSnapshot(
      ProcessHandle,
      SnapshotHandle,
    );

late final _PssFreeSnapshot = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr ProcessHandle,
  IntPtr SnapshotHandle,
),
    int Function(
  int ProcessHandle,
  int SnapshotHandle,
)>('PssFreeSnapshot');

int PssQuerySnapshot(
  int SnapshotHandle,
  int InformationClass,
  Pointer Buffer,
  int BufferLength,
) =>
    _PssQuerySnapshot(
      SnapshotHandle,
      InformationClass,
      Buffer,
      BufferLength,
    );

late final _PssQuerySnapshot = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr SnapshotHandle,
  Int32 InformationClass,
  Pointer Buffer,
  Uint32 BufferLength,
),
    int Function(
  int SnapshotHandle,
  int InformationClass,
  Pointer Buffer,
  int BufferLength,
)>('PssQuerySnapshot');

int PssWalkMarkerCreate(
  Pointer<PSS_ALLOCATOR> Allocator,
  Pointer<IntPtr> WalkMarkerHandle,
) =>
    _PssWalkMarkerCreate(
      Allocator,
      WalkMarkerHandle,
    );

late final _PssWalkMarkerCreate = _kernel32.lookupFunction<
    Uint32 Function(
  Pointer<PSS_ALLOCATOR> Allocator,
  Pointer<IntPtr> WalkMarkerHandle,
),
    int Function(
  Pointer<PSS_ALLOCATOR> Allocator,
  Pointer<IntPtr> WalkMarkerHandle,
)>('PssWalkMarkerCreate');

int PssWalkMarkerFree(
  int WalkMarkerHandle,
) =>
    _PssWalkMarkerFree(
      WalkMarkerHandle,
    );

late final _PssWalkMarkerFree = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr WalkMarkerHandle,
),
    int Function(
  int WalkMarkerHandle,
)>('PssWalkMarkerFree');

int PssWalkMarkerGetPosition(
  int WalkMarkerHandle,
  Pointer<IntPtr> Position,
) =>
    _PssWalkMarkerGetPosition(
      WalkMarkerHandle,
      Position,
    );

late final _PssWalkMarkerGetPosition = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr WalkMarkerHandle,
  Pointer<IntPtr> Position,
),
    int Function(
  int WalkMarkerHandle,
  Pointer<IntPtr> Position,
)>('PssWalkMarkerGetPosition');

int PssWalkMarkerSeekToBeginning(
  int WalkMarkerHandle,
) =>
    _PssWalkMarkerSeekToBeginning(
      WalkMarkerHandle,
    );

late final _PssWalkMarkerSeekToBeginning = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr WalkMarkerHandle,
),
    int Function(
  int WalkMarkerHandle,
)>('PssWalkMarkerSeekToBeginning');

int PssWalkMarkerSetPosition(
  int WalkMarkerHandle,
  int Position,
) =>
    _PssWalkMarkerSetPosition(
      WalkMarkerHandle,
      Position,
    );

late final _PssWalkMarkerSetPosition = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr WalkMarkerHandle,
  IntPtr Position,
),
    int Function(
  int WalkMarkerHandle,
  int Position,
)>('PssWalkMarkerSetPosition');

int PssWalkSnapshot(
  int SnapshotHandle,
  int InformationClass,
  int WalkMarkerHandle,
  Pointer Buffer,
  int BufferLength,
) =>
    _PssWalkSnapshot(
      SnapshotHandle,
      InformationClass,
      WalkMarkerHandle,
      Buffer,
      BufferLength,
    );

late final _PssWalkSnapshot = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr SnapshotHandle,
  Int32 InformationClass,
  IntPtr WalkMarkerHandle,
  Pointer Buffer,
  Uint32 BufferLength,
),
    int Function(
  int SnapshotHandle,
  int InformationClass,
  int WalkMarkerHandle,
  Pointer Buffer,
  int BufferLength,
)>('PssWalkSnapshot');
