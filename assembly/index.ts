/*
  Understanding this file:
  This file NOT an example of how to use these functions passed in from the environment.

  This file is being used to simply test out the functions.

  Real XRPL hooks can only have 2 functions in them (hook, cbak).
  See https://xrpl-hooks.readme.io/docs/compiling-hooks for details.
*/

import { _g as GUARD, trace as TRACE } from '../src/lib/xrpl-hooks-api'

export const runGuard = (): void => {
  GUARD(1, 1)
}

export const traceString = (): void => {
  const message = 'testing'
  TRACE(message, message.length, message, message.length, 0)
}
