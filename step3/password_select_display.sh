read -p "次の選択肢から入力してください(Add Password/Get Password/Exit):" selection
if [ "$selection" = "Add Password" ]; then
	./password_save.sh
elif [ "$selection" = "Get Password" ]; then
	./password_output.sh
elif [ "$selection" = "Exit" ]; then
	echo -e "Thank you\e[31m!\e[0m "
else
	echo "入力が間違えています。Add Password/Get Password/Exit から入力してください。"
	./password_select_display.sh
fi
