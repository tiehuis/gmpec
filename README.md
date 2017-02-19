## gmpec

This program should transform arbitrary mathematical expression into optimized
GMP expressions.

```
gmpec '5 + 4 / 2'

mpz_t a;
mpz_init_set_ui(a, 4);
mpz_tdiv_q_ui(a, a, 2);
mpz_add_ui(a, a, 5);
mpz_clear(b);
mpz_clear(a);
```
