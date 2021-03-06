%Copy your function protein2dna.m from part 2 to a new
% function called protein2dnaOptimized.m that produces a codon-optimized DNA sequence using the 
% information in the third column of codons.csv. 
% In other words, for any amino acid, it always uses the codon that appears
% most frequently in the human proteome.


function DNAseq = protein2dnaOptimized (AAseq)
        q = 1;
        p = 1;
codons = importdata('codons.csv',',')
aalist = [codons.textdata(2:length((codons.textdata)'),1)];
aalist = unique(aalist);
aalist(:,2)= {[0]};
aalist(:,3)={'no data'}

for ii = 1:length((codons.textdata)')
ii
    for iii = 1:length((aalist)')
iii
        if strcmp(aalist(iii,1),codons.textdata(ii,1)) == false
        else
            disp('tis true')
            aalist(iii,2)
            codons.data(ii,1)
            if cell2mat(aalist(iii,2)) > (codons.data(ii,1))
                aalist(iii,2)= codons.data(ii,1)
                aalist(iii,3) = codons.textdata(ii,2)
            end
        end
    end
end

aalist



while q < length(AAseq)
    switch AAseq(q)
        case 'F'
            %index = find(aalist(:,1),contains(aalist(:,1),'Phe'),'first')
            DNAseq(p:p+2) = aalist(index,3)
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
          