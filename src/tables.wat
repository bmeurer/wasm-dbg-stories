(module $tables
    (table $incdec 110 anyfunc)
    (func $inc (param $x i32) (result i32)
          (i32.add (local.get $x) (i32.const 1)))
    (func $dec (param $x i32) (result i32)
          (i32.sub (local.get $x) (i32.const 1)))
    (func $f3 (param $x i32) (result i32)
          (i32.const 3))
    (func $f4 (param $x i32) (result i32)
          (i32.const 4))
    (func $f5 (param $x i32) (result i32)
          (i32.const 5))
    (func $f6 (param $x i32) (result i32)
          (i32.const 6))
    (func $f7 (param $x i32) (result i32)
          (i32.const 7))
    (elem (i32.const 0) $inc $dec $f3 $f4 $f5 $f6 $f7)
    (elem (i32.const 98) $inc $dec $f3 $f4 $f5 $f6 $f7)
    (export "incdec" (table $incdec)))
