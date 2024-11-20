import 'dart:async';
import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart' show calloc, malloc;

import 'allocation.dart';
import 'bindings.dart';
import 'emitter.dart';
import 'exception.dart';
import 'filter.dart';
import 'utils.dart';

part 'allocator.dart';

final class LeakTracker {
  /// Controls whether leak tracking is globally enabled.
  ///
  /// This flag acts as the fallback state when no scoped override exists.
  static var _enabled = false;

  /// Global filter applied to all allocations unless overridden by a scoped
  /// execution zone.
  ///
  /// This allows suppressing known or intentionally retained allocations.
  static var globalFilter = const LeakFilter.ignoreNone();

  /// Adds [filter] to the global filter using logical OR composition.
  ///
  /// The resulting filter ignores allocations matched by either the existing
  /// filter or the newly provided filter.
  static void addGlobalFilter(LeakFilter filter) =>
      globalFilter = globalFilter | filter;

  /// Clears the global filter, restoring default behavior.
  ///
  /// After calling this, no allocations are ignored globally.
  static void clearGlobalFilter() =>
      globalFilter = const LeakFilter.ignoreNone();

  /// Resolves the active filter for the current execution context.
  ///
  /// Scoped zones may override this value; otherwise the [globalFilter] is
  /// used.
  static LeakFilter get _filter =>
      Zone.current[#_filter] as LeakFilter? ?? globalFilter;

  /// Fallback allocation registry used when no scoped zone is active.
  ///
  /// Keys are allocation addresses.
  static final _globalRegistry = <int, Allocation>{};

  /// Returns the allocation registry associated with the current zone.
  ///
  /// If no zone-local registry exists, the global registry is used.
  @pragma('vm:prefer-inline')
  static Map<int, Allocation> get _registry =>
      Zone.current[#_registry] as Map<int, Allocation>? ?? _globalRegistry;

  /// Enables native memory leak tracking globally.
  ///
  /// When enabled, allocators ([adaptiveCalloc], [adaptiveMalloc],
  /// [diagnosticCalloc], [diagnosticMalloc]) record allocation metadata that
  /// can later be inspected or emitted.
  ///

  /// Enables tracking native memory allocations globally.
  ///
  /// Once enabled, all [TrackingAllocator] instances ([diagnosticCalloc],
  /// [diagnosticMalloc], and their adaptive counterparts in debug and profile
  /// builds) will register each allocation with the leak tracker.
  ///
  /// Recorded metadata includes the allocation address, size, type, timestamp,
  /// and call stack at the point of allocation.
  ///
  /// Has no effect if leak tracking is already enabled. Call [disable] to stop
  /// tracking.
  static void enable() => _enabled = true;

  /// Enables tracking native memory allocations only in debug and profile
  /// builds.
  static void enableInDebug() {
    if (!isReleaseMode) enable();
  }

  /// Disables native memory leak tracking globally.
  ///
  /// New allocations will not be tracked after this call. Existing tracked
  /// allocations remain registered until freed or reset.
  static void disable() => _enabled = false;

  /// Emits a leak report using the provided [emitter].
  ///
  /// Defaults to console output. This does not clear the registry.
  static void emit({LeaksEmitter emitter = const .print()}) =>
      emitter.emit(snapshot);

  /// Whether leak tracking is currently enabled.
  @pragma('vm:prefer-inline')
  static bool get enabled => Zone.current[#_enabled] as bool? ?? _enabled;

  /// Whether any tracked allocations currently exist.
  static bool get hasLeaks => _registry.isNotEmpty;

  /// Clears the current registry without freeing memory.
  ///
  /// This is intended strictly for testing or controlled diagnostic resets.
  /// Using this during normal execution may hide real leaks.
  static void reset() => _registry.clear();

  /// Runs [body] inside an isolated tracking scope.
  ///
  /// Allocations performed within this scope:
  /// - are tracked independently from outer scopes
  /// - use their own registry
  /// - may optionally use a custom [filter]
  ///
  /// This is particularly useful for tests, benchmarks, or short-lived
  /// diagnostic sessions where isolation is required.
  static R runScoped<R>(R Function() body, {LeakFilter? filter}) {
    final registry = <int, Allocation>{};
    return runZoned(
      body,
      zoneValues: {#_enabled: true, #_filter: filter, #_registry: registry},
    );
  }

  /// Returns a snapshot of currently tracked allocations.
  ///
  /// The returned list is immutable and represents the registry state at the
  /// time of access.
  static List<Allocation> get snapshot {
    final registry = _registry;
    if (registry.isEmpty) return const [];
    return .unmodifiable(registry.values);
  }

  /// Throws a [LeakTrackerException] if any leaks are currently tracked.
  ///
  /// This is typically used at validation boundaries such as test teardown.
  static void verifyNoLeaks() {
    final leaks = snapshot;
    if (leaks.isEmpty) return;
    throw LeakTrackerException(leaks: leaks, filter: _filter);
  }

  /// Equivalent to [verifyNoLeaks] but only active in debug and profile builds.
  static void verifyNoLeaksInDebug() {
    if (!isReleaseMode) verifyNoLeaks();
  }

  /// Registers a newly allocated block.
  ///
  /// Allocations are ignored if:
  /// - tracking is disabled
  /// - the pointer address is zero
  /// - the active filter suppresses the allocation
  static void _registerAllocation(Allocation allocation) {
    assert(enabled, 'Leak tracking must be enabled to register allocations.');
    final address = allocation.address;
    if (address == 0) return;
    if (_filter.ignore(allocation)) return;
    _registry[address] = allocation;
  }

  /// Removes an allocation from tracking.
  ///
  /// This is called when memory is freed.
  static void _unregisterAllocation(Pointer ptr) {
    assert(enabled, 'Leak tracking must be enabled to unregister allocations.');
    final address = ptr.address;
    if (address == 0) return;
    _registry.remove(address);
  }
}
