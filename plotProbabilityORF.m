% Part4. Write  a final function called plotProbabilityORF.m which takes
% N_ORF as an argument and makes a plot of the probabily of having an
% ORF at least this long as a function of the dnasequence length. Decide how the
% code should determine the lengths of dna sequence to test and implement
% your decision. 

function [q] = plotProbabilityORF (N_ORF)
         
         for N = 100000
                prob = probabilityORF(N,N_ORF);
                scatter(N,prob);
                hold on;
         end
end