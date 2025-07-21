inp_matrix = load("tx.txt");
dimensions = size(inp_matrix);
inp_cols = dimensions(2);
inp_rows = dimensions(1);
fileID = fopen('out.txt','w');

fprintf(fileID,'ИСХОДНАЯ МАТРИЦА:\n');
for row = 1:inp_rows
    fprintf(fileID, '%d ', inp_matrix(row, :)); 
    fprintf(fileID, '\n'); 
end

%счеты
avg=1:inp_cols;
sum=1;
for i = 1:inp_rows
    for j = 1:inp_cols
        sum=sum*inp_matrix(j,i);
    end
    avg(i)=(sum).^(1/inp_cols);
    sum=1;
end

%добавление
for i = 1:inp_rows
    for j = 1:inp_cols
        if(i==j)
            inp_matrix(i,j)=round(avg(i));
        end
    end
end

fprintf(fileID,'ПРЕОБРАЗОВАННАЯ МАТРИЦА:\n');
for row = 1:inp_rows
    fprintf(fileID, '%d ', inp_matrix(row, :)); 
    fprintf(fileID, '\n'); 
end