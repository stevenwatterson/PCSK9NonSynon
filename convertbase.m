function [AA] = convertbase(s)
    AA = '';
    for i=1:3:strlength(s)
       b1 = s{1}(i);
       b2 = s{1}(i+1);
       b3 = s{1}(i+2);

       b = strcat(b1, b2, b3);
       switch upper(b)
           case 'ATT'
               c='I';
           case 'ATC'
               c='I';
           case 'ATA'
               c='I';
           case 'CTT'
               c='L';
           case 'CTC'
               c='L';
           case 'CTA'
               c='L';
           case 'CTG'
               c='L';
           case 'TTA'
               c='L';
           case 'TTG'
               c='L';
           case 'GTT'
               c='V';
           case 'GTC'
               c='V';
           case 'GTA'
               c='V';
           case 'GTG'
               c='V';
           case 'TTT'
               c='F';
           case 'TTC'
               c='F';
           case 'ATG'
               c='M';
           case 'TGT'
               c='C';
           case 'TGC'
               c='C';
           case 'GCT'
               c='A';
           case 'GCC'
               c='A';
           case 'GCA'
               c='A';
           case 'GCG'
               c='A';
           case 'GGT'
               c='G';
           case 'GGC'
               c='G';
           case 'GGA'
               c='G';
           case 'GGG'
               c='G';
           case 'CCT'
               c='P';
           case 'CCC'
               c='P';
           case 'CCA'
               c='P';
           case 'CCG'
               c='P';
           case 'ACT'
               c='T';
           case 'ACC'
               c='T';
           case 'ACA'
               c='T';
           case 'ACG'
               c='T';
           case 'TCT'
               c='S';
           case 'TCC'
               c='S';
           case 'TCA'
               c='S';
           case 'TCG'
               c='A';
           case 'AGT'
               c='S';
           case 'AGC'
               c='S';
           case 'TAT'
               c='Y';
           case 'TAC'
               c='Y';
           case 'TGG'
               c='W';
           case 'CAA'
               c='Q';
           case 'CAG'
               c='Q';
           case 'AAT'
               c='N';
           case 'AAC'
               c='N';
           case 'CAT'
               c='H';
           case 'CAC'
               c='H';
           case 'GAA'
               c='E';
           case 'GAG'
               c='E';
           case 'GAT'
               c='D';
           case 'GAC'
               c='D';
           case 'AAA'
               c='K';
           case 'AAG'
               c='K';
           case 'CGT'
               c='R';
           case 'CGC'
               c='R';
           case 'CGA'
               c='R';
           case 'CGG'
               c='R';
           case 'AGA'
               c='R';
           case 'AGG'
               c='R';
           case 'TAA'
               c='st';
           case 'TAG'
               c='st';
           case 'TGA'
               c='st';          
        end
        AA = strcat(AA, c);
    end

end

