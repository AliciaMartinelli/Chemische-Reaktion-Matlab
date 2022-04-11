function [t,c_A] = expliziter_Euler(k_1, h, c_A0, T)
    c_A(1)=c_A0;
    t(1)=0;
    n=round(T/h)+1;
    for i=2:n
     c_A(i)=c_A(i-1)-h*k_1*c_A(i-1);
     t(i)=t(i-1)+h;
    end
end


