import 'dart:io';

void main(){
print( '--- Seleção de Desenvolvedor de Software - Escribo ---\n' ); 

print('INFORME UM NÚMERO INTEIRO:');
var input = stdin.readLineSync();
int num = int.parse(input);
  dividendo(num);
  
}

dividendo(int num){
  if(num<=0){
	print('VALOR INVÁLIDO!');
} else {
var lista = [];
for(int i =3; i<num; i++){
    if(i % 3 == 0 || i % 5 == 0  ){
	lista.add(i);
	
				  }
}
print(lista);
var soma = lista.reduce((total, valor)=>
total+valor
);
print(soma);
}
  
}