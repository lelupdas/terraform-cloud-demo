variable "instance_type" {
  description = "EC2 type"
  type        = string
  default     = "t2.micro"
}

variable "myami" {
  type = map(string)
  default = {
    us-east-1  = "ami-09d56f8956ab235b3"
    ap-south-1 = "ami-0a3277ffce9146b74"
  }
}

variable "hostname" {
  type    = list(any)
  default = ["hr", "mkt", "it"]
}