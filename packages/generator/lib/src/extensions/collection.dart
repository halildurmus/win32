extension IterableExtension<E> on Iterable<E> {
  /// A utility method to iterate with an index.
  Iterable<T> mapIndexed<T>(T Function(int index, E element) transform) {
    var index = 0;
    return map((element) => transform(index++, element));
  }

  /// Returns the fixed-length [List] with elements of this [Iterable].
  List<E> toFixedList() => toList(growable: false);
}
