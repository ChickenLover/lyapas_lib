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

if_prime_ferma(n/b)
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
    *if_prime_ferma(n/b) b↪1 **

pow(a,n/r)
    1⇒r
    §1 n↪2 ∇n
        r*a⇒r →1
    §2 **

decompose_into_power_of_two(n/s,t)
    Os n⇒p
    §1 p/2⇒r ∆s r;2↦2 r⇒p →1
    §2 *pow(2,s/p) n/p⇒t**

if_prime_miller_rabin(n,k/b)
    Ob ↑(n=2)3
    n-1⇒d *decompose_into_power_of_two(d/s,t)
    §1 k↪3 ∇k
        *gen_random(2,d/a)
        *pow_mod(a,t,n/x)
        ↑(x=1)1 ↑(x=d)1
        s-1⇒i
        §2 i↪4 ∇i
            *pow_mod(x,2,n/x)
            ↑(x=1)4 ↑(x=d)1 →2
        →4
    §3 1⇒b
    §4 **
