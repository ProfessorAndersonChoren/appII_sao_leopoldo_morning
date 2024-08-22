void main() {
  const List<String> contacts = [
    "Janaína",
    "Paulo",
    "Maria",
    "Beatriz",
    "Ana Maria",
    "Behur",
    "Maria Clara"
  ];
  const String search_name = "maria";

  // Filtrar nomes - Manual
  List<String> filtered = [];
  for (int i = 0; i < contacts.length; i++) {
    if (contacts[i].toLowerCase().contains(search_name.toLowerCase())) {
      filtered.add(contacts[i]);
    }
  }
  print(filtered);

  // Filtrar nomes - Automático / Simplificado
  List<String> new_filtered =
      contacts.where((name) => name.toLowerCase().contains(search_name.toLowerCase())).toList();
  new_filtered.sort();
  print(new_filtered);
}
