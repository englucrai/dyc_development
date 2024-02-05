# DIRECT YAW CONTROL - DEVELOPMENT

Direct Yaw Control allows the integration between MATLAB + Simulink and VI-CRT, generating the co-simulation results and correlating with the vehicle data.

## FILES INFO:

### MATLAB
Main code:
  - dyc_dvlpmt.mlx
 
Auxiliary code:
  - select_maneuvers_file.m
  - import_vehicle_data.m
  - vicrtsim_to_data.m
  - calculate_correlation_time.m
  - esc_actv_time.m
  - plot_results.m

### Simulink
Simulink Model: 
  - vdc_dyc_v3.slx 

### VI-CRT
VI-CRT files:
  - 2261_VOLCANO_DYC_fp.xml
  - flat_085.rdf

---

The workflow is explained below step-by-step:
## STEPS:

(VI-CRT)
1. Load the vehicle model inside CI-CRT
2. Load the fingerprint inside VI-CRT
     2261_VOLCANO_DYC_fp.xml
  Note: make sure the road selected has a friction coefficient equal to 0.85 (flat_085.rdf)

3. Run all the events on the fingerprint to generate the send files used as input in the co-simulation 

(MATLAB)

4. Run dyc_dvlpmt.mlx
  Note: Save the results in the desired Path before running again for another maneuver
