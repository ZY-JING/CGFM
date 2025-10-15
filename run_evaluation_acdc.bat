@echo off
call activate JING

REM 设置环境变量
set CUDA_LAUNCH_BLOCKING=1
set PYTHONPATH=D:\pythonProject\CGFM
set DATASET_PATH=D:\DATASET_Acdc
set CHECKPOINT_PATH=D:\pythonProject\CGFM\Network/evaluation/CGFM_acdc_checkpoint

set RESULTS_FOLDER=%CHECKPOINT_PATH%


set unetr_pp_preprocessed=%DATASET_PATH%\CGFM_raw\CGFM_raw_data\Task01_ACDC
set unetr_pp_raw_data_base=%DATASET_PATH%\CGFM_raw

D:\conda\envs\JING\python.exe D:\pythonProject\CGFM\Network\run\run_training.py 3d_fullres CGFM_trainer_acdc 1 0 -val
pause