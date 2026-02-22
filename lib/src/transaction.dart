import 'package:win32/win32.dart';

/// Represents a Windows Kernel Transaction Manager (KTM) transaction.
///
/// A transaction enables multiple registry or file operations to be performed
/// atomically.
///
/// Changes made within a transaction are not visible to the system until
/// [commit] is called.
///
/// If the transaction is closed without committing, all pending changes are
/// automatically **rolled back** by the operating system.
///
/// Instances must be explicitly [close]d to release native resources.
final class Transaction {
  /// Creates a new native transaction.
  ///
  /// Throws a [WindowsException] if the operation fails.
  factory Transaction() {
    final Win32Result(:value, :error) = CreateTransaction(
      null,
      null,
      null,
      null,
      null,
      null,
      null,
    );
    if (value == INVALID_HANDLE_VALUE) {
      throw WindowsException(error.toHRESULT());
    }
    return Transaction._(value);
  }

  Transaction._(this.handle);

  /// Native handle representing the transaction.
  ///
  /// This handle remains valid until [close] is called.
  final HANDLE handle;

  var _closed = false;

  /// Whether the transaction has been closed.
  bool get isClosed => _closed;

  /// Commits all operations performed within this transaction.
  ///
  /// After a successful commit, all associated changes become permanent and
  /// visible system-wide.
  ///
  /// Throws a [WindowsException] if the commit operation fails.
  void commit() {
    if (_closed) {
      throw StateError('Cannot commit a closed transaction.');
    }
    final Win32Result(:value, :error) = CommitTransaction(handle);
    if (!value) throw WindowsException(error.toHRESULT());
  }

  /// Closes the native transaction handle.
  ///
  /// If the transaction has not been committed, closing it causes Windows to
  /// automatically roll back all pending operations.
  void close() {
    if (_closed) throw StateError('Transaction is already closed.');
    handle.close();
    _closed = true;
  }
}
