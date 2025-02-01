class Worker {
  String name = 'Andrey';

  void work() {
    print('Я работаю в шахте...');
  }
}

class MyWorker extends Worker {
  // @override
  // String name = 'Alex';

  @override
  void work() {
    print('Я работаю в It-hub');
    // super.work();
  }

  // @override
  // void work() {
  //   print('Я работаю в It-hub');
  // }
}
