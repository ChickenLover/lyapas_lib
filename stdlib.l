stoi(F1/i)
    Oi
§1  i*10⇒ i
    @<F1.0-48+i⇒ i
    Q1↦1
    **

itos(i/F1)
§1  i;10 + 48@>F1.0
    Z⇒ i
    i↦1
    **

split(F1/L2)
§1  @+F3(32)
§2  Oc Q1↪4 @<F1.0⇒c
    ↑(c<48)3 ↑(c>57)3
    c @>F3 →2
§3  Oi Q3↪2 *stoi(F3/i)
    i @>L2 →1
§4  Q3↦3 **

sortarr(L1/)
    Oi
§1  Oj
§2  j+1⇒k ↑(L1j<L1k)4
§3  L1j⇒t L1k⇒L1j t⇒L1k
§4  ∆j Q1-i-1⇒n ↑(j<n)2 ∆i ↑(i<Q1)1 **

printarray(L1/)
    Oi
§1  ↑(i=Q1)2
    *printint(L1i/)
    ∆i →1
§2 /'\n'>C **

printint(i/)
    @+F1(16)
    *itos(i/F1)
    @' '>F1
    /F1>C @-F1
