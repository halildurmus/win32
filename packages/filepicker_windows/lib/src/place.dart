import 'windows_known_folder.dart';

/// Enum representing two possible places: [top] and [bottom].
enum Place {
  /// The top position.
  top,

  /// The bottom position.
  bottom,
}

/// A class that combines a [WindowsKnownFolder] with a [Place].
class CustomPlace {
  /// Creates a [CustomPlace] with the given [folder] and [place].
  const CustomPlace(this.folder, this.place);

  /// The known folder associated with this custom place.
  final WindowsKnownFolder folder;

  /// Where the item is located.
  final Place place;
}
