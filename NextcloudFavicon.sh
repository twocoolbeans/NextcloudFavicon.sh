#!/bin/bash

# https://github.com/twocoolbeans/NextcloudFavicon.sh

# This script only replaces the favicon.ico file in Nextcloud. It ignores the favicon.png file.

# Edit the location of the favicon you want to use (/home/user/favicon.ico), the location of your Nextcloud installation (/var/www/nextcloud/core/img/favicon.ico), the HTTP user of your server (see below), and your webserver service (Apache or Nginx) before running this script. Run script with sudo permissions.

# The HTTP user and group in Arch Linux is http
# The HTTP user and group in Debian/Ubuntu is www-data
# The HTTP user and group in Fedora/CentOS is apache
# The HTTP user in openSUSE is wwwrun, and the HTTP group is www

sudo cp /home/user/favicon.ico /var/www/nextcloud/core/img/favicon.ico
sudo chown www-data:www-data /var/www/nextcloud/core/img/favicon.ico
sudo service apache2 restart
