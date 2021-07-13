# Bioinformatics

It is my big project over the next year to break into the world of biotech. To that end I am writing this document. It is somewhat inspired by Stephen Diehl's [What I Wish I Knew When Learning Haskell](dev.stephendiehl.com/hask/) and Evan Chen's [An Infinitely Large Napkin](https://web.evanchen.cc/napkin.html).

The central dogma of biology (coined by Francis Crick) says that information flows in one direction from **DNA** to **RNA** to **proteins**. Pieces of DNA called **exons** are **transcribed** into RNA. RNA is molecularly the same as DNA, except for thiamine which becomes uracil in RNA. RNA is also single, as opposed to double, stranded. Instead of the 4 nucleic acids, proteins in the human body are made of 20 different types of **amino acid**. A typical protein is 300-400 amino acids long. Three letters of RNA encode an amino acid. This is called **translation** As there are 4 possible RNA nucleotides, there are $$4^3 = 64$$ possible triplets. More combinations than amino acids. 3 triplets are stop codons, which indicate the end of a protein.

The human genome contains 3,200,000,000 or $$3.2\times10^9$$ base pairs, distributed among 46 chromosomes, plus mitochondial DNA. There are 23,000 protein-coding genes.

Your **genotype** is your DNA sequence, both nuclear and mitochrondrial. Plants also have chloroplast DNA. Your **phenotype** is the collection of observable traits other than your DNA sequence. **Phamacogenetics** is the persuit of personalised drugs based on DNA sequences for the prevention and treatment of disease. Your **life hisory** is the integrated total of your physical and psychological experiences.

The cells in your body except for gametes (sperm and egg cells), erythrocytes (red blood cells), and cells of the immune system have the same DNA sequence. **Epigenetics** is the study of how your behaviour and environment can cause changes that affect the way your genes work, without altering your DNA sequence.

| Feauture                                       |                 Prokaryotic Cell                 |                                     Eukaryotic Cell                                     |
| :--------------------------------------------- | :----------------------------------------------: | :-------------------------------------------------------------------------------------: |
| _Size_                                         |                    10$$\mu$$m                    |                                       100$$\mu$$m                                       |
| _Subcelluar Division_                          |                    No nucleus                    |                                         Nucleus                                         |
| _State of major component of genetic material_ | Circular loop, few proteins permenantly attached |                       Complexed with histones to form chromosomes                       |
| _Internal differentiation_                     |        No organised subcellular structure        | Nuclei, mitochondria, chloroplasts, cytoskeleton,endoplasmic reticulum, Golgi apparatus |
| _Cell division_                                |                     Fission                      |                                  Mitosis (or meiosis)                                   |

**Mitochondia** and **chloroplasts** are subcellular particles involved in energy transduction. The former carry out **oxidative phosphorilation**, the coversion or reducing power from metabolising food into **adenosine triphosphate (ATP)**. The latter carry out photosynthises, the capture of light energy in the form of **nicotinamade adenine dinucleotide phosphate (NADPH)** and ATP, leading to the synthesis of sugars.

The nucleic acids are **adenine**, **guanine**, **cytosine**, **thymine**, and **uracil**. A and G have two rings and are called **purines**. C, T, and U and have one ring and are called **pyrimidines**. As always bind to Ts and and Cs always bind to Gs. This lets us tell from one strand of DNA what will be on the other and is also enables the DNA to copy itself.

DNA has a direction based on the biochemical properties at each end, the 5 prime end and the 3 prime end. We write one strand 5' to 3' and call that the positive strand. The reverse compliment is written 3' to 5' and called the negative strand.

$$
5' - ACACCGGTT - 3'
$$

$$
3' - TGTGGCCAA - 5'
$$

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

- [Biopython](https://biopython.org)
- [Pysam](https://github.com/pysam-developers/pysam) and SAMTools

## Actions

- Manipulation
- - Reverse Complementing
- - Transcription
    $$
