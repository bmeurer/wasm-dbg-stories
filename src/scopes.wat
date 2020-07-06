(module
  (global $imports.global (;0;) (import "imports" "global") (mut i32))
  (memory $memory0 1)
  (func $foo (;0;) (export "foo") (param $i32 (;0;) i32) (result i32)
    (local $i64_var (;1;) i64) (local $f32_var (;2;) f32) (local $f64_var (;3;) f64)
    i64.const 9221120237041090
    local.set $i64_var
    f32.const 5.5
    local.set $f32_var
    f64.const 2.23e-11
    local.set $f64_var
    global.get $imports.global
    local.get $i32
    i32.add
  )
)