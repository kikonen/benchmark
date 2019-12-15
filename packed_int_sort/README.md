https://towardsdatascience.com/bitwise-sorting-in-ruby-47f27bbd9ebf


## ruby packed_int_sort.rb
```
Warming up --------------------------------------
        sort_naively     1.000  i/100ms
     sort_rank_array     1.000  i/100ms
     sort_packed_int     1.000  i/100ms
          sort_basic     1.000  i/100ms
           sort_math     1.000  i/100ms
Calculating -------------------------------------
        sort_naively      0.215  (± 0.0%) i/s -      2.000  in   9.315806s
     sort_rank_array      0.090  (± 0.0%) i/s -      1.000  in  11.126544s
     sort_packed_int      1.448  (± 0.0%) i/s -      8.000  in   5.536280s
          sort_basic      0.121  (± 0.0%) i/s -      1.000  in   8.252476s
           sort_math      0.137  (± 0.0%) i/s -      1.000  in   7.308781s

Comparison:
     sort_packed_int:        1.4 i/s
        sort_naively:        0.2 i/s - 6.72x  slower
           sort_math:        0.1 i/s - 10.58x  slower
          sort_basic:        0.1 i/s - 11.95x  slower
     sort_rank_array:        0.1 i/s - 16.11x  slower

```

## ruby --jit packed_int_sort.rb
```
Warming up --------------------------------------
        sort_naively     1.000  i/100ms
     sort_rank_array     1.000  i/100ms
     sort_packed_int     1.000  i/100ms
          sort_basic     1.000  i/100ms
           sort_math     1.000  i/100ms
Calculating -------------------------------------
        sort_naively      0.191  (± 0.0%) i/s -      1.000  in   5.231135s
     sort_rank_array      0.089  (± 0.0%) i/s -      1.000  in  11.234174s
     sort_packed_int      1.477  (± 0.0%) i/s -      8.000  in   5.420856s
          sort_basic      0.170  (± 0.0%) i/s -      1.000  in   5.894804s
           sort_math      0.197  (± 0.0%) i/s -      1.000  in   5.068088s

Comparison:
     sort_packed_int:        1.5 i/s
           sort_math:        0.2 i/s - 7.48x  slower
        sort_naively:        0.2 i/s - 7.73x  slower
          sort_basic:        0.2 i/s - 8.71x  slower
     sort_rank_array:        0.1 i/s - 16.59x  slower

```
