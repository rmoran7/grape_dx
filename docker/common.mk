ROOT_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

NS := grapenf

TOOLS := bamstats bedtools flux-capacitor gemtools kentutils rsem rseqc sambamba samtools star
PROCS := bigwig contig inferexp mapping quantification

ALPINE_VER := 3.11

BAMSTATS_VER := 0.3.4
BEDTOOLS_VER := 2.19.1
FLUX_VER := 1.6.1
GEMTOOLS_VER := 1.7.1
KENTUTILS_VER := 308
RSEM_VER := 1.2.21
RSEQC_VER := 2.6.4
SAMBAMBA_VER := 0.7.1
SAMTOOLS_VER := 1.3.1
STAR_VER := 2.4.0j

RGCRG_VER := 0.1

sambamba: TAGS = $(NS)/markdup:$@-$(SAMBAMBA_VER) $(NS)/mergebam:$@-$(SAMBAMBA_VER)

samtools: TAGS = $(NS)/fastaindex:$@-${SAMTOOLS_VER}

bamstats: TAGS = $(NS)/bamstats:$@-${BAMSTATS_VER}
