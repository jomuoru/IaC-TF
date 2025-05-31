# variables.tf
# Región de AWS donde desplegar la infraestructura (por defecto us-east-1)

variable "aws_region" {
description = "Región de AWS donde se desplegarán los recursos"
type = string
default = "us-east-1"
}

# Prefijo para nombres de recursos (por ejemplo, usar tus iniciales o proyecto)
variable "project_name" {
description = "Prefijo identificador para nombres de recursos en AWS"
type = string
default = "tfASO"
}

# VPC CIDR principal
variable "vpc_cidr" {
description = "Bloque CIDR para la VPC"
type = string
default = "10.0.0.0/16"
}

# Subredes públicas (lista de CIDR, una por zona de disponibilidad)
variable "public_subnets_cidrs" {
description = "Lista de bloques CIDR para subredes públicas"
type = list(string)
default = ["10.0.1.0/24", "10.0.2.0/24"]
}

# Nombre de par de claves SSH existente (opcional, si se desea acceso SSH a instancia)
variable "key_name" {
description = "Nombre de la key pair de EC2 para SSH"
type = string
default = "" # dejar vacío si no se usará SSH manual
}

# Tipo de instancia EC2 para los servidores web
variable "instance_type" {
description = "Tipo de instancia EC2 para los servidores web"
type = string
default = "t3.micro"
}

