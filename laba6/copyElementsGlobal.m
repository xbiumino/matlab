function copyElementsGlobal()
    global X Y amountCALL
    persistent callg;
    if(isempty(callg))
        amountCALL=0;
        callg = 0;
    end
    callg = callg + 1;
    amountCALL=amountCALL+1;
    fprintf('Функция: copyElementsGlobal, Вызовы: %d, Общие вызовы: %d\n', callg, amountCALL);
    first=find(X<0,1,"first");
    last=find(X>0,1,"last");
    Y=X;
    Y([first, last])=[];
    disp(Y);
end