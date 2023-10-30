void main(List<String> args) {
  var numeros = [1, 2, 34, 55, 95, 101, 95];
  for (var i = 0; i < numeros.length; i++) {
    print(numeros[i]);
  }
  var cont = 0;
  for (var m in numeros) {
    cont = cont + 1;
    print("Numeros em ordem");
    print(m);
  }
  print(cont);

  var letras = ["a", "b", "c", "d"];
  letras.forEach((element) {
    print(element);
  });
}
