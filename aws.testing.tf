resource "aws_instance" "lab-example" {
  ami                         = "ami-0022ebeda476ffd59"
  count                       = 2
  //instance_type               = "t2.large"
  instance_type               = "t2.micro"
  key_name                    = "Hennessy-Mac"
  associate_public_ip_address = true
  vpc_security_group_ids      = [ "sg-06a1d554fd7e6b765" ]

  tags = {
    Name    = "datadog"
    datadog = "yes"
  }

}
