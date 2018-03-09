mul_mod(a,b,m/r)
    ↑(b≠1)1 a⇒r →3
    §1 b;2↦2 b/2⇒h *mul_mod(a,h,m/t) 2*t;m⇒r →3
    §2 b-1⇒h *mul_mod(a,h,m/r) r+a⇒r r;m⇒r
    §3 **

pow_mod(a,b,m/r)
    b↦1 1⇒r →3
    §1 b;2↦2 b/2⇒h *pow_mod(a,h,m/r) *mul_mod(r,r,m/r) r;m⇒r →3
    §2 b-1⇒h *pow_mod(a,h,m/r) *mul_mod(r,a,m/r) r;m⇒r
    §3 **

gcd(a,b/d)
    §1 ↑(a≥b)2
    b;a⇒b →3
    §2 a;b⇒a
    §3 a↪4 b↪4 →1
    §4 a+b⇒d
    **


