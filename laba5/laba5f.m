A = fopen('outf.txt','w');
fprintf(A,'');
fclose(A);

inp_matrix = load("tx.txt");
dimensions = size(inp_matrix);
inp_cols = dimensions(2);
inp_rows = dimensions(1);

A = fopen('outf.txt','a');
fprintf(A,'ИСХОДНАЯ МАТРИЦА:');
fclose(A);
writematrix(inp_matrix,'outf.txt','WriteMode','append');

avg=(prod(inp_matrix)).^(1/inp_cols);
new_matrix=inp_matrix;
new_matrix(1:inp_rows+1:inp_rows*inp_cols)=round(avg(1:inp_rows));

A = fopen('outf.txt','a');
fprintf(A,'ПРЕОБРАЗОВАННАЯ МАТРИЦА:');
fclose(A);
writematrix(new_matrix,'outf.txt','WriteMode','append');



