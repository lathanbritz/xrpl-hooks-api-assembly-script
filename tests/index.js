const assert = require('assert')
const wasm = require('..')

// For now just check to see if this exists.
// TODO: Create env that mocks XRPL and pass in _g function.
assert(wasm.runGuard, true)

console.log('TODO: Figure out how to test this. Feel free to submit a PR.')
