#!/bin/bash
#readの変数を使うのに1行ごとしかできない
#一気に複数行表示しながら文字を入力できるようにしたい
echo -n "サービス名を入力してください： "
read service_name
echo -n "ユーザー名を入力してください： "
read user_name
echo -n "パスワードを入力してください： "
read password
if [ -n "$service_name" ] && [ -n "$user_name" ] && [ -n "$password" ];then
	echo "$service_name:$user_name:$password" >> password_save_file
	echo "パスワードの追加は成功しました。"
	./password_select_display.sh
else
	echo "入力に空欄があります"
	./password_save.sh	
fi
