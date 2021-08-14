class MemoryLiberator<T>{
  final T Function() allocMemory;
  final Function(T) _free;

  MemoryLiberator({required this.allocMemory, required Function(T) free})
      : _free = free;

  T? _val;

  T get pValue {
    if (_val == null) {
      _val = allocMemory();
    }
    return _val!;
  }

  void free() {
    if (_val == null) {
      return;
    }
    _free(_val!);
    _val = null;
  }
}
