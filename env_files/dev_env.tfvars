bucket_name         =      "sagemaker-mlops-batch"
bucket_prefix       =      "pipeline_shared/batch-scoring"
bucket_train_prefix =      "training/data/raw"
bucket_inf_prefix   =      "batch-scoring/data/raw"
email_recipient     =      ["sampathkumarbasa@gmail.com"]
user_id             =      "a12345"

custom_notification_config = [
  {
    step_name           =   "ModelRegisterStep"
    step_status         =   "Succeeded"
    step_custom_message =   "This is the custom message for Succeeded \"ModelRegisterStep\" step."
  },
  {
    step_name           =   "TrainingEval"
    step_status         =   "Failed"
    step_custom_message =   "This is the custom message for Failed \"TrainingEval\" step."
  }
]

# Pipeline information. Will be used by the Python helper script.
accuracy_mse_threshold     =   # e.g. "10.0"
kms_key                    =   # e.g. "arn:aws:kms:us-east-1:112233445566:key/123456a1-12b1-123c-1234-12345df12e12"
model_package_group_name =     # e.g. "poc-mpg"
notification_function_name =   # e.g. "pipeline-notification-lambda"
pipeline_inf               =   # e.g. "InferencePipeline"
pipeline_train             =   # e.g. "TrainingPipeline"
pipeline_trainwhpo         =   # e.g. "TrainingWHPOPipeline"

recreate_pipelines         =   # e.g. "true"
role_arn                   =   # e.g. "arn:aws:iam::112233445566:role/112233445566/sm_execution_role_batch_scoring"
sg_id                      =   # e.g. "sg-0a12b3c45b67de8f9"
subnet_id                  =   # "subnet-01a23bcdef45ghij6"
upload_inference_data      =   # e.g. "false"
upload_training_data       =   # e.g. "true"
