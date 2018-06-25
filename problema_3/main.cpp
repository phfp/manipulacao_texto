

#include <iostream>
#include <fstream>
#include <string>

using namespace std;

int main(){

	string palavra;
	int tamanho;

	ifstream in("in.txt");	

	in >> tamanho;

	int tamanho_disponivel = tamanho;

	ofstream out("out.txt", ios::trunc);

	in >> palavra;

	while (!in.eof()){

		if(tamanho_disponivel == tamanho)
		{
			out << palavra;
			tamanho_disponivel = tamanho_disponivel - palavra.size();
		}else if(palavra.size()+1 <= tamanho_disponivel && tamanho_disponivel>0){
			out << " " << palavra;
			tamanho_disponivel = (tamanho_disponivel-palavra.size())-1;
		}else{
			out << endl;
			tamanho_disponivel = tamanho;
			out << palavra;
			tamanho_disponivel = tamanho - palavra.size();
		}

		in >> palavra;
	}

   in.close();

	return 0;
}