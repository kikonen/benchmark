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
        sort_naively      0.229  (± 0.0%) i/s -      2.000  in   8.789018s
     sort_rank_array      0.105  (± 0.0%) i/s -      1.000  in   9.492233s
     sort_packed_int      1.511  (± 0.0%) i/s -      8.000  in   5.304817s
          sort_basic      0.126  (± 0.0%) i/s -      1.000  in   7.964408s
 sort_basic_one_step      0.123  (± 0.0%) i/s -      1.000  in   8.142181s
           sort_math      0.139  (± 0.0%) i/s -      1.000  in   7.189132s

Comparison:
     sort_packed_int:        1.5 i/s
        sort_naively:        0.2 i/s - 6.59x  slower
           sort_math:        0.1 i/s - 10.86x  slower
          sort_basic:        0.1 i/s - 12.03x  slower
 sort_basic_one_step:        0.1 i/s - 12.30x  slower
     sort_rank_array:        0.1 i/s - 14.34x  slower

SORT: class
Warming up --------------------------------------
        sort_naively     1.000  i/100ms
     sort_rank_array     1.000  i/100ms
     sort_packed_int     1.000  i/100ms
          sort_basic     1.000  i/100ms
 sort_basic_one_step     1.000  i/100ms
           sort_math     1.000  i/100ms
Calculating -------------------------------------
        sort_naively      0.237  (± 0.0%) i/s -      2.000  in   8.437288s
     sort_rank_array      0.107  (± 0.0%) i/s -      1.000  in   9.384467s
     sort_packed_int      1.502  (± 0.0%) i/s -      8.000  in   5.328268s
          sort_basic      0.152  (± 0.0%) i/s -      1.000  in   6.566372s
 sort_basic_one_step      0.143  (± 0.0%) i/s -      1.000  in   6.972631s
           sort_math      0.167  (± 0.0%) i/s -      1.000  in   5.971838s

Comparison:
     sort_packed_int:        1.5 i/s
        sort_naively:        0.2 i/s - 6.33x  slower
           sort_math:        0.2 i/s - 8.97x  slower
          sort_basic:        0.2 i/s - 9.86x  slower
 sort_basic_one_step:        0.1 i/s - 10.47x  slower
     sort_rank_array:        0.1 i/s - 14.09x  slower

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
        sort_naively      0.199  (± 0.0%) i/s -      1.000  in   5.034394s
     sort_rank_array      0.100  (± 0.0%) i/s -      1.000  in   9.963260s
     sort_packed_int      1.450  (± 0.0%) i/s -      8.000  in   5.543081s
          sort_basic      0.172  (± 0.0%) i/s -      1.000  in   5.828794s
 sort_basic_one_step      0.165  (± 0.0%) i/s -      1.000  in   6.050245s
           sort_math      0.184  (± 0.0%) i/s -      1.000  in   5.420516s

Comparison:
     sort_packed_int:        1.4 i/s
        sort_naively:        0.2 i/s - 7.30x  slower
           sort_math:        0.2 i/s - 7.86x  slower
          sort_basic:        0.2 i/s - 8.45x  slower
 sort_basic_one_step:        0.2 i/s - 8.77x  slower
     sort_rank_array:        0.1 i/s - 14.44x  slower

SORT: class
Warming up --------------------------------------
        sort_naively     1.000  i/100ms
     sort_rank_array     1.000  i/100ms
     sort_packed_int     1.000  i/100ms
          sort_basic     1.000  i/100ms
 sort_basic_one_step     1.000  i/100ms
           sort_math     1.000  i/100ms
Calculating -------------------------------------
        sort_naively      0.234  (± 0.0%) i/s -      2.000  in   8.540108s
     sort_rank_array      0.104  (± 0.0%) i/s -      1.000  in   9.574197s
     sort_packed_int      1.489  (± 0.0%) i/s -      8.000  in   5.372849s
          sort_basic      0.205  (± 0.0%) i/s -      2.000  in   9.779449s
 sort_basic_one_step      0.198  (± 0.0%) i/s -      1.000  in   5.058940s
           sort_math      0.246  (± 0.0%) i/s -      2.000  in   8.137324s

Comparison:
     sort_packed_int:        1.5 i/s
           sort_math:        0.2 i/s - 6.06x  slower
        sort_naively:        0.2 i/s - 6.36x  slower
          sort_basic:        0.2 i/s - 7.28x  slower
 sort_basic_one_step:        0.2 i/s - 7.53x  slower
     sort_rank_array:        0.1 i/s - 14.26x  slower

```
