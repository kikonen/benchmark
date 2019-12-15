https://towardsdatascience.com/bitwise-sorting-in-ruby-47f27bbd9ebf


## ruby packed_int_sort.rb
```
SORT: struct
Warming up --------------------------------------
        sort_naively     1.000  i/100ms
     sort_rank_array     1.000  i/100ms
     sort_packed_int     1.000  i/100ms
          sort_basic     1.000  i/100ms
 sort_basic_one_step     1.000  i/100ms
           sort_math     1.000  i/100ms
Calculating -------------------------------------
        sort_naively      0.210  (± 0.0%) i/s -      2.000  in   9.506903s
     sort_rank_array      0.104  (± 0.0%) i/s -      1.000  in   9.619263s
     sort_packed_int      1.011  (± 0.0%) i/s -      6.000  in   5.935558s
          sort_basic      0.127  (± 0.0%) i/s -      1.000  in   7.891122s
 sort_basic_one_step      0.124  (± 0.0%) i/s -      1.000  in   8.052570s
           sort_math      0.138  (± 0.0%) i/s -      1.000  in   7.253103s

Comparison:
     sort_packed_int:        1.0 i/s
        sort_naively:        0.2 i/s - 4.81x  slower
           sort_math:        0.1 i/s - 7.33x  slower
          sort_basic:        0.1 i/s - 7.98x  slower
 sort_basic_one_step:        0.1 i/s - 8.14x  slower
     sort_rank_array:        0.1 i/s - 9.72x  slower

SORT: class
Warming up --------------------------------------
        sort_naively     1.000  i/100ms
     sort_rank_array     1.000  i/100ms
     sort_packed_int     1.000  i/100ms
          sort_basic     1.000  i/100ms
 sort_basic_one_step     1.000  i/100ms
           sort_math     1.000  i/100ms
Calculating -------------------------------------
        sort_naively      0.238  (± 0.0%) i/s -      2.000  in   8.425157s
     sort_rank_array      0.106  (± 0.0%) i/s -      1.000  in   9.414775s
     sort_packed_int      1.077  (± 0.0%) i/s -      6.000  in   5.575480s
          sort_basic      0.152  (± 0.0%) i/s -      1.000  in   6.585842s
 sort_basic_one_step      0.146  (± 0.0%) i/s -      1.000  in   6.832492s
           sort_math      0.167  (± 0.0%) i/s -      1.000  in   5.982841s

Comparison:
     sort_packed_int:        1.1 i/s
        sort_naively:        0.2 i/s - 4.53x  slower
           sort_math:        0.2 i/s - 6.44x  slower
          sort_basic:        0.2 i/s - 7.09x  slower
 sort_basic_one_step:        0.1 i/s - 7.36x  slower
     sort_rank_array:        0.1 i/s - 10.14x  slower

```

## ruby --jit packed_int_sort.rb
```
SORT: struct
Warming up --------------------------------------
        sort_naively     1.000  i/100ms
     sort_rank_array     1.000  i/100ms
     sort_packed_int     1.000  i/100ms
          sort_basic     1.000  i/100ms
 sort_basic_one_step     1.000  i/100ms
           sort_math     1.000  i/100ms
Calculating -------------------------------------
        sort_naively      0.200  (± 0.0%) i/s -      2.000  in  10.005893s
     sort_rank_array      0.106  (± 0.0%) i/s -      1.000  in   9.403001s
     sort_packed_int      0.981  (± 0.0%) i/s -      5.000  in   5.110406s
          sort_basic      0.171  (± 0.0%) i/s -      1.000  in   5.843084s
 sort_basic_one_step      0.167  (± 0.0%) i/s -      1.000  in   5.981605s
           sort_math      0.184  (± 0.0%) i/s -      1.000  in   5.425104s

Comparison:
     sort_packed_int:        1.0 i/s
        sort_naively:        0.2 i/s - 4.91x  slower
           sort_math:        0.2 i/s - 5.32x  slower
          sort_basic:        0.2 i/s - 5.73x  slower
 sort_basic_one_step:        0.2 i/s - 5.87x  slower
     sort_rank_array:        0.1 i/s - 9.22x  slower

SORT: class
Warming up --------------------------------------
        sort_naively     1.000  i/100ms
     sort_rank_array     1.000  i/100ms
     sort_packed_int     1.000  i/100ms
          sort_basic     1.000  i/100ms
 sort_basic_one_step     1.000  i/100ms
           sort_math     1.000  i/100ms
Calculating -------------------------------------
        sort_naively      0.235  (± 0.0%) i/s -      2.000  in   8.501550s
     sort_rank_array      0.108  (± 0.0%) i/s -      1.000  in   9.289791s
     sort_packed_int      1.079  (± 0.0%) i/s -      6.000  in   5.561784s
          sort_basic      0.208  (± 0.0%) i/s -      2.000  in   9.603044s
 sort_basic_one_step      0.181  (± 0.0%) i/s -      1.000  in   5.532508s
           sort_math      0.254  (± 0.0%) i/s -      2.000  in   7.870177s

Comparison:
     sort_packed_int:        1.1 i/s
           sort_math:        0.3 i/s - 4.25x  slower
        sort_naively:        0.2 i/s - 4.58x  slower
          sort_basic:        0.2 i/s - 5.18x  slower
 sort_basic_one_step:        0.2 i/s - 5.97x  slower
     sort_rank_array:        0.1 i/s - 10.02x  slower

```
