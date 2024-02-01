read -p "サービスを入力してください:" service_name
gpg -o password_save_file -d password_save_file.gpg
rm password_save_file.gpg
output_service_name=$(grep $service_name password_save_file | cut -d":" -f1)
output_user_name=$(grep $service_name password_save_file | cut -d":" -f2)
output_password=$(grep $service_name password_save_file | cut -d":" -f3)
if awk -F ":" '{print $1}' password_save_file | grep -x -q "$service_name" ; then
	echo "サービス名:"$output_service_name
	echo "ユーザー名:"$output_user_name
	echo "パスワード:"$output_password
	gpg -c password_save_file
        rm password_save_file
	./password_select_display.sh
else
	echo "そのサービスは登録されていません"
	gpg -c password_save_file
        rm password_save_file
	./password_select_display.sh
fi
