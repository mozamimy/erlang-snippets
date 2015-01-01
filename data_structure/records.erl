-module(records).
-compile(export_all).
-include("records.hrl").

-record(robot, {name,
                type=industrial,
                hobbies,
                details=[]}).

-record(user, {id, name, group, age}).

%% robot
first_robot() ->
  #robot{name="Mechatron",
         type=handmade,
         details=["Moved by a small inside"]}.

car_factory(CorpName) ->
  #robot{name=CorpName, hobbies="building cars"}.

%% user
admin_panel(#user{name=Name, group=admin}) ->
  Name ++ " is allowd!";
admin_panel(#user{name=Name}) ->
  Name ++ " is not allowd".

adult_section(U = #user{}) when U#user.age >= 18 ->
  allowd;
adult_section(_) ->
  forbidden.

repairman(Rob) ->
  Details = Rob#robot.details,
  NewRob = Rob#robot{details=["Repaired by repairman"|Details]},
  {repaired, NewRob}.

included() -> #included{some_field="Some value"}.
