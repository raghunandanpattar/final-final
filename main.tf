provider "aws" {
    region ="us-east-1"
    access_key ="AKIAYBUDLFUTQGV3EERE"
    secret_key = "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"
  
}

resource "aws_instance" "my-new-aws_instance" {
    ami           = "ami-06e46074ae430fba6"
    instance_type = "t2.micro" 

    tags ={
      Name = "pipeline_created_instance" 
  }
}