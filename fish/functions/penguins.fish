function penguins --description alias\ penguins=mysql\ --host=yourhost.com\ -u\ dev\ --prompt=\"\\x1B\[31m\\u\\x1B\[34m@\\x1B\[32m\\v\\x1B\[0m:\\x1B\[36m\\d\>\\x1B\[0m\ \"\ -p
	mysql --host=yourhost.com -u dev --prompt="\x1B[31m\u\x1B[34m@\x1B[32m\v\x1B[0m:\x1B[36m\d>\x1B[0m " -p $argv;
end
