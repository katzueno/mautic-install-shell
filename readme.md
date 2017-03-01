# Mautic Install Shell Script for Cloud9

This is simple shell script to install Mautic on [Cloud9](https://c9.io/c/t3lGIvLecba). Cloud9 is the Docker-base cloud service to provide online code editor and Ubuntu server. They offer a free account!

I made this shell script for [Mautic Meetup Nagoya](http://www.meetup.com/Mautic-Meetup-Nagoya/) workshops, and creating a quick demo.

When I tested in March 2017, it took me for 5 min to complete.

日本語は下記に。

The following is the instruction of how to set-up

## STEP 1: Create a worksplace

- Sign up and create an account at [Cloud9](https://c9.io/c/t3lGIvLecba).
- Create a workspace on Cloud9 using Apache+MySQL+PHP template

## STEP 2: Initiate MySQL

Copy the following texts and paste onto the Cloud9 bash terminal window to start MySQL and create a `mautic` user with `mautic` password.

```
mysql-ctl start
mysql-ctl cli
CREATE USER 'mautic'@'127.0.0.1' IDENTIFIED BY 'mautic';
GRANT ALL PRIVILEGES ON *.* TO 'mautic'@'127.0.0.1' WITH GRANT OPTION;
FLUSH PRIVILEGES;
exit;

```

## [OPTION] STEP 3: Modify the script

If you would like to modify the installation script, download the file from GitHub and modify the script if needed. Then upload the file somewhere remote where accessible from Cloud9.

## STEP 4: Download & run the script

Copy the following text and paste onto the Cloud9 terminal window to download and initiate Mautic install.


Default

```
curl https://raw.githubusercontent.com/katzueno/mautic-install-shell/master/cloud9-install-mautic.bash | bash
```

Option

```
curl [Your custom script] | bash
```


## STEP 5: Launch your browser, and proceed to browser installation

- Type `lemp start` in bash terminal to start nginx web server
- Click "Preview" - "Preview Running Application" to launch Mautic installation page. (Your URL would be name_of_workspace-username.c9user.io).
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

## LEMP Commands

**You will not be able to use START and STOP button of Cloud9, or use default phpMyAdmin. You must type the following commands in terminal window to control the web server.**

Command        | Description
---------------|---------------------
`lemp start`   | Starts Nginx and PHP
`lemp stop`    | Stops Nginx and PHP
`lemp restart` | Restarts Nginx and PHP
`lemp status`  | Shows the current status

## Start MySQL after Cloning

After you clone your workspace, you may have to MySQL server by typing the following command in bash.

```
mysql-ctl start
```

to start MySQL in your new workspace.

## Pull request is welcome!

I just made this shell script really quick in 30min. I encourage you to suggest new feature and send me a pull request to add more feature and options.

## Credit

@katzueno (concret5 Japan, Inc.)

concrete5 Japan, Inc. is helping various company's concrete5 & Mautic project. Please feel free to contact us at any time for your project needs. We can work internationally.

https://concrete5.co.jp/

[c9-lemp](https://github.com/GabrielGil/c9-lemp)

c9-lemp holds all the script, config files and commands that you might want to use to set up a LEMP environment using NGINX and PHP-FPM instead the default Apache2 runner for PHP applications on Cloud9 workspaces.

## License

This shell script is released under GPL V2.

# Mautic Cloud9 自動インストールシェルスクリプトの紹介

[Cloud9](https://c9.io/c/t3lGIvLecba) と呼ばれるクラウドで開発環境を構築できるというサービス上があります。ブラウザだけで、エディタ、FTP (まがい)、ターミナル、Web サーバーが付いた Docker ベースの開発環境です。

このスクリプトは [Mautic Meetup Nagoya](http://www.meetup.com/Mautic-Meetup-Nagoya/) という Mautic の名古屋コミュニティの勉強会用にデモ環境を簡単に作成するために作りました。

2017年3月に試した際は、このスクリプトの実行に約5分かかりました。

セットアップ方法です。

## STEP 1: Worksplace を作成する

- [Cloud9](https://c9.io/c/t3lGIvLecba) にユーザー登録をしログインする
- Apache+MySQL+PHP テンプレートを使って Workspace を作成する

## STEP 2: MySQL 初期設定を行う

下記の複数行のテキストをコピーし、Cloud9 の Bash ターミナル上に貼り付けて実行してください。MySQL サーバーがスタートし、「mautic」というユーザー名を作成。パスワードも「mautic」になります。

```
mysql-ctl start
mysql-ctl cli
CREATE USER 'mautic'@'127.0.0.1' IDENTIFIED BY 'mautic';
GRANT ALL PRIVILEGES ON *.* TO 'mautic'@'127.0.0.1' WITH GRANT OPTION;
FLUSH PRIVILEGES;
exit;

```

## [オプション] STEP 3: スクリプトを変更

スクリプトの内容を変更したい場合は、GitHub からダウンロードし、任意に変更を加え、Cloud9 アクセス可能な場所にアップロードしておいてください。

## STEP 4: ダウンロード & 実行

下記のコードをコピーし、Cloud9 の Bash ターミナル上でペーストし、Mautic のインストールを開始します。

デフォルト

```
curl https://raw.githubusercontent.com/katzueno/mautic-install-shell/master/cloud9-install-mautic.bash | bash
```

オプション

```
curl [Your custom script] | bash
```


## STEP 5: ブラウザを起動し、ブラウザ上のインストールに進む

- bash ターミナルに `lemp start` と入力し Web サーバーを起動
- メニュー上の "Preview" - "Preview Running Application" から Mautic インストール画面に進む (URL の法則は workspaceハンドル-ユーザー名.c9user.io です).
- インストール

`STEP 1: Mautic Installation - Database Setup` でのMySQL の設定は下記の設定を使ってください.

種類              | 内容
------------------|-----
Database Driver   | MySQL PDO
Database Host     | 127.0.0.1
Database Port     | 3306
Database Name     | c9
Database Table Prefix | -- (空白)
Database Username | mautic
Database Password | mautic

そして、他の必須項目は任意の項目を入れて勧めてください。

## LEMP Commands

**Cloud9 デフォルトのウェブサーバーから変更しているため、通常の START & STOP ボタンが働きません。またデフォルトの phpMyAdmin も動かなくなります。**ウェブサーバーの操作は下記のコマンドを Bash ターミナルで打ち込んで頂く必要があります。


コマンド       | 説明
---------------|---------------------
`lemp start`   | Web サーバー(nginx) と PHP を起動
`lemp stop`    | Web サーバー(nginx) と PHP を停止
`lemp restart` | Web サーバー(nginx) と PHP を再起動
`lemp status`  | ステータスを表示

## Start MySQL after Cloning

Workspace をクローンした後などは MySQL サーバーが停止状態に戻ることがあります。その際は、Bash に

```
mysql-ctl start
```

と打ち込んで、MySQL サーバーを起動させてください。

## プルリクエスト歓迎

このスクリプトは数十分で作ったものなので、みなさんのプルリクエストを通じで機能を増やせていければと思います。

## クレジット

@katzueno ([コンクリートファイブジャパン株式会社](https://concrete5.co.jp/))

コンクリートファイブジャパン株式会社では、企業・団体様の concrete5 サイト制作や制作会社様のプロジェクトのサポートを行っています。

[c9-lemp](https://github.com/GabrielGil/c9-lemp)

c9-lemp は Cloud9 環境で、LEMP を立ち上げるためのインストールコマンドなどが全て揃ったスクリプトです。


## ライセンス

GPL V2 ライセンスです。

