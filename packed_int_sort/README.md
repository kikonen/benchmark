```
$ ruby packed_int_sort.rb
Warming up --------------------------------------
        sort_naively     1.000  i/100ms
     sort_rank_array     1.000  i/100ms
     sort_packed_int     1.000  i/100ms
          sort_basic     1.000  i/100ms
Calculating -------------------------------------
        sort_naively      0.232  (± 0.0%) i/s -      3.000  in  12.927605s
     sort_rank_array      0.099  (± 0.0%) i/s -      1.000  in  10.146673s
     sort_packed_int      1.510  (± 0.0%) i/s -     16.000  in  10.610212s
          sort_basic      0.127  (± 0.0%) i/s -      2.000  in  15.748589s

Comparison:
     sort_packed_int:        1.5 i/s
        sort_naively:        0.2 i/s - 6.50x  slower
          sort_basic:        0.1 i/s - 11.89x  slower
     sort_rank_array:        0.1 i/s - 15.33x  slower
```
