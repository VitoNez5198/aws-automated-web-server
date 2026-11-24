#!/bin/bash
set -euo pipefail

dnf update -y
dnf install -y httpd

systemctl start httpd
systemctl enable httpd

cat << 'EOF' > /var/www/html/index.html
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <title>Despliegue Automatizado AWS</title>
</head>
<body style="font-family:sans-serif; text-align:center; padding-top:50px;">
  <h1>Despliegue automatizado exitoso</h1>
  <p>Servidor Apache aprovisionado con EC2 User Data sobre Amazon Linux 2023.</p>
</body>
</html>
EOF
