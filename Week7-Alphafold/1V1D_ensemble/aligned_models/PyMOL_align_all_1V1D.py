from pymol import cmd

for obj in cmd.get_object_list():
    if obj != "test_5c7bb_unrelaxed_rank_001_alphafold2_ptm_model_4_seed_005":
        cmd.align(obj, "test_5c7bb_unrelaxed_rank_001_alphafold2_ptm_model_4_seed_005")
    cmd.save(obj+"_ALIGNED.pdb")
