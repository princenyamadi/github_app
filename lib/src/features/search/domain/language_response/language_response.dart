class LanguageReponse {
  String language;
  int linesOfCode;

  LanguageReponse({required this.language, required this.linesOfCode});

  factory LanguageReponse.fromJson(Map<String, dynamic> json) {
    return LanguageReponse(
        language: json.keys.first, linesOfCode: json.values.first);
  }
}
