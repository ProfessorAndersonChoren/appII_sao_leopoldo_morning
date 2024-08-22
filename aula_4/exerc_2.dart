void main() {
  const List<double> notes = [7, 5, 9];
  const List<int> weight = [1, 2, 1];
  double accNotes = 0;
  int accWeight = weight.reduce((acc,num)=>acc + num);

  for (int i = 0; i < notes.length; i++) {
    accNotes += notes[i] * weight[i];
    // accWeight += weight[i];
  }

  // Mostrar a média
  double avg = accNotes / accWeight;
  print('Média ponderada: $avg');
}
