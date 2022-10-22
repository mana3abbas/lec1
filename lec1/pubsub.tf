resource "aws_subnet" "pubsub"{
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "pubsub"
  }
}

