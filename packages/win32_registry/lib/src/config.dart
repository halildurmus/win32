import 'access.dart';
import 'options.dart';
import 'transaction.dart';

/// Configuration used when opening or creating a registry key.
///
/// This object centralizes all parameters required for a registry open
/// operation and makes call sites clearer and easier to extend in the future.
///
/// Instances are immutable and can be modified using [copyWith].
final class RegistryOpenConfig {
  /// Creates a configuration for opening or creating a registry key.
  const RegistryOpenConfig({
    this.access = .read,
    this.create = false,
    this.options = .nonVolatile,
    this.transaction,
  });

  /// Access rights requested for the key.
  ///
  /// Defaults to read-only access.
  final RegistryAccess access;

  /// Whether the key should be created if it does not exist.
  ///
  /// If `false`, the operation fails when the key is missing.
  final bool create;

  /// Additional open or creation options.
  ///
  /// Defaults to [RegistryOpenOptions.nonVolatile].
  final RegistryOpenOptions options;

  /// Optional transaction used for transactional registry operations.
  ///
  /// When provided, the open/create operation participates in the specified
  /// transaction.
  final Transaction? transaction;

  /// Returns a copy of this configuration with the specified fields replaced.
  RegistryOpenConfig copyWith({
    RegistryAccess? access,
    bool? create,
    RegistryOpenOptions? options,
    Transaction? transaction,
  }) => RegistryOpenConfig(
    access: access ?? this.access,
    create: create ?? this.create,
    options: options ?? this.options,
    transaction: transaction ?? this.transaction,
  );
}
