% Finding the maximum value os the SWA to correlate the results
% Allign peaks

if mnvr == 2
    [swa_max_crt, ind_crt] = max(abs(swa_crt), [], 'all', 'linear');
    t_maxcrt =sim_time(ind_crt);

    [swa_max, ind_sim] = max(abs(swa), [], 'all', 'linear');
    t_max = time(ind_sim);

    t_correl = abs(t_maxcrt - t_max);
elseif mnvr == 1
    [swa_max_crt, ind_crt] = max(swa_crt, [], 'all', 'linear');
    t_maxcrt =sim_time(ind_crt);

    [swa_max, ind_sim] = max(swa, [], 'all', 'linear');
    t_max = time(ind_sim);

    t_correl = abs(t_maxcrt - t_max);   
end