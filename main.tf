provider "aws" {
    region ="us-east-1"
    access_key ="AKIAYBUDLFUTYLD2X6FS"
    secret_key = "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"
  
}

resource "aws_instance" "my-new-aws_instance" {
    ami           = "ami-06e46074ae430fba6"
    instance_type = "t2.micro" 

    tags ={
      Name = "pipeline_created_instance" 
  }
}
