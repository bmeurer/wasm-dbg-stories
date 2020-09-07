(module
  (func $imports.getTime (;0;) (import "imports" "getTime") (result i64))
  (func $main (;0;) (export "main") (result i32)
    (local $time i64)
    (local $i i32)
    i32.const 0
    local.set $i
    (call $imports.getTime)
    local.set $time
    (block
      (loop
        local.get $i
        i32.const 1
        i32.add
        local.set $i
        (call $imports.getTime)
        local.get $time
        i64.sub
        i64.const 1000
        i64.lt_u
        (br_if 0)
      )
    )
    local.get $i
  )
)