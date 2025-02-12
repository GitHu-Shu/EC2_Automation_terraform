#set veriables
$vpcCidr = "10.0.0.0/16"
$subnetCidr = "10.0.1.0/24"
$securityGroupsName = "ShubhamSecurityGroup"
$instanceType = "t2.micro"
$amiId = "ami-04b4f1a9cf54c11d0"
$keyName = "New_EC2_Key" 

#create VPC
$vpc = aws ec2 create-vpc --cidr-block $vpcCidr | ConvertFrom-Json #creating VPC decribing architature 
$Myvpc = $vpc.Vpc.Myvpc
write-Host "Create VPC To launch VPC": $Myvpc
 