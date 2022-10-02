void main() {
  final dayToMinute = 1440;
  final hourToMinute = 60;

  int time = 2234;

  int days = 0;
  if (time > dayToMinute) {
    days = time ~/ dayToMinute;
    time %= dayToMinute;
  }

  int hours = 0;
  if (time > hourToMinute) {
    hours = time ~/ hourToMinute;
    time %= hourToMinute;
  }
  int minutes = time;

  print('$days | $hours | $minutes');
}
