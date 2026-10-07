import 'package:path/path.dart' as p;

class EditorFile {
  final String filePath;

  EditorFile({required this.filePath});

  String get fileName => p.basename(filePath);

  EditorFile copyWith({String? filePath}) {
    return EditorFile(filePath: filePath ?? this.filePath);
  }
}
