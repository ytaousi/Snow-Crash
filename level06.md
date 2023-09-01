PHP Warning:  file_get_contents(): Filename cannot be empty in /home/user/level06/level06.php on line 4

{}   []   ./  @   ([x(.*)])   ("2")

file_get_contents($y) <--- this is a php function that reads the content of the parameter "Arg[1]" in our case, nothing special with it
preg_replace("/(\[x (.*)\])/e", "y(\"\\2\")", $a);  <--- this is the magic sauce

([x(.*)])   y("\2")


flag06 : 