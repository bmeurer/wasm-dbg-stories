(module $externref
  (global $ref_mut_global (import "imports" "mut_global") (mut externref))
  (global $ref_global (import "imports" "global") externref)
  (table $incdec 2 anyfunc)
  (table $refs 10 externref)
  (export "refs" (table $incdec))

  (func $foo (export "foo")
    (param $ref_param externref) (result externref)
    (local $ref_local externref)
    local.get $ref_param
    local.set $ref_local
    global.get $ref_mut_global
  )

  (func $modify_table (export "modify_table")
    (param $ref_param externref) (result externref)
    i32.const 1
    local.get $ref_param
    table.set $refs

    i32.const 2
    global.get $ref_mut_global
    table.set $refs

    i32.const 3
    global.get $ref_global
    table.set $refs

    i32.const 0
    table.get $refs
)
)
