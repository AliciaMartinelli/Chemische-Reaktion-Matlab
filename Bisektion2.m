function [k_result, k_m_Array, c_A_T_Array] = Bisektion2(tol, k_a, k_e, h, c_A0, T, c_desired)
    i = 1;    
    k_m_Array = zeros(1, 1000);
    c_A_T_Array = zeros(1, 1000);

    
    while true 
        k_m=0.5*(k_a+k_e);
        k_m_Array(i)=k_m;
        [t, c_A] = expliziter_Euler(k_m, h, c_A0, T);
        c_A_T = c_A(length(c_A)); % t == T ist der letzte Index von c_A
        c_A_T_Array(i) = c_A_T;
        
        if c_A_T<c_desired  %Fall a)
            k_e=k_m;
        end
        if c_A_T>c_desired  %Fall b)
            k_a=k_m;
        end

        if abs(c_A_T-c_desired)<tol  %Abbruchbedingung
            break
        end
        i = i+1;
        if i == 1000                 %Abbruchbedingung
            break
        end
    end
    k_result=k_m;
    k_m_Array = k_m_Array(1:i);
    c_A_T_Array = c_A_T_Array(1:i);
end
