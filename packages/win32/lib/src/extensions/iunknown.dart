import '../com/iunknown.g.dart';
import '../exception.dart';

/// Extension on [IUnknown] to provide utility methods for working with COM
/// objects.
extension IUnknownExtension on IUnknown {
  /// Casts this COM object to the specified interface type [T].
  ///
  /// This method uses the [queryInterface] function to obtain a reference to
  /// the desired interface, represented by the generic type parameter [T].
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  ///
  /// Example:
  /// ```dart
  /// final fileDialog = createInstance<IFileDialog>(FileOpenDialog);
  /// final fileDialog2 = fileDialog.cast<IFileDialog2>();
  /// ```
  ///
  /// If [releaseOriginal] is set to `true`, the original instance is _released_
  /// by calling the [release] method before returning the new interface.
  ///
  /// Returns a new instance of [T], representing the desired interface type.
  T cast<T extends IUnknown>({bool releaseOriginal = false}) {
    final result = queryInterface<T>();
    if (releaseOriginal) release();
    return result;
  }
}
