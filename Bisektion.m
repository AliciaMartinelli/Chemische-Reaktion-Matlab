function k_result = Bisektion(tol, k_a, k_e, h, c_A0, T, c_desired)
    while true 
        k_m=0.5*(k_a+k_e);
        [t, c_A] = expliziter_Euler(k_m, h, c_A0, T);
        index = length(c_A); % t == T ist der letzte Index von c_A

        if c_A(index)<c_desired     %Fall a)
            k_e=k_m;
        end
        if c_A(index)>c_desired     %Fall b)
            k_a=k_m;
        end
        
        if abs(c_A(index)-c_desired)<tol %Abbruchbedingung
            break
        end
    end
    k_result=k_m;
end
