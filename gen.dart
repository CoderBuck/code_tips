import 'dart:io';

void main() {
  var file = File('lib/gen');
  int count = 20000;
  for (int i = 0; i < count; i++) {
    var sb = StringBuffer();
    sb.writeln("class Hello_$i {");
    sb.writeln("  void hello(){}");
    sb.writeln("  void hi(){}");
    sb.writeln("  void nihao(){}");
    sb.writeln("}");

    sb.writeln("class Aaaaaa_$i {");
    sb.writeln("  void hello(){}");
    sb.writeln("  void hi(){}");
    sb.writeln("  void nihao(){}");
    sb.writeln("}");

    var file = File('lib/gen/hello_$i.dart');
    if(!file.existsSync()) {
      file.createSync();
    }
    file.writeAsStringSync(sb.toString());
  }

}