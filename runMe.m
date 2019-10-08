load('pcsk9.mat')
pcsk9='';
total=0;
for i=1:36
    pcsk9 = strcat(pcsk9, sequence2{i,1}, sequence2{i,2}, sequence2{i,3}, sequence2{i,4}, sequence2{i,5}, sequence2{i,6});
    total = total + strlength(sequence2{i,1}) + strlength(sequence2{i,2}) + strlength(sequence2{i,3}) + strlength(sequence2{i,4}) + strlength(sequence2{i,5}) + strlength(sequence2{i,6});
end

AAArray = {convertbase(pcsk9)};

for i=1:strlength(pcsk9)
   [i]
   S1 = pcsk9;
   S2 = pcsk9;
   S3 = pcsk9;
   switch upper(pcsk9{1}(i))
       case 'C'
           S1{1}(i) = 'a';
           S2{1}(i) = 'g';
           S3{1}(i) = 't';
       case 'A'
           S1{1}(i) = 'c';
           S2{1}(i) = 'g';
           S3{1}(i) = 't';
       case 'G'
           S1{1}(i) = 'a';
           S2{1}(i) = 'c';
           S3{1}(i) = 't';
       case 'T'
           S1{1}(i) = 'a';
           S2{1}(i) = 'g';
           S3{1}(i) = 'c';
   end
   L1 = convertbase(S1);
   L2 = convertbase(S2);
   L3 = convertbase(S3);
   if sum(cellfun(@(s) strcmp(s, L1), AAArray))==0
       AAArray(end+1,:) = {L1};
   end
   if sum(cellfun(@(s) strcmp(s, L2), AAArray))==0
       AAArray(end+1,:) = {L2};
   end
   if sum(cellfun(@(s) strcmp(s, L3), AAArray))==0
       AAArray(end+1,:) = {L3};
   end
end
size(AAArray)

