provider "aws" {
    region ="us-east-1"
    access_key ="AKIAYBUDLFUTQQYTZRFB"
    secret_key = "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"
  
}

resource "aws_instance" "my-new-aws_instance" {
    ami           = "ami-06e46074ae430fba6"
    instance_type = "t2.micro" 

    tags ={
      Name = "pipeline_created_instance" 
  }
}
