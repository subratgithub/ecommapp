echo "🚀 Starting Apache deployment on Amazon Linux 2023..."
# Install httpd (Apache)
sudo dnf -y install httpd
# Ensure httpd is enabled and started
sudo systemctl enable --now httpd
# Deploy static files to the webroot
sudo mkdir -p /var/www/html
# Copy any html files from /home/ec2-user/app to the webroot
sudo cp -r /home/ec2-user/app/*.html /var/www/html/ || true
# Fix ownership so Apache can serve files
sudo chown -R apache:apache /var/www/html
echo "✅ Apache deployed! Visit your EC2 IP to view the webpage."
