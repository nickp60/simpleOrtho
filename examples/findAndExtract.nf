#!/usr/bin/env nextflow

params.indir = "$PWD/genomes/"
params.target = "$PWD/"
params.out = "$PWD/results.fa"
params.type = "nuc"

input_genomes = Channel.fromPath( params.indir + "*" )
target = file(params.target)
outf = file(params.out)

// todo check for empty channel
process run_simpleortho{
   input:
   file x from input_genomes

    output:
   // stdout str
   file 'hit_*' into hits
    """
    simpleOrtho -i $target -d $params.indir$x -n -v 1  -t 2 --nkeep 1600  | extractRegion - -f $params.indir$x > hit_
    """

}

process append_extracted_seqs{
      input:
      file hit from hits
      //stdin str

      script:
      """
      cat $hit >> $outf
      """
}
