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

if_prime(n/b)
    1⇒b
    ↑(n≠2)1 →4
    §1 100⇒i
    §2 i↪4 ∇i
    n-2⇒t X⇒x x;t+2⇒a
    *gcd(a,n/d) ↑(d≠1)3
    n-1⇒t *pow_mod(a,t,n/r) ↑(r≠1)3
    →2
    §3 Ob
    §4 **

gen_prime(f,t/n)
    §1 X⇒n n;t⇒n n+f⇒n ∇n n↪1
    *if_prime(n/b) b↪1 **
