Prolog, как и другие языки программирования, поддерживает комментирование кода. Комментарии никак не используются кодом и нужны исключительно для людей: чтобы программист оставлял пометки для себя и для других программистов. Написать комментарий в коде программы можно двумя способами:

* Весь текст после символа `%` и до конца строки будет считаться комментарием (однострочный комментарий)
* Весь текст после `/*` и до `*/` будет считаться комментарием (многострочный комментарий)

```prolog
% Комментарий может занимать всю строчку
:–
  write('Это не комментарий'). % или может находиться на строчке после какого–нибудь кода
/* А это
  многострочный комментарий
*/
```