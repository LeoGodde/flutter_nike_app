extension StringExtension on String {
  String toCapitalize() {
    if (trim().isEmpty) return ''; //inserir string vazia para quebrar
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }

  String toTitleCase() {
    if (trim().isEmpty) return ''; //inserir string vazia para quebrar
    return split(' ').map((e) => "${e[0].toUpperCase()}${e.substring(1).toLowerCase()}").join(" ");
  }
}
