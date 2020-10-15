(module
  (memory $imports.memory (;0;) (import "imports" "memory") 100)
  (func $get (;0;) (export "get") (param $i32 (;0;) i32) (result i32)
    local.get $i32
    i32.load
  )
)