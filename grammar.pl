:-include(main).

%Game Loop
run:-write("test"),nl,repeat,read_words(W),parse(C,W),Command=C,do(C),nl,has_won,!.
  

parse([V],L):-verb(V,L-[]),!.
parse([V,N],L):-verb(V,L-NP), noun(N,NP - []),!.
%parse([V,D,P1,P2],L):-verb(V,L-NP),noun(D,RL - RP), noun(P1, QL - QR), noun(P2, AR - []),!.

%!agricultural_science
%!animal_science
%!avenue
%!bedroom
%!bedroom_closet
%!chemistry_lab
%!closet
%!common_room
%!computer_lab
%!elevator
%!engr
%!eslc_north
%!eslc_south
%!geology_building
%!hall
%!hub
%!kitchen
%!laser_lab
%!library
%!observatory
%!old_main
%!plaza
%!quad
%!roof
%!roommate_room
%!secret_lab
%!ser_1st_floor
%!ser_2nd_floor
%!special_collections
%!tsc
%!tsc_patio
%!tunnels_east
%!tunnels_north
%!tunnels_west


noun(agricultural_science,["the","agricultural","science" | X] - X).
noun(animal_science,["the","animal","science" | X] - X).
noun(avenue,["the","avenue" | X] - X).
noun(bedroom,["the","bedroom" | X] - X).
noun(bedroom,["the","bed","room" | X] - X).
noun(bedroom_closet,["the","bedroom","closet" | X] - X).
noun(bedroom_closet,["the","bed","room","closet" | X] - X).
noun(chemistry_lab,["the","chemistry","lab" | X] - X).
noun(chemistry_lab,["the","chem","lab" | X] - X).
noun(chemistry_lab,["the","chemistry","laboratory" | X] - X).
noun(closet,["the","closet" | X] - X).
noun(common_room,["the","common","room" | X] - X).
noun(computer_lab,["the","computer","lab" | X] - X).
noun(computer_lab,["the","computer","laboratory" | X] - X).
noun(elevator,["the","elevator" | X] - X).
noun(engr,["the","engr" | X] - X).
noun(engr,["the","engineering" | X] - X).
noun(engr,["the","ENGR" | X] - X).
noun(eslc_south,["the","eslc","south" | X] - X).
noun(eslc_north,["the","eslc","north" | X] - X).
noun(geology_building,["the","geology" | X] - X).
noun(geology_building,["the","geology","building" | X] - X).
noun(hall,["the","hall" | X] - X).
noun(hall,["the","hallway" | X] - X).
noun(hub,["the","hub" | X] - X).
noun(hub,["the","tsc","hub" | X] - X).
noun(kitchen,["the","kitchen" | X] - X).
noun(laser_lab,["the","laser","laboratory" | X] - X).
noun(laser_lab,["the","laser","lab" | X] - X).
noun(library,["the","library" | X] - X).
noun(library,["the","lib" | X] - X).
noun(observatory,["the","observatory" | X] - X).
noun(old_main,["the","old","main" | X] - X).
noun(plaza,["the","plaza" | X] - X).
noun(quad,["the","quad" | X] - X).
noun(roof,["the","roof" | X] - X).
noun(roof,["the","rooftop" | X] - X).
noun(roommate_room,["the","roommate","room" | X] - X).
noun(roommate_room,["the","roommate's","room" | X] - X).
noun(secret_lab,["the","secret","lab" | X] - X).
noun(secret_lab,["the","secret","laboratory" | X] - X).
noun(ser_1st_floor,["the","ser","first","floor" | X] - X).
noun(ser_1st_floor,["the","ser","1st","floor" | X] - X).
noun(ser_2nd_floor,["the","ser","second","floor" | X] - X).
noun(ser_2nd_floor,["the","ser","2nd","floor" | X] - X).
noun(tsc,["the","tsc" | X] - X).
noun(tsc,["the","taggard","student","center" | X] - X).
noun(tsc_patio,["the","tsc","patio" | X] - X).
noun(tsc_patio,["the","taggart","student","center patio" | X] - X).
noun(tunnels_east,["the","tunnels","east" | X] - X).
noun(tunnels_east,["the","tunnel","east" | X] - X).
noun(tunnels_north,["the","tunnels","north" | X] - X).
noun(tunnels_north,["the","tunnel","north" | X] - X).
noun(tunnels_west,["the","tunnel","west" | X] - X).
noun(tunnels_west,["the","tunnels","west" | X] - X).

noun(agricultural_science,["agricultural","science" | X] - X).
noun(animal_science,["animal","science" | X] - X).
noun(avenue,["avenue" | X] - X).
noun(bedroom,["bedroom" | X] - X).
noun(bedroom,["bed","room" | X] - X).
noun(bedroom_closet,["bedroom","closet" | X] - X).
noun(bedroom_closet,["bed","room","closet" | X] - X).
noun(chemistry_lab,["chemistry","lab" | X] - X).
noun(chemistry_lab,["chem","lab" | X] - X).
noun(chemistry_lab,["chemistry","laboratory" | X] - X).
noun(closet,["closet" | X] - X).
noun(common_room,["common","room" | X] - X).
noun(computer_lab,["computer","lab" | X] - X).
noun(computer_lab,["computer","laboratory" | X] - X).
noun(elevator,["elevator" | X] - X).
noun(engr,["engr" | X] - X).
noun(engr,["engineering" | X] - X).
noun(engr,["ENGR" | X] - X).
noun(eslc_south,["eslc","south" | X] - X).
noun(eslc_north,["eslc","north" | X] - X).
noun(geology_building,["geology" | X] - X).
noun(geology_building,["geology","building" | X] - X).
noun(hall,["hall" | X] - X).
noun(hall,["hallway" | X] - X).
noun(hub,["hub" | X] - X).
noun(hub,["tsc","hub" | X] - X).
noun(kitchen,["kitchen" | X] - X).
noun(laser_lab,["laser","laboratory" | X] - X).
noun(laser_lab,["laser","lab" | X] - X).
noun(library,["library" | X] - X).
noun(library,["lib" | X] - X).
noun(observatory,["observatory" | X] - X).
noun(old_main,["old","main" | X] - X).
noun(plaza,["plaza" | X] - X).
noun(quad,["quad" | X] - X).
noun(roof,["roof" | X] - X).
noun(roof,["rooftop" | X] - X).
noun(roommate_room,["roommate","room" | X] - X).
noun(roommate_room,["roommate's","room" | X] - X).
noun(secret_lab,["secret","lab" | X] - X).
noun(secret_lab,["secret","laboratory" | X] - X).
noun(ser_1st_floor,["ser","first","floor" | X] - X).
noun(ser_1st_floor,["ser","1st","floor" | X] - X).
noun(ser_2nd_floor,["ser","second","floor" | X] - X).
noun(ser_2nd_floor,["ser","2nd","floor" | X] - X).
noun(tsc,["tsc" | X] - X).
noun(tsc,["taggard","student","center" | X] - X).
noun(tsc_patio,["tsc","patio" | X] - X).
noun(tsc_patio,["taggart","student","center patio" | X] - X).
noun(tunnels_east,["tunnels","east" | X] - X).
noun(tunnels_east,["tunnel","east" | X] - X).
noun(tunnels_north,["tunnels","north" | X] - X).
noun(tunnels_north,["tunnel","north" | X] - X).
noun(tunnels_west,["tunnel","west" | X] - X).
noun(tunnels_west,["tunnels","west" | X] - X).


%objects
%!bone
%!book_a
%!book_b
%!book_c
%!bunsen_burner
%!charged_bone
%!clean_clothes
%!coat
%!dirty_clothes
%!figurine
%!flask
%!fly
%!goggles
%!green_beam
%!ice_cream
%!key
%!laser
%!lost_homework
%!movie
%!note
%!potion
%!recipe


noun(bone,["bone" | X] - X).
noun(book_a,["book","a" | X] - X).
noun(book_a,["book_a" | X] - X).
noun(book_b,["book_b" | X] - X).
noun(book_b,["book","b" | X] - X).
noun(book_c,["book_c)" | X] - X).
noun(book_c,["book","c" | X] - X).
noun(bunsen_burner,["bunsen","burner" | X] - X).
noun(bunsen_burner,["bunsen_burner" | X] - X).
noun(charged_bone,["charged_bone" | X] - X).
noun(charged_bone,["charged","bone" | X] - X).
noun(clean_clothes,["clean_clothes" | X] - X).
noun(clean_clothes,["clean","clothes" | X] - X).
noun(coat,["coat" | X] - X).
noun(coat,["sweater" | X] - X).
noun(coat,["jacket" | X] - X).
noun(dirty_clothes,["dirty_clothes" | X] - X).
noun(dirty_clothes,["dirty","clothes" | X] - X).
noun(figurine,["figurine" | X] - X).
noun(flask,["flask" | X] - X).
noun(fly,["fly" | X] - X).
noun(goggles,["goggles" | X] - X).
noun(green_beam,["green","beam" | X] - X).
noun(green_beam,["green_beam" | X] - X).
noun(ice_cream,["ice_cream" | X] - X).
noun(ice_cream,["ice","cream" | X] - X).
noun(key,["key" | X] - X).
noun(laser,["laser" | X] - X).
noun(lost_homework,["lost_homework" | X] - X).
noun(lost_homework,["lost","homework" | X] - X).
noun(movie,["movie" | X] - X).
noun(note,["note" | X] - X).
noun(potion,["potion" | X] - X).
noun(recipe,["recipe" | X] - X).


noun(bone,["a","bone" | X] - X).
noun(book_a,["a","book","a" | X] - X).
noun(book_a,["a","book_a" | X] - X).
noun(book_b,["a","book_b" | X] - X).
noun(book_b,["a","book","b" | X] - X).
noun(book_c,["a","book_c)" | X] - X).
noun(book_c,["a","book","c" | X] - X).
noun(bunsen_burner,["a","bunsen","burner" | X] - X).
noun(bunsen_burner,["a","bunsen_burner" | X] - X).
noun(charged_bone,["a","charged_bone" | X] - X).
noun(charged_bone,["a","charged","bone" | X] - X).
noun(clean_clothes,["a","clean_clothes" | X] - X).
noun(clean_clothes,["a","clean","clothes" | X] - X).
noun(coat,["a","coat" | X] - X).
noun(coat,["a","sweater" | X] - X).
noun(coat,["a","jacket" | X] - X).
noun(dirty_clothes,["a","dirty_clothes" | X] - X).
noun(dirty_clothes,["a","dirty","clothes" | X] - X).
noun(figurine,["a","figurine" | X] - X).
noun(flask,["a","flask" | X] - X).
noun(fly,["a","fly" | X] - X).
noun(goggles,["a","goggles" | X] - X).
noun(green_beam,["a","green","beam" | X] - X).
noun(green_beam,["a","green_beam" | X] - X).
noun(ice_cream,["a","ice_cream" | X] - X).
noun(ice_cream,["a","ice","cream" | X] - X).
noun(key,["a","key" | X] - X).
noun(laser,["a","laser" | X] - X).
noun(lost_homework,["a","lost_homework" | X] - X).
noun(lost_homework,["a","lost","homework" | X] - X).
noun(movie,["a","movie" | X] - X).
noun(note,["a","note" | X] - X).
noun(potion,["a","potion" | X] - X).
noun(recipe,["a","recipe" | X] - X).

noun(bone,["an","bone" | X] - X).
noun(book_a,["an","book","a" | X] - X).
noun(book_a,["an","book_a" | X] - X).
noun(book_b,["an","book_b" | X] - X).
noun(book_b,["an","book","b" | X] - X).
noun(book_c,["an","book_c)" | X] - X).
noun(book_c,["an","book","c" | X] - X).
noun(bunsen_burner,["an","bunsen","burner" | X] - X).
noun(bunsen_burner,["an","bunsen_burner" | X] - X).
noun(charged_bone,["an","charged_bone" | X] - X).
noun(charged_bone,["an","charged","bone" | X] - X).
noun(clean_clothes,["an","clean_clothes" | X] - X).
noun(clean_clothes,["an","clean","clothes" | X] - X).
noun(coat,["an","coat" | X] - X).
noun(coat,["an","sweater" | X] - X).
noun(coat,["an","jacket" | X] - X).
noun(dirty_clothes,["an","dirty_clothes" | X] - X).
noun(dirty_clothes,["an","dirty","clothes" | X] - X).
noun(figurine,["an","figurine" | X] - X).
noun(flask,["an","flask" | X] - X).
noun(fly,["an","fly" | X] - X).
noun(goggles,["an","goggles" | X] - X).
noun(green_beam,["an","green","beam" | X] - X).
noun(green_beam,["an","green_beam" | X] - X).
noun(ice_cream,["an","ice_cream" | X] - X).
noun(ice_cream,["an","ice","cream" | X] - X).
noun(key,["an","key" | X] - X).
noun(laser,["an","laser" | X] - X).
noun(lost_homework,["an","lost_homework" | X] - X).
noun(lost_homework,["an","lost","homework" | X] - X).
noun(movie,["an","movie" | X] - X).
noun(note,["an","note" | X] - X).
noun(potion,["an","potion" | X] - X).
noun(recipe,["an","recipe" | X] - X).

noun(bone,["the","bone" | X] - X).
noun(book_a,["the","book","a" | X] - X).
noun(book_a,["the","book_a" | X] - X).
noun(book_b,["the","book_b" | X] - X).
noun(book_b,["the","book","b" | X] - X).
noun(book_c,["the","book_c)" | X] - X).
noun(book_c,["the","book","c" | X] - X).
noun(bunsen_burner,["the","bunsen","burner" | X] - X).
noun(bunsen_burner,["the","bunsen_burner" | X] - X).
noun(charged_bone,["the","charged_bone" | X] - X).
noun(charged_bone,["the","charged","bone" | X] - X).
noun(clean_clothes,["the","clean_clothes" | X] - X).
noun(clean_clothes,["the","clean","clothes" | X] - X).
noun(coat,["the","coat" | X] - X).
noun(coat,["the","sweater" | X] - X).
noun(coat,["the","jacket" | X] - X).
noun(dirty_clothes,["the","dirty_clothes" | X] - X).
noun(dirty_clothes,["the","dirty","clothes" | X] - X).
noun(figurine,["the","figurine" | X] - X).
noun(flask,["the","flask" | X] - X).
noun(fly,["the","fly" | X] - X).
noun(goggles,["the","goggles" | X] - X).
noun(green_beam,["the","green","beam" | X] - X).
noun(green_beam,["the","green_beam" | X] - X).
noun(ice_cream,["the","ice_cream" | X] - X).
noun(ice_cream,["the","ice","cream" | X] - X).
noun(key,["the","key" | X] - X).
noun(laser,["the","laser" | X] - X).
noun(lost_homework,["the","lost_homework" | X] - X).
noun(lost_homework,["the","lost","homework" | X] - X).
noun(movie,["the","movie" | X] - X).
noun(note,["the","note" | X] - X).
noun(potion,["the","potion" | X] - X).
noun(recipe,["the","recipe" | X] - X).

%!All actions recognizable by function
%!move
%!put
%!take
%!look
%!study
%!quit
%!inventory
%!transfer
%make

verb(move,["move" | X] - X).
verb(put, ["put" | X] - X).
verb(take, ["take" | X] - X).
verb(look, ["look" | X] - X).
verb(study, ["study" | X] - X).
verb(quit, ["quit" | X] - X).
verb(inventory, ["inventory"]).
verb(transer, ["transfer" | X] - X).

verb(move,["climb" | X] - X).
verb(move,["go" | X] - X).
verb(move,["head" | X] - X).
verb(move,["run" | X] - X).
verb(move,["travel" | X] - X).
verb(move,["walk" | X] - X).
verb(move,["skip" | X] - X).

verb(take,["take" | X] - X).
verb(take,["steal" | X] - X).
verb(take,["pick" | X] - X).
verb(take,["grab" | X] - X).
verb(put,["place" | X] - X).
verb(put,["drop" | X] - X).
verb(put,["put" | X] - X).

verb(move,["go","to" | X] - X).
verb(move,["go","the" | X] - X).
verb(move,["go","to","the" | X] - X).
verb(move,["move","to" | X] - X).
verb(move,["move","the" | X] - X).
verb(move,["move","to","the" | X] - X).
verb(put, ["put","the" | X] - X).
verb(take, ["take","the" | X] - X).
verb(look, ["look","at" | X] - X).
verb(look, ["look","at","the" | X] - X).
verb(study, ["study","the" | X] - X).
verb(quit, ["quit","the" | X] - X).
verb(inventory, ["inventory"]).
verb(transer, ["transfer","the" | X] - X).


verb(move,["climb","the" | X] - X).
verb(move,["go","the" | X] - X).
verb(move,["head","the" | X] - X).
verb(move,["run","the" | X] - X).
verb(move,["travel","the" | X] - X).
verb(move,["travel","to" | X] - X).
verb(move,["travel","to","the" | X] - X).
verb(move,["walk","to" | X] - X).
verb(move,["skip","to" | X] - X).

verb(take,["take","the" | X] - X).
verb(take,["steal","the" | X] - X).
verb(take,["pick","up" | X] - X).
verb(take,["pick","up","a" | X] - X).
verb(take,["pick","up","the" | X] - X).
verb(take,["pick","the" | X] - X).
verb(take,["grab","the" | X] - X).
verb(put,["place","the" | X] - X).
verb(put,["drop","the" | X] - X).
verb(put,["put","the" | X] - X).

verb(look,["look" | X] - X).
verb(look,["look","at" | X] - X).
verb(look,["look","at","the" | X] - X).
verb(inventory,["inventory" | X] - X).
verb(inventory,["inv" | X] - X).
verb(quit,["quit" | X] - X).
verb(quit,["exit" | X] - X).
verb(quit,["kill" | X] - X).
verb(quit,["halt" | X] - X).
verb(quit,["stop" | X] - X).


%!don't care about these words
%!a
%!an
%!around
%!in
%!inside
%!the
%!to
%!toward
%!up


%Context sensitive sentences "Walk outside"
noun(plaza,["outside" | X] - X):-here(common_room).
noun(quad,["outside" | X] - X):-here(avenue).
noun(plaza,["outside" | X] - X):-here(avenue).
noun(plaza,["outside" | X] - X):-here(common_room).
noun(plaza,["outside" | X] - X):-here(engr).
noun(plaza,["outside" | X] - X):-here(ser_1st_floor).
noun(quad,["outside" | X] - X):-here(agricultural_science).
noun(quad,["outside" | X] - X):-here(animal_science).
noun(quad,["outside" | X] - X):-here(eslc_south).
noun(quad,["outside" | X] - X):-here(geology_building).
noun(quad,["outside" | X] - X):-here(old_main).
noun(quad,["outside" | X] - X):-here(tsc_patio).
noun(roof,["outside" | X] - X):-here(observatory).
noun(tsc_patio,["outside" | X] - X):-here(tsc).