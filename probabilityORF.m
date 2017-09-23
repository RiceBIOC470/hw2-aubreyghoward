function [prob]=probabilityORF(N,N_orf)
        q = 0;
        for ii = 1:100000
           checkseq = randdnaseq(N);
          [ORFlength,startpos,stoppos]=findORF(checkseq);
          if ORFlength >= N_orf
              q = q+1;
          end
        
        prob = q/100000;
end