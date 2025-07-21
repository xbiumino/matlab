function x = kramer(A, b)
    n = size(A, 1);
    det_A = det(A);  
    if det_A == 0
        error('Детерминант матрицы A равен нулю');
    end
    x = zeros(n, 1);
    for i = 1:n
        A_i = A;
        A_i(:, i) = b; 
        x(i) = det(A_i) / det_A;  
    end
end
