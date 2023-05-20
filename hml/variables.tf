#RDS variables
variable "instance_class" {
  type    = string
  default = "db.t3.micro"
}

variable "rds_identifier" {
  type    = string
  default = "hml"
}

variable "rds_storage" {
  type    = number
  default = 20
}

variable "security_group" {
  type    = list(any)
  default = ["sg-id", "sg-id"]
}

variable "availability_zone" {
  type    = string
  default = "us-east-1b"
}