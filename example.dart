import "dart:async";
  

String countUp(int count) {
  print('start count up');
  
  StringBuffer sb = new StringBuffer();
  
  for (int i = 0;i < count;i++) {    
    sb.write('${i} ');
    
    if (i > 500)
      throw new Exception('Values over 500 are not allowed');

    if (i > 0 && i % 10 == 0)
      sb.write('\n');
  }
  
  print('finish count up');
  
  return sb.toString();
} // countUp


Future <String> createFutureCounter(int count) {
  return new Future(() { return countUp(count) ;});
} // createFutureCounter


void countUpAsynchronously(int count) async {
  print('Async operation start');
  var value;
  
  try {
    value = await createFutureCounter(count);
    print('Async operation succeeded with values:\n${value}');
  } catch(ex) {
    print('Async operation failed: ${ex}');
  }
} // countUpAsynchronously


void main() {
  print('start main');
  
  /*
    Using futures:
    Future <String> future = createFutureCounter(502);
    print('adding a few Future API callbacks');
    future.then((value) => handleCompletion(value)).catchError((err) => handleError(err));
  */
  
  // Using async:
  countUpAsynchronously(1000);
  
  print('finish main');
} // main


void handleError(err) {
  print('Async operation barfed all over itself: ${err}');
} // handleError


void handleCompletion(value) {
  print('Async operation succeeded:\n${value}');
} // handleCompletion

