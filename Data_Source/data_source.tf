data "local_file" "test" {
    filename = "${path.module}/demo.txt"
  
}

output "data" {
    value = data.local_file.test.content
  
}