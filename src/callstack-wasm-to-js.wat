(module $callstack-wasm-to-js.wat
  (func $bar (import "imports" "bar") (result i32))
  (func $foo (export "foo") (result i32)
   call $bar))
