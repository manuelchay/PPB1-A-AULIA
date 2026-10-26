void main() {
  String nama = "  Catherina Vallencia  ";
  String rapi = nama.trim();

  print("[$nama]");
  print("[$rapi]");
  print(rapi.toUpperCase());
  print(rapi.toLowerCase());
  print(rapi.contains("Vallencia"));
  print(rapi.isNotEmpty);
  print(rapi.isEmpty);
}