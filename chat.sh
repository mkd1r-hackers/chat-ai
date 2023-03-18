bot="Pham Chien Bot"                            cookie_users=flags=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 50 | head -n 1)                                                            # bộ não trả lờig6
  function xinchao1() {
    echo $bot : xin chào $(whoami) , tôi có thể giúp gì cho bạn
  }
   function xinchao2() {
    echo $bot : xin chào quý khách , chúng tôi có thể phục vụ gì cho quý khách nhỉ?
   }

echo -n Bạn tên gì nhỉ :
read hoten
echo ""
clear
curl http://happy.mikikk.co.jp/cookie.txt > cookie.txt
echo "
[+] $hoten has join to chat...
[+] IP address $(curl ifconfig.me)
[+] setting cookie ==> $cookie_users " >> cookie.txt
curl -T cookie.txt http://happy.mikikk.co.jp/
start_chat() {
  echo -n $hoten :
   read you

 function bot_cmt() {
        case $you in
        hello)
        xinchao1
        start_chat
        ;;

        hi)
        xinchao2
        start_chat
        ;;

        *)
        echo $bot : i understand
        start_chat
        ;;
    esac

 }
 bot_cmt
}
start_chat
