(module $scopes.wat
  (global $g (import "imports" "global") (mut i32))
  (memory 1)
  (func $foo (export "foo") (param $i32 i32) (result i32)
  (local $i64_var i64)
  (local $f32_var f32)
  (local $f64_var f64)
   i64.const 9221120237041090
   set_local $i64_var
   f32.const 5.5
   set_local $f32_var
   f64.const 2.23e-11
   set_local $f64_var
   global.get $g
   local.get $i32
   i32.add
   ))
