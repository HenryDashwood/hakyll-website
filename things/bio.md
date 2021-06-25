# Bioinformatics

It is my big project over the next year to break into the world of biotech. To that end I am writing this document. It is somewhat inspired by Stephen Diehl's [What I Wish I Knew When Learning Haskell](dev.stephendiehl.com/hask/) and Evan Chen's [An Infinitely Large Napkin](https://web.evanchen.cc/napkin.html).

## File Formats

### FASTA.

Used in the 1980s by ... In FASTA format sequences of nucleatoides are represented by single letters. The first line of a FASTA file begins with a `>` or less commonly a `;`. Below is the first 5 lines of an example FASTA file.

```
>NM_002299.4 Homo sapiens lactase (LCT), mRNA
GAAAATGGAGCTGTCTTGGCATGTAGTCTTTATTGCCCTGCTAAGTTTTTCATGCTGGGG
GTCAGACTGGGAGTCTGATAGAAATTTCATTTCCACCGCTGGTCCTCTAACCAATGACTT
GCTGCACAACCTGAGTGGTCTCCTGGGAGACCAGAGTTCTAACTTTGTAGCAGGGGACAA
AGACATGTATGTTTGTCACCAGCCACTGCCCACTTTCCTGCCAGAATACTTCAGCAGTCT
```

### FASTQ

An extension of FASTA. Used in Next Generation Sequencing. It generally produces bigger files which can create headaches when transferring data.

### Binary Alignment Map (BAM)

After receiving data from the sequencer, you will normally use a tool such as Burrows-Wheeler Aligner (BWA) to align your sequences to a reference genome. Most users will have a reference genome for their species.

The most common representation for aligned data is the sequence alignment map (SAM) format. The compressed version of SAM is BAM. Indexable for extremely fast random access e.g. to find alignments to a certain part of a chromosome. You need an index for your BAM file which is normally created by the tabix utility of SAMtools, the most widely used tool for manipulating SAM/BAM files.

### Variant Call Format (VCF)

## Databases

- National Center for Biotechnology Information (NCBI)
- - GenBank
- - Nucleotide Database
- - PubMed

## Metrics

### Phred quality score

Logarithmic representation of the probability of an accurate call. This probability is given as $$10^{-Q/10}$$. So a Q of 10 represents a 90 percent call accuracy, 20 represents 99 percent call accuracy, and 30 will be 99.9 percent. For our file, the maximum accuracy will be 99.99 percent (40). In some cases, values of 60 are possible (99.9999 percent accuracy).

## Tools

- Biopython
- [Pysam](https://github.com/pysam-developers/pysam) and SAMTools

## Actions

- Manipulation
- - Reverse Complementing
- - Transcription
