time_esc_actv_sim = 0;
time_esc_deactiv_sim = 0;

for i = 1:length(sim_time)
    if (ESCactv(i) == 1)
        time_esc_actv_sim = time_esc_actv_sim + 1e-3;
    end
    if (ESCactv(i)==0)
        time_esc_deactiv_sim = time_esc_deactiv_sim + 1e-3;
    end
end

aux_time = length(time);
time_end = time(aux_time);

sample_period = time_end/(aux_time - 1);

time_esc_actv = 0;
time_esc_deactiv = 0;

for i = 1:length(time)
    if (ESC(i) == 1)
        time_esc_actv = time_esc_actv + sample_period;
    end
    if (ESCactv(i)==0)
        time_esc_deactiv = time_esc_deactiv + 1e-3;
    end
end

diff_actv_esc = abs(time_esc_actv - time_esc_actv_sim);