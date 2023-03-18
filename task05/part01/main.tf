provider "aws" {
  profile = "default"
  region = "us-east-1"
}
 
resource "aws_instance" "udacity_t2" {
  count = "4"
  ami = "ami-02f3f602d23f1659d"
  instance_type = "t2.small"
  subnet_id = "subnet-0e1307f804ed743b6"
  tags = {
    name = "Udacity T2"
  }
}

resource "aws_instance" "udacity_m4" {
  count = "2"
  ami = "ami-02f3f602d23f1659d"
  instance_type = "m4.large"
  subnet_id = "subnet-0e1307f804ed743b6"
  tags = {
    name = "Udacity M2"
  }
}