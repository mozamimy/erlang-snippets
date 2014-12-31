-module(recursive).
-export([fac/1, fac_short/1, tail_fac/1, len/1, tail_len/1]).

fac(N) when N == 0 -> 1;
fac(N) when N > 0 -> N * fac(N-1).

fac_short(0) -> 1;
fac_short(N) when N > 0 -> N * fac_short(N-1).

tail_fac(N) -> tail_fac(N,1).
tail_fac(0,Acc) -> Acc;
tail_fac(N,Acc) when N > 0 -> tail_fac(N-1, N*Acc).

len([]) -> 0;
len([_|T]) -> 1 + len(T).

tail_len(L) -> tail_len(L,0).
tail_len([], Acc) -> Acc;
tail_len([_|T], Acc) -> tail_len(T, Acc+1).
