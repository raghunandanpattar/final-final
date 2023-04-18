provider "aws" {
    region ="us-east-1"
    access_key ="AKIAYBUDLFUTQQYTZRFB"
    secret_key = "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"
  
}
resource "aws_security_group" "efn-final" {
  name   = "efn-final"
  vpc_id = "vpc-05c8d369712b48906"
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]

  }
  tags = {
    "name" = "raghu's-final"
  }

}

resource "aws_instance" "my-new-aws_instance" {
    ami           = "ami-06e46074ae430fba6"
    instance_type = "t2.micro" 
    vpc_security_group_ids = [aws_security_group.efn-final.id]

    tags ={
      Name = "pipeline_created_instance" 
  }
}
