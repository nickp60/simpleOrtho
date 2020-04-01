# simpleOrtho
Easy interface for reciprocal best BLAST hits.  Provide a directory with subject sequences (nucleotide), and a file with query gene (nuc or aa).

## Usage/Tests

```
python so/simpleOrtho.py -d ./tests/genomes/ -i  tests/dnaa.fna  -o ./tmp/ --nucleotide >> coords

# or

python so/simpleOrtho.py -d ./tests/genomes/ -i  tests/dnaa.faa  -o ./tmp/ >> coords
```

## Output format
This outputs coordinates in the following format.
```
NC_000913.3:c3883729-3882326-RC@BA000007.2 :4668559:4669629
<query sequenceID><-RC if on - strand>:<subject sequence id> : <start>:<end>
```


## Installation


The install requires biopython and blast+.
```
git clone https://github.com/nickp60/simpleOrtho
cd simpleOrtho
python setup.py install
```
