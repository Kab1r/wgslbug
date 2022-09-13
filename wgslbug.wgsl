//usr/bin/env wgslsmith run $@ $0 ; exit
@group(0)
@binding(0)
var<storage, read_write> flow: array<u32, 2>;

@compute
@workgroup_size(1)
fn main() {
    var LOOP_COUNTER: u32 = 0u;
    loop {
        (flow)[0u] += 1u;
        if (LOOP_COUNTER >= 1u) {
            (flow)[1u] += 1u;
            break;
        }
        LOOP_COUNTER += 1u;
    }
}
