final String tableNotes = 'notes';

class NoteFields {
  static final List<String> values = [
    /// add all fields
    id,isImportant,number,title,description,time
  ];
  static final String id = '_id';
  static final String isImportant = 'isImportant';
  static final String number = 'number';
  static final String title = 'title';
  static final String description = 'description';
  static final String time = 'time';
}

class Note {
  final int? id;
  final bool isImportant;
  final int number;
  final String title;
  final String description;
  final DateTime createdTime;
  Note({
    this.id,
    required this.isImportant,
    required this.number,
    required this.title,
    required this.description,
    required this.createdTime,
  });

  static Note fromJson(Map<String, Object?> json) => Note(
    id: json[NoteFields.id] as int?,
    number: json[NoteFields.number] as int,
    title: json[NoteFields.title] as String,
    description: json[NoteFields.description] as String,
    isImportant: json[NoteFields.isImportant]== 1,
    createdTime: DateTime.parse(json[NoteFields.time] as String),
  );

  Map<String, Object?> toJson() => {
    NoteFields.id: id,
    NoteFields.title: title,
    NoteFields.number: number,
    NoteFields.description: description,
    NoteFields.isImportant: isImportant ? 1 : 0,
    NoteFields.time: createdTime.toIso8601String(),
  };
  Note copy({
    int? id,
    bool? isImportant,
    int? number,
    String? title,
    String? description,
    DateTime? createdTime,
  }) => Note(
      id: id ?? this.id,
      isImportant: isImportant ?? this.isImportant,
      number: number ?? this.number,
      description: description ?? this.description,
      title: title ?? this.title,
     createdTime: createdTime ?? this.createdTime,
  );
}
