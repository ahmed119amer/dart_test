// to return 30 day list
ListDay(int cont, int StartNum, List listday) {
  for (var j = StartNum; j < cont + 1; j++) {
    listday.add(j.toString());
    print('${j}');
    //print('day :$j   weekly:     ${WeeklyDay(j, 2, 2021)}');
  }
  return (listday);
}

//Day and Month to return ===> List
List<String> DayslashMonth(int contMonth, DateTime date, List<String> listday) {
  var Month = <int>[31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
  var j;
  for (var i = date.month; i < contMonth + date.month; i++) {
    if (i < 13) {
      if (i == date.month) {
        for (j = date.day; j < Month[i - 1] + 1; j++) {
          // print('${i}/${j} : ${WeeklyDay(j, i, date.year)}');
          listday.add('${i}/${j}');
          // print('${i}/${j}');
        }
      } else {
        for (j = 1; j < Month[i - 1] + 1; j++) {
          // print('${i}/${j} : ${WeeklyDay(j, i, date.year)}');
          listday.add('${i}/${j}');
          // print('${i}/${j}');
        }
      }
      for (j = date.day; j < Month[i - 1] + 1; j++) {
        // print('${i}/${j} : ${WeeklyDay(j, i, date.year)}');
        listday.add('${i}/${j}');
        // print('${i}/${j}');
      }
    } else {
      for (j = 1; j < Month[i - 12 - 1] + 1; j++) {
        // print('${i - 12}/${j} : ${WeeklyDay(j, i - 12, date.year)}');
        listday.add('${i - 12}/${j}');
        // print('${i-12}/${j}');
      }
    }
  }
  return listday;
}

/// ! to get month and day from single string
List<String> GetDayMonth(List<String> list, String type) {
  // 1/1
  // 10/1
  // 1/10
  // 10/10
  List<String> res = [];
  if (type == 'month') {
    for (var j = 0; j < list.length; j++) {
      if (list[j].length == 5) {
        res.add(list[j].substring(0, list[j].indexOf('/')));
      } else if (list[j].length == 4) {
        res.add(list[j].substring(0, list[j].indexOf('/')));
      } else {
        res.add(list[j].substring(0, list[j].indexOf('/')));
      }
    }
  } else {
    for (var j = 0; j < list.length; j++) {
      if (list[j].length == 5) {
        res.add(list[j].substring(list[j].indexOf('/') + 1, list[j].length));
      } else if (list[j].length == 4) {
        res.add(list[j].substring(list[j].indexOf('/') + 1, list[j].length));
      } else {
        res.add(list[j].substring(list[j].indexOf('/') + 1, list[j].length));
      }
    }
  }

  //print(res);
  return res;
}

//return name week
WeeklyDay(int day, int month, int year) {
  var weekname = <String>[
    'الاحد',
    'الاثنين',
    'الثلاثاء',
    'الاربعاء',
    'الخميس',
    'الجمعة',
    'السبت'
  ];
  var daycorrect = day + 1;
  var weekday = DateTime.utc(year, month,  daycorrect).weekday;
  return weekname[weekday - 1];
}

/// X= itame who is search abuot it in list
int Chake(String X, List list) {
  if (list.contains(X)) {
    for (var c = 0; c < list.length; c++) {
      if ('r' == list[c]) {
        print('c$c##${list[c]}');
        return c;
      }
    }
  }
  return 2;
}

// move tasks from yastrday to to day
Transp(int day, List list, List listS) {
  Edit(list, listS);

  for (var t = 0; t < list.length; t++) {
    if (day == listS[t]) {
      listS[t] = day + 1;
      //print('${list[t]}:${listS[t]}');
    }
  }
  Edit(list, listS);
}

//to show two list:list
Edit(List list, List listS) {
  for (var t = 0; t < list.length; t++) {
    print('${list[t]}:${listS[t]}');
  }
}

//time in dart
/*
  var name = [1, 3, 4, 5, 6, 9, 12, 8];
  //print(name.contains(1));

  var berlinWallFell = new DateTime.utc(2021, 1, 4).weekday;
  var moonLanding = DateTime.parse("1969-07-20 20:18:04Z").weekday;

  var now = new DateTime.now();
  //print('${now.weekday+1}');

  var berlinWallFell = new DateTime.utc(2021, 1, 4).weekday;
  var moonLanding = DateTime.parse("1969-07-20 20:18:04Z").weekday;

  print('berlinWallFell:${berlinWallFell}');
  print('moonLanding:${moonLanding}');
*/
