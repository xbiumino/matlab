fileID = fopen('text.txt','r');
formatSpec = '%d';
sizeA = [1 Inf];
A = fscanf(fileID,formatSpec,sizeA);
mA = 1:numel(A);

disp(mA);
disp(A);

i = length(A);
j=1;
an = zeros(i,0);
T=1;
while(i>=T)
    if(A(T)<1)
        an(j)=T;
        j=j+1;
    end
    T=T+1;
end
disp('ANSWER FOR WHILE');
disp(an);
a = mA(A<0);
disp('ANSWER FOR EXP')
disp(a);
fclose(fileID);
