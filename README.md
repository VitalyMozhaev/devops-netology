# devops-netology

Новая строка

Ещё одна строка



#.gitignore

Игнорируем (git не отслеживает изменения):

**/.terraform/* - вложенную директорию .terraform/

*.tfstate - лыбые файлы с расширением .tfstate, включая файл .tfstate

*.tfstate.* - лыбые файлы, содержащие в названии .tfstate.

crash.log - файл логов crash.log

*.tfvars - лыбые файлы с расширением .tfvars, включая файл .tfvars

override.tf - файл override.tf

override.tf.json - файл override.tf.json

*_override.tf - лыбые файлы, содержащие в конце названия _override и с разрешением .tf

*_override.tf.json - лыбые файлы, содержащие в конце названия _override.tf и с разрешением .json

.terraformrc - файл .terraformrc

terraform.rc - файл terraform.rc
