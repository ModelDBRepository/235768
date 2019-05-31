#FLAGS =   -w 
#FLAGS = -c  -w 
#FLAGS = -g -d1 -C -w -save
#FLAGS = -O3 -qextchk -qarch=auto -bmaxdata:0x80000000
 FLAGS = -O3  -qarch=auto -bmaxdata:0x80000000
#FLAGS = -g -d1 -C -w  -bmaxdata:0x80000000


 STRUCT = groucho_gapbld.o groucho_gapbld_mix.o  gettime.o otis_table_setup.o dexptablesmall_setup.o dexptablebig_setup.o synaptic_map_construct.o synaptic_compmap_construct.o durand.o 

 INTEGRATE = integrate_tuftIBVx3B.o fnmda.o integrate_deepLTSx.o integrate_deepaxaxx.o integrate_deepbaskx.o integrate_deepng.o  integrate_nrtxB.o integrate_supLTSX.o integrate_supaxaxx.o integrate_supbaskx.o integrate_supng.o integrate_suppyrFRBxPB.o  integrate_tcrxB.o  integrate_tuftRSXXB.o integrate_spinstelldiegoxB.o 


spikewaveS : spikewaveS.f makefile
	mpxlf $(FLAGS) spikewaveS.f $(STRUCT) $(INTEGRATE) $(TRACE) -o spikewaveS

clean :
	rm -f spikewaveS    
	
