const expect = @import("std").testing.expect;

test "arrays" {
    const a = [5]u8{ 'h', 'e', 'l', 'l', 'o' };
    const b = [_]u8{ 'w', 'o', 'r', 'l', 'd' };

    try expect(b.len == a.len);
}
