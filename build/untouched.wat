(module
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $none_=>_none (func))
 (import "env" "_g" (func $src/lib/xrpl-hooks-api/_g (param i32 i32)))
 (global $assembly/index/runGuard i32 (i32.const 32))
 (global $~lib/memory/__data_end i32 (i32.const 44))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16428))
 (global $~lib/memory/__heap_base i32 (i32.const 16428))
 (memory $0 1)
 (data (i32.const 12) "\1c\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\08\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 2 funcref)
 (elem $0 (i32.const 1) $start:assembly/index~anonymous|0)
 (export "runGuard" (global $assembly/index/runGuard))
 (export "memory" (memory $0))
 (func $start:assembly/index~anonymous|0
  i32.const 1
  i32.const 1
  call $src/lib/xrpl-hooks-api/_g
 )
)
