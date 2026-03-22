-- except: from a one table minus the data of another table
use demodb;
select * from t1
except
select * from t2;
-- this is not sun on workbench
/*
use shell
1) use demodb;
2)select * from t1
except
select * from t2;
+----+
| id |
+----+
|  1 |
+----+
3) select * from t1;
+----+
| id |
+----+
|  1 |
|  2 |
|  3 |
|  1 |
|  2 |
|  3 |
+----+
4)select * from t1 except all select * from t2;
+----+
| id |
+----+
|  1 |
|  1 |
|  2 |
|  3 |
+----+
5) select contactFirstName from customers except select firstName from employees;
+------------------+
| contactFirstName |
+------------------+
| Carine           |
| Jean             |
| Janine           |
| Jonas            |
| Susan            |
| Zbyszek          |
| Roland           |
| Kwai             |
| Diego            |
| Christina        |
| Jytte            |
| Mary             |
| Eric             |
| Kelvin           |
| Juri             |
| Wendy            |
| Veysel           |
| Keith            |
| Isabel           |
| Martine          |
| Marie            |
| Jerry            |
| Mory             |
| Michael          |
| Matti            |
| Rachel           |
| Dean             |
| Elizabeth        |
| Yoshi            |
| Miguel           |
| Brydey           |
| Fr├®d├®rique     |
| Mike             |
| Eduardo          |
| Horst            |
| Palle            |
| Jean             |
| Alejandra        |
| Valarie          |
| Helen            |
| Annette          |
| Renate           |
| Paolo            |
| Daniel           |
| Daniel           |
| Henriette        |
| Elizabeth        |
| Peter            |
| Anna             |
| Giovanni         |
| Adrian           |
| Marta            |
| Ed               |
| Mihael           |
| Jan              |
| Bradley          |
| Mel              |
| Pirkko           |
| Catherine        |
| Wing             |
| Ann              |
| Ben              |
| Kalle            |
| Philip           |
| Francisca        |
| Jesus            |
| Brian            |
| Patricia         |
| Laurence         |
| Paul             |
| Armand           |
| Wales            |
| Karin            |
| Dorothy          |
| Lino             |
| Braun            |
| Allen            |
| Pascale          |
| Georg            |
| Arnold           |
| Maurizio         |
| Akiko            |
| Dominique        |
| Rita             |
| Sarah            |
| Maria            |
| Alexander        |
| Dan              |
| Martha           |
| Sue              |
| Roland           |
| Yu               |
| Mart├¡n          |
| Sven             |
| Violeta          |
| Carmen           |
| Sean             |
| Franco           |
| Hanna            |
| Raanan           |
| Jos├® Pedro      |
| Rosa             |
| Thomas           |
| Tony             |
+------------------+

















*/