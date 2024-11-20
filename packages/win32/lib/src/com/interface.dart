part of 'interface.g.dart';

/// A base class that provides a way to create COM objects in a type-safe manner
/// by registering companions.
///
/// Each companion contains the logic to instantiate the COM object and retrieve
/// metadata, like its IID. You can use this system with functions like
/// `createInstance`, `CoCreateInstance`, `CoGetClassObject` or similar.
///
/// {@category com}
abstract interface class ComInterface {
  /// Stores registered companions for runtime use.
  static final _registeredCompanions = <Type, ComCompanion>{};

  /// Registers a companion for the specified COM object type [T].
  ///
  /// A companion defines how to instantiate the object and provides its IID.
  /// If a predefined companion already exists for [T], this method will throw
  /// an error.
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

  /// Unregisters the companion for the specified COM object type [T].
  ///
  /// This removes a previously registered companion. If [T] has a predefined
  /// companion, this method will throw an error.
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

  /// Gets the companion for the specified COM object type [T].
  ///
  /// If no companion is found, this method will throw an error.
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
        'No companion found for $T. Make sure to register one before using it.',
      );
    }
    return companion as ComCompanion<T>;
  }
}

/// A companion class for a specific COM object type.
///
/// A companion acts as a helper for creating instances of a COM object and
/// retrieving its IID. You should extend this class to define companions for
/// your own COM types.
///
/// {@category com}
abstract class ComCompanion<T extends ComInterface> {
  const ComCompanion();

  /// The constructor for the COM object type [T].
  ///
  /// You must implement this getter to return the correct constructor function
  /// for the COM object.
  T Function(VTablePointer ptr) get fromPointer;

  /// The IID (Interface ID) of the COM object type [T].
  ///
  /// You must implement this getter to return the correct IID for the COM
  /// object.
  Guid get iid;
}
