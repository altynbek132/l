# [L]ogger  
  
  
### About  
Crossplatform html/io [L]ogger with simple API.  
Manipulate with native console and store logs in txt files and indexedDB.  
You can change verbose level and resume/pause log queue, also you can clear console.  
  
  
---
  
### Example:  
  
```dart
import 'package:l/l.dart';

void main() {
  l.lvl = 4; // set verbose level
  l.storeLogs = true; // store logs
  l.e('error msg');
  l.w('warning msg');
  l.i('info msg');
  l < 'alt info msg';
  l.d('debug msg');
  l << 'alt debug msg';
  l.pause(); // pause log queue
  l.v('verbose lvl #1');
  l.vv('verbose lvl #2');
  l.vvv('verbose lvl #3');
  l.storeLogs = false; // store logs
  l.vvvv('verbose lvl #4');
  l.vvvvv('verbose lvl #5');
  l.vvvvvv('verbose lvl #6');
  l.resume(); // resume log queue
  l.clear(); // clear console
  l.close(); // kill logger
}
```  
  
  