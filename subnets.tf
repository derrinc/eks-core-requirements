# Public Subnets (Control Plane)
resource "aws_subnet" "public" {
  count             = 2
  vpc_id            = aws_vpc.main.id
  cidr_block        = cidrsubnet(aws_vpc.main.cidr_block, 8, count.index)
  availability_zone = element(data.aws_availability_zones.available.names, count.index)

  tags = {
    Name = "batcave-eks-sandbox-public-${count.index}" # Update to the new pattern
  }
}

# Private Subnets (Worker Nodes)
resource "aws_subnet" "private" {
  count             = 2
  vpc_id            = aws_vpc.main.id
  cidr_block        = cidrsubnet(aws_vpc.main.cidr_block, 8, count.index + 2)
  availability_zone = element(data.aws_availability_zones.available.names, count.index + 2)

  tags = {
    Name = "batcave-eks-sandbox-private-${count.index}" # Update to the new pattern
  }
}

# Unroutable Subnets
resource "aws_subnet" "unroutable" {
  count             = 2
  vpc_id            = aws_vpc.main.id
  cidr_block        = cidrsubnet(aws_vpc.main.cidr_block, 8, count.index + 4)
  availability_zone = element(data.aws_availability_zones.available.names, count.index + 4)

  tags = {
    Name = "batcave-eks-sandbox-unroutable-${count.index}" # Update to the new pattern
  }
}

