Terraform – это инструмент от компании Hashicorp, помогающий в парадигме Infrastructure as a Code управлять инфраструктрой. В данном случае не приходится вручную создавать инстансы, сети и т.д. в консоли нашего облачного провайдера.
	Достаточно написать конфигурацию, в которой будет изложено, как мы видим нашу будущую инфраструктуру. Такая конфигурация создается в человеко-читаемом текстовом формате. Если мы хотим изменить нашу инфраструктуру, то редактируем конфигурацию и запускаете terraform apply. Terraform направит вызовы API  к нашему облачному провайдеру, чтобы привести инфраструктуру в соответствие с конфигурацией, указанной в этом файле.
