# 課題点・改善点
 クエストを取り組んで感じた課題点・改善点をまとめました。
## ・一つのシェルスクリプトで完結
  パスワードマネージャーをシェルスクリプトの中にシェルスクリプトを書くという風に書いた。
  
  for文などを使えば一つのシェルスクリプトにまとめることもできる。一つのシェルスクリプトにまとめた方が良いのか疑問に思った。
  
## ・readコマンドを用いた複数行の出力
一個ずつパスワードを入力しないと、次の情報の入力画面が出てこないのは問題だと感じた。
 
 ネットで調べてみたが、解決策が分からなかった。
## ・パスワード入力回数の減少
暗号化する際、ファイルを復号化してまた暗号化するという操作を行うため、パスワード入力を何度も行う必要が生まれる。
 
コードにパスワードを書くことで入力を省略できる方法を知ったが、それだとセキュリティ対策にならないと感じた。
 
パスワード入力回数が1回で済むようなコードを書きたい。
