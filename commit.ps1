echo "Adicionando arquivos..."
git add .
$message = Read-Host "Escreva a mensagem do commit: "

while([string]::IsNullOrWhiteSpace($message)) {
    echo "Insira uma mensagem!"
    $message = Read-Host "Escreva a mensagem do commit: "
}

git commit -m "$message"
echo "Subindo para o GitHub: "
git push
echo "Finalizado!"