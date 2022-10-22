resource "aws_eip" "eip" {
  vpc = true
}

resource "aws_nat_gateway" "ngw" {
  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.privsub.id

  tags = {
    Name = "ngw"
  }

  depends_on = [aws_internet_gateway.igw]
}
