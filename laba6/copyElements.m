function Y = copyElements(X)
    global amountCALL
    persistent call;
    if(isempty(call))
        amountCALL=0;
        call = 0;
    end
    call = call + 1;
    amountCALL = amountCALL+ 1;
    fprintf('Функция: copyElementsGlobal, Вызовы: %d, Общие вызовы: %d\n', call, amountCALL);
    first=find(X<0,1,"first");
    last=find(X>0,1,"last");
    Y=X;
    Y([first,last])=[];
end