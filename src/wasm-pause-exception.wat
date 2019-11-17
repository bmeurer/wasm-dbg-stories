(module $wasm-pause-exception.wat
 (func $foo (import "imports" "foo") (param i32))
 (func $bar (export "bar") (param $x i32)
  get_local $x
  call $foo)
 )
