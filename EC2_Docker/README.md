## **Запуск**

Экспортируем в терминал настройки доступа для пользователя AWS.

**export AWS_ACCESS_KEY_ID=(your access key id)**

**export AWS_SECRET_ACCESS_KEY=(your secret access key)**

В файле **variable.tf** необходимо изменить значения:

**instance_type** – выбрать необходимый тип сервера.
**public_key_path** – указать путь к файлу с public key, который ранее необходимо создать локально.

**main_tags** – Заполнить поля для динамических тагов.

Запускаем команды из папки с проектом.

**Terraform init**

**Terraform plan**

**Terraform apply**