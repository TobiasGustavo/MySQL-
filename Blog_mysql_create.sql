CREATE TABLE `Blog` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`tela_inicial` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Publicações` (
	`id` bigint NOT NULL,
	`Titulo` varchar(255) NOT NULL,
	`Texto` varchar(255) NOT NULL,
	`calendario` varchar(255) NOT NULL,
	`Blog` bigint NOT NULL,
	`Usuarios_id` bigint NOT NULL
);

CREATE TABLE `Usuarios` (
	`id` bigint NOT NULL,
	`nome` varchar(255) NOT NULL,
	`email` varchar(255) NOT NULL,
	`mensagem` varchar(255) NOT NULL
);

ALTER TABLE `Publicações` ADD CONSTRAINT `Publicações_fk0` FOREIGN KEY (`Blog`) REFERENCES `Blog`(`id`);

ALTER TABLE `Publicações` ADD CONSTRAINT `Publicações_fk1` FOREIGN KEY (`Usuarios_id`) REFERENCES `Usuarios`(`id`);
