(module $tables
    (table $incdec 2 anyfunc)
    (func $inc (param $x i32) (result i32)
          (i32.add (local.get $x) (i32.const 1)))
    (func $dec (param $x i32) (result i32)
          (i32.sub (local.get $x) (i32.const 1)))
    (elem (i32.const 0) $inc $dec)
    (export "incdec" (table $incdec)))
