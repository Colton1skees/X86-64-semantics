import angr
proj = angr.Project('./instructions/shlw_r16_cl/shlw_r16_cl.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()