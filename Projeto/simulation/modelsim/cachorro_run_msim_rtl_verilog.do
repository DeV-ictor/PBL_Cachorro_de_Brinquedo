transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/home/aluno/Documentos/CIRCUITOS\ DIGITAIS/21/PBL---Cachorro-de-Brinquedo-main/Projeto {/home/aluno/Documentos/CIRCUITOS DIGITAIS/21/PBL---Cachorro-de-Brinquedo-main/Projeto/clockdivider.v}
vlog -vlog01compat -work work +incdir+/home/aluno/Documentos/CIRCUITOS\ DIGITAIS/21/PBL---Cachorro-de-Brinquedo-main/Projeto {/home/aluno/Documentos/CIRCUITOS DIGITAIS/21/PBL---Cachorro-de-Brinquedo-main/Projeto/JK_ff.v}
vlog -vlog01compat -work work +incdir+/home/aluno/Documentos/CIRCUITOS\ DIGITAIS/21/PBL---Cachorro-de-Brinquedo-main/Projeto {/home/aluno/Documentos/CIRCUITOS DIGITAIS/21/PBL---Cachorro-de-Brinquedo-main/Projeto/contador_3bits.v}
vlog -vlog01compat -work work +incdir+/home/aluno/Documentos/CIRCUITOS\ DIGITAIS/21/PBL---Cachorro-de-Brinquedo-main/Projeto {/home/aluno/Documentos/CIRCUITOS DIGITAIS/21/PBL---Cachorro-de-Brinquedo-main/Projeto/Teste.v}

