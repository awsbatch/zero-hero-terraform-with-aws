resource "aws_iam_user" "for_each_user" {
  for_each = toset(["suresh", "kumar", "rajesh", "ramesh"])
  name     = each.key
}

resource "aws_iam_group" "for_each_group" {
  for_each = toset(["devops", "admin", "readonly"])
  name     = each.key
}
