.PHONY: upload

headphone_desk_holder.stl: headphone_desk_holder.scad
	openscad -o $@ $<

publish: headphone_desk_holder.stl
	thingiverse-publisher

clean: 
	rm headphone_desk_holder.stl
	
