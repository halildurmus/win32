import 'dart:io';

class Document {
  String? _path;
  String? _contents;
  var _dirty = false;

  String get displayName =>
      _path == null ? 'Untitled' : File(_path!).uri.pathSegments.last;

  String? get path => _path;

  String? get contents => _contents;

  bool get hasText => _contents?.isNotEmpty ?? false;

  bool get isDirty => _dirty;

  void markClean() => _dirty = false;

  void markDirty() => _dirty = true;

  void reset() {
    _path = null;
    _contents = null;
    _dirty = false;
  }

  String load(String path) {
    final contents = File(path).readAsStringSync();
    _contents = contents;
    _path = path;
    _dirty = false;
    return contents;
  }

  void save(String contents) {
    if (_path == null) throw StateError('No file path');
    File(_path!).writeAsStringSync(contents);
    _dirty = false;
  }

  void saveAs(String path, String contents) {
    _path = path;
    save(contents);
  }
}
