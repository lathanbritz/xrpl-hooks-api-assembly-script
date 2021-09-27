/*
  Understanding what is happening here:
  @external decorator: The XRPL will export functions that your hook 
  can consume and use (like _g).
  
  declare: The declaration of each function here creates the contract 
  between your code and the compiler that essentially says, "I promise
  the XRPL will provide this function at runtime so don't throw a 
  compiler error."

  export: The export of these declarations make it possible for you to 
  use these in your hooks without needing to write each of them yourself.
*/

@external('env', '_g')
export declare function _g(
  id: i32,
  maxiter: i32
): void

// https://xrpl-hooks.readme.io/reference/trace
// Per Richard Holland:
// The i32 is actually a pointer within the wasm memory to the start of the  string.
// The string in this case is an array of uint16_t's because assembly script uses utf-16. 
// Every buffer passed to a hook api is passed via a pair of i32s constituting a pointer 
// (location in the wasm linear memory) and a length indicating where to find the end of
// that buffer. 
// The trace functions in the hooks api detects utf16 if you send it and will down convert
// (in a lossy way) to ascii.
// This is why the length parameter is string.length * 2, because the underlying buffer contains
// two bytes per character because it is a utf16 buffer.
// It should be noted the i32's are actually u32s (i.e. unsigned) but the hook api 
// doesn't care for the purposes of export and it would never matter practically 
// because a hook's memory is never allowed to be so large as to impinge on the sign bit.
@external('env', 'trace')
export declare function trace(
  mread_prt: string | null,
  mread_len: u32 | null,
  dread_prt: string,
  dread_len: u32,
  as_hex: u32
): i64 
