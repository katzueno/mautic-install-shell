# Mautic Install Shell Script for Cloud9

This is simple shell script to install Mautic on [Cloud9](https://c9.io/c/t3lGIvLecba)

Currently, this script downloads Mautic version 1.4.1.

## STEP 1: Create a worksplace

- Create a workspace on Cloud9 using Apache+MySQL+PHP template

## STEP 2: Initiate MySQL

Copy the following texts and paste onto the Cloud9 bash terminal window to start MySQL and create user and password.

```
mysql-ctl start
mysql-ctl cli
CREATE USER 'mautic'@'127.0.0.1' IDENTIFIED BY 'mautic';
GRANT ALL PRIVILEGES ON *.* TO 'mautic'@'127.0.0.1' WITH GRANT OPTION;
FLUSH PRIVILEGES;
exit;

```

## STEP 3: Download & Initialte the file

Copy the following text and paste onto the Cloud9 terminal window to download and initiate Mautic install.


```
curl https://raw.githubusercontent.com/katzueno/mautic-install-shell/master/install-mautic-cloud9.bash | bash

```

## STEP 4: Launch your browser to proceed to browser installation

- Click "Run" to start running apache
- Click "Preview" - "Preview Running Application" to launch cloud9 installation page
- Proceed to installation

Use the following MySQL information during `STEP 1: Mautic Installation - Database Setup`.

Type              | Content
------------------|-----
Database Driver   | MySQL PDO
Database Host     | 127.0.0.1
Database Port     | 3306
Database Name     | c9
Database Table Prefix | -- (blank)
Database Username | mautic
Database Password | mautic

Enter the rest of the required information as you wish.


# Credit

@katzueno (concret5 Japan, Inc.)

concrete5 Japan, Inc. is helping various company's concrete5 & Mautic project. Please feel free to contact us at any time for your project needs. We can work internationally.

https://concrete5.co.jp/

