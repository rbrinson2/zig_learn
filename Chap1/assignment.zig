const expect = @import("std").testing.expect;

test "assignment" {
    const constant = 5;
    var variable: i32 = 10;

    const inferred_constant = @as(i32, 5);
    var inferred_variable = @as(i32, 10);

    try expect(constant == 5);
    try expect(variable == 10);
    try expect(inferred_constant == constant);
    try expect(inferred_variable == variable);
}

test "inferred assignment" {
    const inferred_constant = @as(i32, 5);
    var inferred_var = @as(i32, 10);

    try expect(inferred_var == inferred_constant * 2);
}
