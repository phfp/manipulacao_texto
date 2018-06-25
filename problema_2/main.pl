my %genero = (
    "João"  => "aluno",
    "Maria" => "aluna",
    "José"  => "aluno",
);

for my $aluno (keys %genero) {

	if($genero{$aluno} =~ "aluno"){
		print "$aluno é um $genero{$aluno}\n";
		}else{
			print "$aluno é uma $genero{$aluno}\n";
		}
}