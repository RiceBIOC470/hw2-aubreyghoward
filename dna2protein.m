function proteinseq = dna2protein(dnaseq,frame)
% Input a dna sequence and a reading frame and returns the corresponding
% protein sequence. 
if frame <= 3
    if frame > 0
        proteinseq = nt2aa(dnaseq,'Frame',frame);
        else
        disp('please use a reading frame between 1 and 3')
        end
else
        disp('please use a reading frame between 1 and 3')
end
end