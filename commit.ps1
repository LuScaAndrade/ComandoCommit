echo "Arquivos"
git status
$confirmation = Read-Host "Deseja continuar? (y/n)"

if($confirmation -eq 'y') {
    echo "Adicionando arquivos..."
    git add .
    $message = Read-Host "Escreva a mensagem do commit"

    if([string]::IsNullOrWhiteSpace($message)) {
        while([string]::IsNullOrWhiteSpace($message)) {
            echo "Insira uma mensagem!"
            $message = Read-Host "Escreva a mensagem do commit: "
        }
    }

    git commit -m "$message"
    echo "Subindo para o GitHub: "
    git push
    echo "Finalizado!"
} else {
    echo "Finalizado!"
}