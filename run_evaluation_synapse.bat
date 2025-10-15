@echo off
call activate JING

REM 设置环境变量
set CUDA_LAUNCH_BLOCKING=1
set PYTHONPATH=D:\pythonProject\CGFM
set DATASET_PATH=D:\DATASET_Synapse
set CHECKPOINT_PATH=D:\pythonProject\CGFM\Network/evaluation/CGFM_synapse_checkpoint

set RESULTS_FOLDER=%CHECKPOINT_PATH%

set unetr_pp_preprocessed=%DATASET_PATH%\CGFM_raw\CGFM_raw_data\Task02_Synapse
set unetr_pp_raw_data_base=%DATASET_PATH%\CGFM_raw


D:\conda\envs\JING\python.exe D:\pythonProject\CGFM\Netork\run\run_training.py 3d_fullres CGFM_trainer_synapse 2 0 -val
pause