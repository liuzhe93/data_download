arr=(CRR088166 CRR088167 CRR088168 CRR088169 CRR088170 CRR088171 CRR088172 CRR088173 CRR088174 CRR088175 CRR088176 CRR088177 CRR088178 CRR088179 CRR088180 CRR088181 CRR088182 CRR088183 CRR088184 CRR088185 CRR088186 CRR088187 CRR088188 CRR088189 CRR088190 CRR088191 CRR088192 CRR088193 CRR088194 CRR088195)

for i in ${arr[*]}
do
echo ${i}
#mv ${i}/${i}_f1.fastq ${i}/${i}_S1_L001_R1_001.fastq
#mv ${i}/${i}_r2.fastq ${i}/${i}_S1_L001_R2_001.fastq
cellranger count --id=${i}_count --transcriptome=/mnt/zhangzheng_group/public/Human_HBV_HIV --fastqs=/mnt/zhangzheng_group/liuz-54/project01_HBVHCCAltas/datacollection/data4HBVHCC/03_Zheng/CRA001276/${i}/ --sample=${i} --create-bam=true
done
