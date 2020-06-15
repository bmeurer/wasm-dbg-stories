(module
  (func $add (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.add
  )
  (func $mul (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.mul
  )
  (func $div (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.div_s
  )
   (func $sub (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.sub
  )
  (func (export "addMultiply") (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    call $add
    local.get 2
    call $mul
  )
  (func (export "divSub") (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    call $div
    local.get 2
    call $sub
  )
)