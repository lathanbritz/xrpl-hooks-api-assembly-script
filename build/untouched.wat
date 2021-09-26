(module
 (type $none_=>_none (func))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_i32_i32_=>_i64 (func (param i32 i32 i32 i32 i32) (result i64)))
 (import "env" "_g" (func $src/lib/xrpl-hooks-api/_g (param i32 i32)))
 (import "env" "trace" (func $src/lib/xrpl-hooks-api/trace (param i32 i32 i32 i32 i32) (result i64)))
 (global $assembly/index/runGuard i32 (i32.const 32))
 (global $assembly/index/traceString i32 (i32.const 64))
 (global $~lib/memory/__data_end i32 (i32.const 76))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16460))
 (global $~lib/memory/__heap_base i32 (i32.const 16460))
 (memory $0 1)
 (data (i32.const 12) "\1c\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\08\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 44) "\1c\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\08\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 3 funcref)
 (elem $0 (i32.const 1) $start:assembly/index~anonymous|0 $start:assembly/index~anonymous|1)
 (export "runGuard" (global $assembly/index/runGuard))
 (export "traceString" (global $assembly/index/traceString))
 (export "memory" (memory $0))
 (func $start:assembly/index~anonymous|0
  i32.const 1
  i32.const 1
  call $src/lib/xrpl-hooks-api/_g
 )
 (func $start:assembly/index~anonymous|1
  i32.const 0
  i32.const 1
  i32.const 0
  i32.const 1
  i32.const 0
  call $src/lib/xrpl-hooks-api/trace
  drop
 )
)
