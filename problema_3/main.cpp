

#include <iostream>
#include <fstream>
#include <string>

using namespace std;

int main(){
	
	int x;

	string palavra;
	int tamanho;

	ifstream in("in.txt");	

	in >> tamanho;

	int tamanho_disponivel = tamanho;

	ofstream out("out.txt", ios::trunc);

	in >> palavra;
	out << palavra << " ";
	tamanho_disponivel -= palavra.size();

	while (!in.eof()){

		in >> palavra;

		if(palavra.size() <= tamanho_disponivel){

			if(palavra.size()==tamanho_disponivel){
				out << palavra;
				//out << endl;
				tamanho_disponivel = tamanho;
			}else{
				out << palavra << " ";
				tamanho_disponivel = tamanho_disponivel - palavra.size();
				tamanho_disponivel--;
			}

		}else if(palavra.size() > tamanho_disponivel){
			if(palavra.size()>=tamanho){
				out << endl;
				out << palavra;
				out << endl;
				tamanho_disponivel = tamanho;
			}else{
				out << endl;
				out << palavra << " ";
				tamanho_disponivel = tamanho - palavra.size();
			}
		}
	}

   in.close();

	return 0;
}