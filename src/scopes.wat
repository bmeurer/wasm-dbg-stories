(module $scopes.wat
  (global $g (import "imports" "global") (mut i32))
  (memory 1)
  (func $foo (export "foo") (param $x i32) (result i32)
   global.get $g
   local.get $x
   i32.add))
