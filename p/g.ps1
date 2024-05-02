class character {
	[string]$name
	[int]$life
	[int]$luck
	[int]$atack
	[int]$def
	[int]$strengh
	[int]$hand1
	[int]$hand2	
}

#Cria function para escrever lentamente na tela
function TypeSlowly($text) {
    foreach ($char in $text.ToCharArray()) {
        Write-Host -NoNewline $char
        Start-Sleep -Milliseconds 90  # Ajuste o valor conforme desejado
    }
    Write-Host  # Adiciona uma quebra de linha no final
}

#cria persos
$player = [character]::new()
$skeleton = [character]::new()

#atribuindo valores
$player.name = "MC"
$player.life = 100
$player.luck = 20
$player.strengh = 20
$player.hand1 = 0
$player.hand2 = 0
$player.atack = $player.strengh + $player.hand1 + $player.hand2
$player.def = 15


$skeleton.name = "Skeleton"
$skeleton.life = "90"
$skeleton.luck = 40
$skeleton.atack = 15
$skeleton.def = 10

$player.name = read-host "Qual o nome do seu jogador?"

write-host "Olá, $($player.name), daremos inicio a sua jornada em breve!"
start-sleep -seconds 2

clear-host

write-host "Você acorda num lugar estranho, um skeleton está a sua frente, suas unicas armas são um graveto e uma barra de ferro que estão no chão, o que você faz?"

$player.hand = read-host "1 - Pegar o graveto 2 - Pegar a barra de ferro"

# Adiciona o atributo "atack" com base na escolha do jogador
if ($player.hand1 -eq 1) {
    $player.atack += 5  # Graveto aumenta o ataque em 5
} elseif ($player.hand1 -eq 2) {
    $player.atack += 10  # Barra de ferro aumenta o ataque em 10
}

# Exibe o novo valor do atributo "atack"
clear-host

TypeSlowly "Seu novo atributo de ataque é $($player.atack)."
