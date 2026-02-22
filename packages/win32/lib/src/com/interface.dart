part of 'interface.g.dart';

/// Base interface for all COM types that participate in the companion system.
///
/// This abstraction enables **type-safe COM activation and casting** by
/// associating Dart interface types with metadata and construction logic at
/// runtime.
///
/// Each COM interface type is paired with a [ComCompanion], which provides:
/// - The interface IID
/// - A constructor that wraps a raw vtable pointer
///
/// Companions may be either:
/// - **Predefined** by the library (for built-in Win32 / COM interfaces)
/// - **Registered** by user code for custom or third-party interfaces
///
/// This system is used by functions such as:
/// - `createInstance<T>()`
/// - `CoCreateInstance<T>()`
/// - `CoGetClassObject<T>()`
///
/// {@category com}
abstract interface class ComInterface {
  /// User-registered companions, keyed by Dart interface type.
  ///
  /// Predefined companions are stored separately and cannot be overridden.
  static final _registeredCompanions = <Type, ComCompanion>{};

  /// Registers a [ComCompanion] for the COM interface type [T].
  ///
  /// This enables runtime construction and identification of [T].
  ///
  /// A companion may only be registered once per type. Attempting to override
  /// a predefined companion will result in a [StateError].
  ///
  /// Example:
  /// ```dart
  /// ComInterface.register<IExampleCom>(const IExampleComCompanion());
  /// ```
  static void register<T extends ComInterface>(ComCompanion<T> companion) {
    if (_predefinedCompanions.containsKey(T)) {
      throw StateError(
        'Cannot override the predefined companion for $T. '
        'Predefined companions are part of the core library.',
      );
    }
    _registeredCompanions[T] = companion;
  }

  /// Unregisters the companion associated with the COM interface type [T].
  ///
  /// This removes a previously registered companion. Predefined companions
  /// are immutable and cannot be removed.
  ///
  /// Example
  /// ```dart
  /// ComInterface.unregister<IExampleCom>();
  /// ```
  static void unregister<T extends ComInterface>() {
    if (_predefinedCompanions.containsKey(T)) {
      throw StateError(
        'Cannot unregister the predefined companion for $T. '
        'Predefined companions cannot be removed.',
      );
    }
    _registeredCompanions.remove(T);
  }

  /// Returns the [ComCompanion] associated with the COM interface type [T].
  ///
  /// This method resolves predefined companions first, then user-registered
  /// companions.
  ///
  /// Example
  /// ```dart
  /// final companion = ComInterface.type<IExampleCom>();
  /// ```
  @internal
  static ComCompanion<T> type<T extends ComInterface>() {
    final companion = _predefinedCompanions[T] ?? _registeredCompanions[T];
    if (companion == null) {
      throw StateError(
        'No companion found for $T. '
        'Ensure the interface has a predefined companion or register one '
        'before use.',
      );
    }
    return companion as ComCompanion<T>;
  }
}

/// Companion metadata for a specific COM interface type [T].
///
/// A [ComCompanion] describes how to:
/// - Construct a Dart interface wrapper from a raw COM vtable pointer
/// - Identify the interface via its IID
///
/// Each COM interface type must have **exactly one** companion.
///
/// Companions are typically declared as `const` and contain no mutable state.
///
/// {@category com}
abstract class ComCompanion<T extends ComInterface> {
  const ComCompanion();

  /// Constructs an instance of [T] from a raw COM vtable pointer.
  ///
  /// This function is responsible for wrapping the native pointer without
  /// altering its reference count.
  ///
  /// The caller controls lifetime management (e.g., `addRef`, `release`).
  T Function(VTablePointer ptr) get fromPointer;

  /// The interface identifier (IID) for [T].
  ///
  /// This value is used for `queryInterface`, activation, and type resolution.
  GUID get iid;
}
