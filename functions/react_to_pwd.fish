function react_to_pwd --on-variable PWD
   if test -f todo.txt
     toilet -f pagga "todo "
     mispipe "todo" "grep -v 'syntax error at line'"
     or cat todo.txt
   end
end
