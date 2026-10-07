import 'package:keypoints/features/editor/data/models/editor_file.dart';

class EditorState {
  final EditorFile? file;
  final bool isModified;
  final int zoom;
  final bool wordWrap;

  EditorState({
    this.file,
    this.isModified = false,
    this.zoom = 100,
    this.wordWrap = true,
  });

  EditorState copyWith({
    EditorFile? file,
    bool? isModified,
    int? zoom,
    bool? wordWrap,
  }) {
    return EditorState(
      file: file ?? this.file,
      isModified: isModified ?? this.isModified,
      zoom: zoom ?? this.zoom,
      wordWrap: wordWrap ?? this.wordWrap,
    );
  }
}
