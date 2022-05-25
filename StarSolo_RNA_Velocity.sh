cd /mnt/rstor/genetics/JinLab/ssz20/zshanshan/differentiation_ATAC/processed/RNA_velocity/STARsolo

# run starsolor: need to know which read is cDNA, which is cellBarcodeUMI sequence; The length of cell barcode, and UMI.
                # the cell whitelist (the cells you think are real cells, whitelist from 10X experiments can be downloaded online)
                # See more details about parameters in https://github.com/alexdobin/STAR/blob/master/docs/STARsolo.md
/mnt/rstor/genetics/JinLab/ssz20/zshanshan/differentiation_ATAC/processed/RNA_velocity/STARsolo/STAR \
            --runThreadN 8 --genomeDir /mnt/rstor/genetics/JinLab/ssz20/reference/hg19_STARIndex/ --outFileNamePrefix S7 \
            --readFilesIn SRR10902835_2.fastq SRR10902835_1.fastq --soloBarcodeMate 0 --soloType CB_UMI_Simple \
            --soloCBstart 1 --soloCBlen 12 --soloUMIstart 13 --soloUMIlen 8 \
            --soloCBwhitelist /mnt/rstor/genetics/JinLab/ssz20/zshanshan/differentiation_ATAC/processed/RNA_velocity/STARsolo/S7.barcode \
            --soloFeatures Gene Velocyto

# The output files are in S7Solo.out

# Run scvelo
# Details for scvelo is in https://scvelo.readthedocs.io/
/mnt/rstor/genetics/JinLab/ssz20/zshanshan/differentiation_ATAC/processed/RNA_velocity/STARsolo/Run.scvelo.from.starSolo.py S7Solo.out/ S7.meta