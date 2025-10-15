@echo off
call activate JING

REM 设置环境变量
set CUDA_LAUNCH_BLOCKING=1
set PYTHONPATH=D:\pythonProject\CGFM
set DATASET_PATH=D:\DATASET_Acdc
set RESULTS_FOLDER=D:\pythonProject\CGFM\output_acdc

REM 手动创建输出目录（防止自动创建失败）
mkdir "%RESULTS_FOLDER%\CGFM\3d_fullres\Task001_acdc\CGFM_trainer_acdc__CGFM_Plansv2.1\fold_0" 2>nul

REM 其他路径配置
set unetr_pp_preprocessed=%DATASET_PATH%\CGFM_raw\CGFM_raw_data\Task01_ACDC
set unetr_pp_raw_data_base=%DATASET_PATH%\CGFM_raw

REM 运行训练脚本
D:\conda\envs\JING\python.exe D:\pythonProject\CGFM\Network\run\run_training.py 3d_fullres CGFM_trainer_acdc 1 0
pause