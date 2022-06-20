#!/usr/bin/env -S v run
// Id$ nonnax 2022-06-20 19:38:01
import os

// works on a *nix env
tmp := '/tmp/eval.v'

editor := os.getenv('EDITOR')
res := os.execute('$editor $tmp')

os.write_file(tmp, res.output)?
out := os.execute('v run $tmp')

// output
println(out.output.trim_space())
