provider "aws" {
    region ="us-east-1"
    access_key ="AKIAYBUDLFUTVWC366OM"
    secret_key = "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"
  
}

resource "aws_instance" "my-new-aws_instance" {
    ami           = "ami-06e46074ae430fba6"
    instance_type = "t2.micro" 

    tags ={
      Name = "pipeline_created_instance" 
  }
}
