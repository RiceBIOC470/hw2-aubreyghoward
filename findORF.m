function [ORFlength,start_pos,stop_pos] = findORF(dnaseq)
%Function to find the length of the longest open reading frame of a
%sequences called dnaseq

%fill in here. 
dnaseq = lower(dnaseq);

start = strfind(dnaseq,'atg');%finds start codon

if length(start)< 1
    disp ('no start codons. please pick a new sequence.')
else
start_pos = start(1,1);
stop1 = strfind(dnaseq,'taa');
stop2 = strfind(dnaseq,'tag');
stop3 = strfind(dnaseq,'tga');

stop = sort([stop1,stop2,stop3]);
if length(stop)<0
    disp ('no stop codons. please pick a new sequence.')
else

      q = 1;
      for ii = 1:length(stop)
      if rem(stop(ii),3) == 0
          stopcodons(q,1) = stop(ii);
          q = q+1;
      end
      end

ORFlength = 0;
if length(stopcodons)<1
disp ('no stop codons in reading frame. please pick a new sequence.')
else
for iii = 1:length(stopcodons)
    diffcheck = stopcodons(iii,:)-start_pos;
    if diffcheck > ORFlength
        ORFlength = diffcheck;
        stop_pos = stopcodons(iii,:);
end
end
end
end
end
end


% Part 2. Fill in the function findORF.m in this repository so that takes any dna
% sequence as an input and returns the length of the longest open
% reading frame and the positions of the start and stop codons. 
% Decide what your code should do when no ORF is found and
% implement this. Your function should also work whether the entered dna
% sequence is uppercase, lowercase, or some mixture. The builtin MATLAB functions
% lower and upper could be useful for this.