#SetEnvVar.sh
#!/bin/ksh

####################################################################################################
#   					Project PATH
####################################################################################################
export PROJECTDIR=/usr/local/ivrbatch/SendNotificationRetryBatch/
export OS_TYPE=`uname`

##########################################################################################################
# 					EMAIL-ID OF SUPPORT TEAM							#
##########################################################################################################	

#####Set EmailONOFF 1 to Enable Emailing.
#####Set EmailONOFF 0 to Disable Emailing.
export EmailONOFF=1
export SuccessEmailONOFF=0
export EML_SYS="akash.x.bhatt@walgreens.com"
#####Receipient's List#####
export EML="deepak.agarwal@walgreens.com CET-SAA-Consultants@walgreens.com"

export msgbodyAlreadyRunning="SendNotificationRetryBatch already running."
export subjectAlreadyRunning="SendNotificationRetryBatch Alert - Instance already running"

export subjectfail="SendNotificationRetryBatch Failed"
export msgbodyFailed="SendNotificationRetryBatch Failed \n\nPlease see the batch logs stored at /usr/local/ivrbatch/SendNotificationRetryBatch/logs."

export subjectsuccess="SendNotificationRetryBatch Successfully Completed"
export msgbodySuccess="SendNotificationRetryBatch Successfully Completed."

export txnAlertSubject="SendNotificationRetryBatch Alert - Notifications not found in last 15 minutes"
export txnAlertMessage="SendNotificationRetryBatch Alert - Notifications not found in last 15 minutes. Please check the DB and inform CPM Operations."

export dispAlertSubjectGen="SendNotificationRetryBatch Alert - Dispositions not updated in last 15 minutes by Genesys"
export dispAlertSubjectCsg="SendNotificationRetryBatch Alert - Dispositions not updated in last 15 minutes by CSG"
export dispAlertMessage="SendNotificationRetryBatch Alert - Dispositions not updated in last 15 minutes. Please check the logs and inform Vendor."

export signature="\n\n\nRegards\nCustomer Services Technology\nCorporate Systems and Call Center\nTCS Partner for WALGREENS | NOIDA - INDIA\nOffice: 877-445-6706 'Option 5'"
##########################################################################################################
# 					ERROR CODES - DESCRIPTION							#
##########################################################################################################
#Error Codes	-	Description
#0		-	SUCCESS
#1		-	Ctrl+C is executed. Batch Terminated.
#2		-	The process is killed. Batch Terminated.
#3		-	Segmentation Fault Occurred. Batch Terminated.
#4		-	Source Log do not exists. Aborting Batch.
#5		-	Another instance of a batch is running. Aborting Batch.
#9		-	Notifications not found in last 15 minutes. Batch Terminated.
#12		-	Dispositions not updated in last 15 minutes from Genesys. Batch Terminated.
#13		-	Dispositions not updated in last 15 minutes from CSG. Batch Terminated.
###########################################################################################################
###########################################################################################################