void main() {
  List list = [
    'MUMBAI',
    24,
    'PUNE',
    20,
    'DELHI',
    18,
    'NAGPUR',
    -15,
    'BENGALURU',
    35
  ];

  var max = list[1];
  var min = list[1];
  var mincityindex = 0;
  var maxcityindex = 0;

  for (int i = 1; i <= list.length; i = i + 2) {
    if (list[i] < min) {
      min = list[i];
      mincityindex = i - 1;
    }
    if (list[i] > max) {
      max = list[i];
      maxcityindex = i - 1;
    }
  }

  print("MAXIMUM TEMPERATURE IS ${max}°C IN ${list[maxcityindex]}");
  print("MINIMUM TEMPERATURE IS ${min}°C IN ${list[mincityindex]}");
}
