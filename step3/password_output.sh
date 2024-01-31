read -p "サービスを入力してください:" service_name
output_service_name=$(grep $service_name password_save_file | cut -d":" -f1)
output_user_name=$(grep $service_name password_save_file | cut -d":" -f2)
output_password=$(grep $service_name password_save_file | cut -d":" -f3)
if grep -q $service_name password_save_file; then
	echo "サービス名:"$output_service_name
	echo "ユーザー名:"$output_user_name
	echo "パスワード:"$output_password
	./password_select_display.sh
else
	echo "そのサービスは登録されていません"
	./password_select_display.sh
fi
