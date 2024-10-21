from pymol import cmd

for obj in cmd.get_object_list():
    cmd.save(obj+"_ALIGNED.pdb",obj)
