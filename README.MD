### AWS VPC Module

This module creates following resources. we are using HA, we are getting first 2 AZ automatically.
*VPC
*Internet Gateway with VPC association
*2 Public subnets in la and 1b
*2 Private subnets in la and 1b.
*2 Database subnets in la and 1b
*Elastic IP
*NAT gateway in la public subnet
*Public Route Table
*Private Route Table.
*Database Route Table
*Subnets and Route table associations
*VPC peering if user requests
*Adding the peering route in default VPC, if user don't provide acceptor VPC explicitly.
*Adding the peering routes in public, private and database route tables

### Inputs

*User don't provide, acceptor VPC explicitly, in public, private and database route tables
*your project name
*project_name (Required)
*environment (Required) which environment you are working in
*vpc_cidr (Optional) Default value is 10.0.0.0/16, user can override
*enable_dns_hostnames (Optional) - Default value is true
*common_tags (Optional) Better to provide
*vpc_tags (Optional) -I Default value is empty. type is map igw_tags (Optional)
*Default value is empty. type is map
*public_subnets_cidr (Required) User must provide 2 valid public subnets CIDR
*public_subnets_tags (Optional) Default value is empty. type is map
*private_subnets_cidr (Required)
*User must provide 2 valid private subnets CIDR
*private_subnets_tags (Optional) database_subnets_cidr (Required)
*Default value is empty. type is map
*User must provide 2 valid database subnets CIDR
*database_subnets_tags (Optional)
*Default value is empty. type is map
*nat_gateway_tags (Optional) Default value is empty. type is map public_route_table_tags (Optional)
*Default value is empty. type is map
*private_route_table_tags (Optional) - Default value is empty. type is map
*database_route_table_tags (Optional)
*Default value is empty. type is map
*is_peering_required (Optional) default value is false
*acceptor_vpc_id (Optional) default value is default VPC ID ⚫ vpc_peering_tags (Optional) Default value is empty. type is map