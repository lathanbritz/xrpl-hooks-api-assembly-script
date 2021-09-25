# XRPL Hooks API for AssemblyScript

XRPL hooks API exports that you can import into your hooks project written in AssemblyScript.

## Background

This was created based on the work done by <a href="https://github.com/XRPL-Labs/xrpld-hooks/commits?author=RichardAH" target="_blank">RichardAH</a>. He has done some great work for XRPL hooks in C and I wanted to try writing my XRPL Hooks in AssemblyScript.

The contents of this lib are based on the headers he created that represent the <a href="https://github.com/XRPL-Labs/xrpld-hooks/blob/hooks-chaining/hook-api-examples/hookapi.h" target="_blank">XRPL Hooks API</a>.

## XRPL Hooks Docs

- <a href="https://github.com/XRPL-Hackathon-2021/hooks-liquidity-pool/blob/master/README.md" target="_blank">Getting setup to use hooks in your local development environment</a>.
- <a href="https://xrpl-hooks.readme.io/" target="_blank">Learn more about XRPL hooks</a>.
- <a href="https://xrpl-hooks.readme.io/reference/hook-api-conventions" target="_blank">Learn more about the API that these declarations provide access to</a>.
- <a href="https://xrpl-hooks.readme.io/docs/loops-and-guarding" target="_blank">Learn more about the GUARD (\_g) function passed from the XRPL to your compiled binary here</a>.

## Usage

1. Pull the library into your project.

   ```
   # From a terminal in the root of your project
   npm -i xrpl-hooks-api-assembly-script -D
   ```

1. import the declarations you want to use into your source code.

   ```
   # assembly/index.ts
   import { _g as GUARD } from 'xrpl-hooks-api-assembly-script'
   ```

1. Use the new declaration in your hook or cback functions.

   ```
   # assembly/index.ts
   export function hook(reserved: i64): i64 {
      GUARD(1,1)
      // Unreached code.
      return 42
   }
   ```

## Contribute

If you want to help out simply fork this repo and submit a PR.

## Contact

- https://twitter.com/jfgrissom
