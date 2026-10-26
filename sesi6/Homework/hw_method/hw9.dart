void main() {
  Set<String> hadir = {'Aulia', 'Erine'};

  hadir.add('Oline');
  hadir.add('Aulia');
  print(hadir);

  hadir.remove('Erine');
  print(hadir);

  print(hadir.contains('Erine'));
  print(hadir.length);
}