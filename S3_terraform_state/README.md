# **State файлы**
Terraform хранит информацию об управляемых ресурсах в файле **terraform.tfstate**
Файл terraform.tfstate обновляется при каждом запуске apply или refresh
Файл **terraform.tfstate.backup** используется для бекапа предыдущего terraform.state
По умолчанию сохраняются локально в папке с конфигурацией

Удаление **terraform.tfstate** приводит к тому, что terraform перестает управлять  инфраструктурой, которая была создана.
