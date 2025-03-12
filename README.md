# ComandoCommit
## 1 - Caso não tenha, crie um diretório script
```bash
New-Item -ItemType Directory -Path C:\scripts
```
---
## 2 - Adicione o Caminho ao PATH
```
$env:Path += ";C:\scripts"
```
---
## 3 - Adicione um atalho no VSCode
  1 - Abra o Command Palette (Ctrl+Shift+P).

  2 - Digite "Tasks: Configure Task" e selecione "Create tasks.json file from template".

  3 - Escolha "Others".

  4 - Adicione uma nova tarefa no arquivo tasks.json
  ```bash
  {
    "version": "2.0.0",
    "tasks": [
        {
            "label": "Run Commit Script",
            "type": "shell",
            "command": "powershell",
            "args": ["-File", "C:\\scripts\\Commit.ps1"],
            "group": {
                "kind": "build",
                "isDefault": true
            }
        }
    ]
}
```
## 5 - Execute
Agora, você pode executar a tarefa diretamente do Command Palette ***(Ctrl+Shift+P)*** digitando ***"Tasks: Run Build Task"*** ou usando o atalho ***Ctrl+Shift+B***.
