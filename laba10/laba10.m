A = [5.103, 0.293, 0.336, 0.270;
        0.179, 4.912, 0.395, 0.375;
         0.189, 0.321, 2.875, 0.216;
         0.317, 0.165, 0.386, 3.934];
b = [0.745; 0.381; 0.480; 0.552];

det_A = det(A);

%ранг матрицы
rank_A = rank(A);
disp('Ранг матрицы A:');
disp(rank_A);

%расширенная матрица
augmented_matrix = [A b];
disp('Расширенная матрица:');
disp(augmented_matrix);
if(rank(A)~=rank(augmented_matrix))
    disp('Система несовместа')
elseif rank(A)<size(A,1)
    disp('систма совместа но бесконечное колво решений')
else
% 3. Численное решение
x_numeric = A \ b;
disp('Численное решение:');
disp(x_numeric);

%сим
syms x1 x2 x3 x4
A_sym = [5.103, 0.293, 0.336, 0.270;
        0.179, 4.912, 0.395, 0.375;
         0.189, 0.321, 2.875, 0.216;
         0.317, 0.165, 0.386, 3.934];
b_sym = [0.745; 0.381; 0.480; 0.552];
sol_sym = linsolve(A_sym, b_sym);
disp('Символьное решение:');
disp(double(sol_sym));
x_cramer = kramer(A, b);
disp('Методом Крамера:');
disp(x_cramer);

%собст вектор и знач
[eig_vectors, eig_values_matrix] = eig(A);  

disp('Собственные значения:');
disp(diag(eig_values_matrix));  

disp('Собственные векторы:');
disp(eig_vectors);  

%проверка
for i = 1:length(diag(eig_values_matrix))
    lambda = eig_values_matrix(i, i); 
    v = eig_vectors(:, i);  
    A_v = A * v; 
    lambda_v = lambda * v;  
    disp(['Проверка для λ = ', num2str(lambda)]);
    disp('A*v:');
    disp(A_v);
    disp('λ*v:');
    disp(lambda_v);
end

end
