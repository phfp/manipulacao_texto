@texto_base;
@texto_adaptado;
$genero;

@texto_base[0] = "Na hipótese de infração às obrigações previstas neste Contrato, &o_a Locatári&o_a ficará sujeit&o_a ao pagamento de cláusula penal não-compensatória equivalente ao valor de 3 (três) aluguéis vigentes à época da infração, sem prejuízo de eventuais perdas e danos devidos ao Locador.";

@texto_base[1] = "Será, ainda, aplicada multa &ao_a Locatári&o_a, caso este infrinja a obrigação de devolver as chaves do Imóvel ao Locador na data do término deste Contrato.
Na hipótese de &o_a Locatári&o_a resilir este Contrato antes do término do prazo fixado com o Locador, este poderá exigir daquele o pagamento de cláusula penal compensatória equivalente ao valor de 3 (três) aluguéis vigentes à época da resilição, calculada proporcionalmente ao prazo restante deste Contrato, conforme o art. 4º da Lei n. 8.245/1991.";

@texto_base[2] = "No caso de mora &do_da Locatári&o_a no pagamento de quaisquer obrigações e/ou penalidades previstas neste Contrato, ser-lhe-ão aplicados os encargos moratórios previstos na Cláusula 3.6.";

@texto_adaptado = @texto_base;

print "Genero Feminino ou Masculino [f/m]? ";
$genero = <>;



if($genero =~'f'){
	for($i=0; $i<3; $i++){

		while(@texto_adaptado[$i] =~ /&o_a/){
			@texto_adaptado[$i] =~ s /&o_a/a/;
		}
		while(@texto_adaptado[$i] =~ /&do_da/){
			@texto_adaptado[$i] =~ s /&do_da/da/;
		}
		while(@texto_adaptado[$i] =~ /&ao_a/){
			@texto_adaptado[$i] =~ s /&ao_a/à/;
		}
	}
}
elsif($genero =~ 'm'){
	for($i=0; $i<3; $i++){

		while(@texto_adaptado[$i] =~ /&o_a/){
			@texto_adaptado[$i] =~ s /&o_a/o/;
		}
		while(@texto_adaptado[$i] =~ /&do_da/){
			@texto_adaptado[$i] =~ s /&do_da/do/;
		}
		while(@texto_adaptado[$i] =~ /&ao_a/){
			@texto_adaptado[$i] =~ s /&ao_a/ao/;
		}
	}
}


for($i=0; $i<3; $i++){
	print "@texto_adaptado[$i]\n";
}

