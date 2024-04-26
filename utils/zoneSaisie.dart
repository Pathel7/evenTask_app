import 'dart:io';

String zoneSaisie(String label){
  stdout.write(label);
  return stdin.readLineSync().toString();
}

int zoneSaisieInt(String label){
  stdout.write(label);
  return stdin.readLineSync() as int;
}