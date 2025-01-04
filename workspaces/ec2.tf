resource "aws_instance" "instance_terraform" {
    ami                     = "ami-09c813fb71547fc4f"
    instance_type           = lookup(var.instance_type, terraform.workspace)
    vpc_security_group_ids  = ["sg-0a1404c2947084704"]
    tags = {
        Name = "Terraform-${terraform.workspace}"
    }
}

# resource "aws_security_group" "my_sg" {
#     name = "allow_ssh"
#     description = "allow port number 22 for ssh access"
#     #Usually we allow everything in egress
#     egress {
#         from_port       = 0
#         to_port         = 0
#         protocol        = "-1"
#         cidr_blocks      = ["0.0.0.0/0"]
#         ipv6_cidr_blocks = ["::/0"]    
#     }

#     ingress {
#         from_port       = 22
#         to_port         = 22
#         protocol        = "tcp"
#         cidr_blocks      = ["0.0.0.0/0"] #allow from everyone
#         ipv6_cidr_blocks = ["::/0"]
#     }

#     tags = {
#         Name = "allow_ssh"
#     }

# }