



#agricultural_science
#animal_science
#avenue
#bedroom
#bedroom_closet
#chemistry_lab
#closet
#common_room
#computer_lab
#elevator
#engr
#eslc_north
#eslc_south
#geology_building
#hall
#hub
#kitchen
#laser_lab
#library
#observatory
#old_main
#plaza
#quad
#roof
#roommate_room
#secret_lab
#ser_1st_floor
#ser_2nd_floor
#special_collections
#tsc
#tsc_patio
#tunnels_east
#tunnels_north
#tunnels_west

equivalent(agricultural_science,"agricultural science").
equivalent(animal_science,"animal science").
equivalent(avenue,"avenue").
equivalent(bedroom,"bedroom").
equivalent(bedroom,"bed room").
equivalent(bedroom_closet,"bedroom closet").
equivalent(bedroom_closet,"bed room closet").
equivalent(chemistry_lab,"chemistry lab").
equivalent(chemistry_lab,"chem lab").
equivalent(chemistry_lab,"chemistry laboratory").
equivalent(closet,"closet").
equivalent(common_room,"common room").
equivalent(computer_lab,"computer lab").
equivalent(computer_lab,"computer laboratory").
equivalent(elevator,"elevator").
equivalent(engr,"engr").
equivalent(engr,"engineering").
equivalent(engr,"ENGR").
equivalent(eslc_south,"eslc south").
equivalent(eslc_north,"eslc north").
equivalent(geology_building,"geology").
equivalent(geology_building,"geology building").
equivalent(hall,"hall").
equivalent(hall,"hallway").
equivalent(hub,"hub").
equivalent(hub,"tsc hub").
equivalent(kitchen,"kitchen").
equivalent(laser_lab,"laser laboratory").
equivalent(laser_lab,"laser lab").
equivalent(library,"library").
equivalent(library,"lib").
equivalent(observatory,"observatory").
equivalent(old_main,"old main").
equivalent(plaza,"plaza").
equivalent(quad,"quad").
equivalent(roof,"roof").
equivalent(roof,"rooftop").
equivalent(roommate_room,"roommate room").
equivalent(roommate_room,"roommate's room").
equivalent(secret_lab,"secret lab").
equivalent(secret_lab,"secret laboratory").
equivalent(ser_1st_floor,"ser first floor").
equivalent(ser_1st_floor,"ser 1st floor").
equivalent(ser_2nd_floor,"ser second floor").
equivalent(ser_2nd_floor,"ser 2nd floor").
equivalent(tsc,"tsc").
equivalent(tsc,"taggard student center").
equivalent(tsc_patio,"tsc patio").
equivalent(tsc_patio,"taggart student center patio").
equivalent(tunnels_east,"tunnels east").
equivalent(tunnels_east,"tunnel east").
equivalent(tunnels_north,"tunnels north").
equivalent(tunnels_north,"tunnel north").
equivalent(tunnels_west,"tunnel west").
equivalent(tunnels_west,"tunnels west").


#movement verbs
equivalent(move,"climb").
equivalent(move,"go").
equivalent(move,"head").
equivalent(move,"move").
equivalent(move,"run").
equivalent(move,"travel").
equivalent(move,"walk").
equivalent(move,"skip").

#action verbs
equivalent(take,"take").
equivalent(take,"steal").
equivalent(take,"pick").
equivalent(take,"grab").
equivalent(put,"place").
equivalent(put,"drop").
equivalent(put,"put").

#other verbs
equivalent(look,"look").
equivalent(inventory,"inventory").
equivalent(inventory,"i").
equivalent(quit,"exit").
equivalent(quit,"quit").
equivalent(quit,"kill").
equivalent(quit,"halt").
equivalent(quit,"quit").

bone
book_a
book_b
book_c
bunsen_burner
charged_bone
clean_clothes
coat
dirty_clothes
figurine
flask
fly
goggles
green_beam
ice_cream
key
laser
lost_homework
movie
note
potion
recipe



#All actions recognizable by function
#move
#put
#take
#look
#study
#quit
#inventory
#transfer

verb(move,["move" | X] - X).
verb(put, ["put" | X] - X).
verb(take, ["take" | X] - X).
verb(look, ["look" | X] - X).
verb(study, ["study" | X] - X).
verb(quit, ["quit" | X] - X).
verb(inventory, ["inventory"]).
verb(transer, ["transfer" | X] - X).


#don't care about these words
#a
#an
#around
#in
#inside
#the
#to
#toward
#up

ignore("a")
ignore("an")
ignore("around").
ignore("in").
ignore("inside").
ignore("the").
ignore("to").
ignore("toward").
ignore("up").
