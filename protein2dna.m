function DNAseq = protein2dna (AAseq)
        q = 1;
        p = 1;
while q < length(AAseq)
    switch AAseq(q)
        case 'F'
            DNAseq(p:p+2) = 'TTT';
        case 'L'
            DNAseq(p:p+2) = 'CTT';
        case 'M'
            DNAseq(p:p+2) = 'ATG';
        case 'V'
            DNAseq(p:p+2) = 'GTT';
        case 'S'
            DNAseq(p:p+2) = 'TCT';
        case 'P'
            DNAseq(p:p+2) = 'CCC';
        case 'T'
            DNAseq(p:p+2) = 'ACT';
        case 'A'
            DNAseq(p:p+2) = 'GCT';
        case 'Y'
            DNAseq(p:p+2) = 'TAT';
        case '*'
            DNAseq(p:p+2) = 'TAG';
        case 'H'
            DNAseq(p:p+2) = 'CAT';
        case 'Q'
            DNAseq(p:p+2) = 'CAA';
        case 'N'
            DNAseq(p:p+2) = 'AAC';
        case 'K'
            DNAseq(p:p+2) = 'AAA';
        case 'D'
            DNAseq(p:p+2) = 'GAC';
        case 'E'
            DNAseq(p:p+2) = 'GAG';
        case 'C'
            DNAseq(p:p+2) = 'TGC';
        case 'W'
            DNAseq(p:p+2) = 'TGG';
        case 'R'
            DNAseq(p:p+2) = 'CGC';
        case 'G'
            DNAseq(p:p+2) = 'GGG';
        case 'I'
            DNAseq(p:p+2) = 'ATA';
end
    q = q+1;
    p = p+3;
end
end
          