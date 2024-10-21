# Placeholder for cmscloud-vpn
resource "aws_ec2_managed_prefix_list" "placeholder_cmscloud_vpn" {
  name           = "cmscloud-vpn"
  address_family = "IPv4"
  max_entries    = 5
  tags = {
    Name = "cmscloud-vpn"
  }
}

resource "aws_ec2_managed_prefix_list_entry" "vpn_entry" {
  prefix_list_id = aws_ec2_managed_prefix_list.placeholder_cmscloud_vpn.id
  cidr           = "192.168.0.0/24"
}

# Placeholder for cmscloud-shared-services
resource "aws_ec2_managed_prefix_list" "placeholder_cmscloud_shared_services" {
  name           = "cmscloud-shared-services"
  address_family = "IPv4"
  max_entries    = 5
  tags = {
    Name = "cmscloud-shared-services"
  }
}

resource "aws_ec2_managed_prefix_list_entry" "shared_services_entry" {
  prefix_list_id = aws_ec2_managed_prefix_list.placeholder_cmscloud_shared_services.id
  cidr           = "192.168.1.0/24"
}

# Placeholder for cmscloud-security-tools
resource "aws_ec2_managed_prefix_list" "placeholder_cmscloud_security_tools" {
  name           = "cmscloud-security-tools"
  address_family = "IPv4"
  max_entries    = 5
  tags = {
    Name = "cmscloud-security-tools"
  }
}

resource "aws_ec2_managed_prefix_list_entry" "security_tools_entry" {
  prefix_list_id = aws_ec2_managed_prefix_list.placeholder_cmscloud_security_tools.id
  cidr           = "192.168.2.0/24"
}

# Placeholder for zscaler
resource "aws_ec2_managed_prefix_list" "placeholder_zscaler" {
  name           = "zscaler"
  address_family = "IPv4"
  max_entries    = 5
  tags = {
    Name = "zscaler"
  }
}

resource "aws_ec2_managed_prefix_list_entry" "zscaler_entry" {
  prefix_list_id = aws_ec2_managed_prefix_list.placeholder_zscaler.id
  cidr           = "192.168.3.0/24"
}

