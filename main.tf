resource "aws_instance" "nive1" {
  ami           = var.ami_id
  key_name =     var.key_name
  count        = var.instance_count
  instance_type = var.instance_type
  availability_zone = var.availability_zone

  tags = {
    Name = "Terraform ${count.index + 1}"
}
}
resource "aws_ebs_volume" "vol1" {
  availability_zone = var.availability_zone
  count = 1
  size = 1
}
#resource "aws_volume_attachment" "nive1-to-vol1" {
    #count        = "${var.instance_count}"
    #device_name = "/dev/sdc"
    #volume_id = aws_ebs_volume.vol1[count.index].id
    #instance_id = aws_instance.nive1[index.index].id
#}
#resource "aws_volume_attachment" "nive1-to-vol1" {
  #device_name = "/dev/sdc"
  #volume_id = aws_ebs_volume.vol1.id
  #instance_id = i-0a6812e4220c71622.id
#}
