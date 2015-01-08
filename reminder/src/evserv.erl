-module(evserv).
-compile(export_all).

-record(state, {events,
                clients}).
-record(event, {name="",
                description="",
                pid,
                timeout={{1970,1,1},{0,0,0}}}).

init() ->
  loop(#state{events=orddict:new(),
              clients=orddict:new()}).

loop(State) ->
  receive
    {Pid, MsgRef, {subscribe, Client}} ->

    {Pid, MsgRef, {add, Name, Description, TimeOut}} ->

    {Pid, MsgRef, {cancel, Name}} ->

    shutdown ->

    {'DOWN', Ref, process, _Pid, _Reason} ->

    code_change ->

    Unknown ->
      io:format("Unknown message: ~p~n", [Unknown]),
      loop(State)
  end.
