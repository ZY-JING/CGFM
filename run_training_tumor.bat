@echo off
call activate JING

REM 设置环境变量
set CUDA_LAUNCH_BLOCKING=1
set PYTHONPATH=D:\pythonProject\CGFM
set DATASET_PATH=D:\DATASET_Tumor
set RESULTS_FOLDER=D:\pythonProject\CGFM\output_tumor

REM 手动创建输出目录（防止自动创建失败）

mkdir "%RESULTS_FOLDER%\CGFM\3d_fullres\Task003_tumor\CGFM_trainer_tumor__CGFM_Plansv2.1\fold_0" 2>nul

REM 其他路径配置
set unetr_pp_preprocessed=%DATASET_PATH%\CGFM_raw\CGFM_raw_data\Task03_tumor
set unetr_pp_raw_data_base=%DATASET_PATH%\CGFM_raw

REM 运行训练脚本
D:\conda\envs\JING\python.exe D:\pythonProject\CGFM\Network\run\run_training.py 3d_fullres CGFM_trainer_tumor 3 0

pause