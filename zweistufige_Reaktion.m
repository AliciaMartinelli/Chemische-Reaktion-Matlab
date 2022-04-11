function [t,c_A, c_B, c_D] = zweistufige_Reaktion(k_1, k_2, h, c_A0, T)
    [t,c_A] = expliziter_Euler(k_1, h, c_A0, T);
    
    c_B(1)=0;
   
    n=round(T/h)+1;
    for i=2:n
     c_B(i)=(1-h*k_2)*c_B(i-1)+h*k_1*c_A(i-1);
     c_D(i)=c_A0-c_A(i-1)-c_B(i-1);
    end
end