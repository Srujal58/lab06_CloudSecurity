resource "aws_instance" "example_instance" {
  ami             = "ami-0f403e3180720dd7e"  # Update with your desired AMI ID
  instance_type   = "t2.micro"
  iam_instance_profile = aws_iam_instance_profile.example_profile.name
}

resource "aws_iam_instance_profile" "example_profile" {
  name = "example-profile"
  role = aws_iam_role.example_role.name
}

