(module $raw-module.wat
  (func $a (export "a") (param $input f64) (result f64)
   get_local $input
   f64.const 1
   f64.add)
  (func $b (export "b") (param $input f64) (result f64)
   get_local $input
   f64.const 2
   f64.add)
  (func $c (export "c") (param $input f64) (result f64)
   get_local $input
   f64.const 3
   f64.add))
