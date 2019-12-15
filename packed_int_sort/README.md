https://towardsdatascience.com/bitwise-sorting-in-ruby-47f27bbd9ebf

## ruby packed_int_sort.rb
```
Warming up --------------------------------------
        sort_naively     1.000  i/100ms
     sort_rank_array     1.000  i/100ms
     sort_packed_int     1.000  i/100ms
          sort_basic     1.000  i/100ms
 sort_basic_one_step     1.000  i/100ms
           sort_math     1.000  i/100ms
Calculating -------------------------------------
        sort_naively      0.229  (± 0.0%) i/s -      2.000  in   8.746691s
     sort_rank_array      0.106  (± 0.0%) i/s -      1.000  in   9.436469s
     sort_packed_int      1.551  (± 0.0%) i/s -      8.000  in   5.157367s
          sort_basic      0.131  (± 0.0%) i/s -      1.000  in   7.642033s
 sort_basic_one_step      0.126  (± 0.0%) i/s -      1.000  in   7.963505s
           sort_math      0.139  (± 0.0%) i/s -      1.000  in   7.215430s

Comparison:
     sort_packed_int:        1.6 i/s
        sort_naively:        0.2 i/s - 6.77x  slower
           sort_math:        0.1 i/s - 11.19x  slower
          sort_basic:        0.1 i/s - 11.86x  slower
 sort_basic_one_step:        0.1 i/s - 12.35x  slower
     sort_rank_array:        0.1 i/s - 14.64x  slower

```

## ruby --jit packed_int_sort.rb
```
Warming up --------------------------------------
        sort_naively     1.000  i/100ms
     sort_rank_array     1.000  i/100ms
     sort_packed_int     1.000  i/100ms
          sort_basic     1.000  i/100ms
 sort_basic_one_step     1.000  i/100ms
           sort_math     1.000  i/100ms
Calculating -------------------------------------
        sort_naively      0.198  (± 0.0%) i/s -      1.000  in   5.062675s
     sort_rank_array      0.102  (± 0.0%) i/s -      1.000  in   9.811657s
     sort_packed_int      1.508  (± 0.0%) i/s -      8.000  in   5.308649s
          sort_basic      0.181  (± 0.0%) i/s -      1.000  in   5.534238s
 sort_basic_one_step      0.168  (± 0.0%) i/s -      1.000  in   5.969377s
           sort_math      0.190  (± 0.0%) i/s -      1.000  in   5.249349s

Comparison:
     sort_packed_int:        1.5 i/s
        sort_naively:        0.2 i/s - 7.64x  slower
           sort_math:        0.2 i/s - 7.92x  slower
          sort_basic:        0.2 i/s - 8.35x  slower
 sort_basic_one_step:        0.2 i/s - 9.00x  slower
     sort_rank_array:        0.1 i/s - 14.80x  slower

```
