##############################SendNotificationRetryBatch################################
#PROGRAM=SendNotificationRetryBatch
#JOB_ID=Not Available
#set -x
#script variables
PROJECT_DIR=/usr/local/ivrbatch/SendNotificationRetryBatch
. $PROJECT_DIR/bin/SetEnvVar.sh
LIB_DIR=/usr/local/ivrbatch/SendNotificationRetryBatch/lib
SUCCESS=0
FAILURE=1

#setup environment variables
PATH=/usr/java6/bin:$PATH

#set the classpath to jar files used by the batch
CLASSPATH="$CLASSPATH:$PROJECT_DIR/SendNotificationRetryBatch.jar"

CLASSPATH="$CLASSPATH:$LIB_DIR/antlr-2.7.6.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/aopalliance-1.0.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/apache-commons-lang.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/BounceAccelerate 1.7.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/bOunce-aspectjrt.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/bOunce-Core-2.0.3.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/bOunce-Security-2.0.3.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/commons-beanutils-1.8.0.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/commons-collections-3.1.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/commons-dbcp-1.3.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/commons-fileupload-1.2.2.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/commons-io-2.2.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/commons-logging-1.1.1.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/commons-logging-1.2.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/commons-pool-1.5.4.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/dom4j-1.6.1.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/gmbal-api-only.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/gson-2.1.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/ha-api.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/hibernate-commons-annotations-3.2.0.Final.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/hibernate-core-3.6.10.Final.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/hibernate-jpa-2.0-api-1.0.1.Final.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/htmllexer.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/htmlparser.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/httpclient-4.2.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/httpcore-4.2.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/javassist-3.12.1.GA.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/jaxb-api.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/jaxb-impl.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/jaxp-ri-1.4.5.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/jaxws-rt.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/jsr173_api.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/jsr181-api.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/jsr250-api.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/jstl-1.2.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/jta-1.1.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/log4j-1.2.15.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/log4j-1.2.17.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/management-api.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/ojdbc14.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/policy.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/resolver.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/saaj-api.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/saaj-impl.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/servlet-api-2.3.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/slf4j-api-1.5.8.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/slf4j-log4j12-1.5.8.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/spring-aop-3.2.11.RELEASE.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/spring-batch-core-3.0.5.RELEASE.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/spring-beans-3.2.11.RELEASE.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/spring-context-3.2.11.RELEASE.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/spring-context-support-3.2.11.RELEASE.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/spring-core-3.2.11.RELEASE.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/spring-expression-3.2.11.RELEASE.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/spring-jdbc-3.2.11.RELEASE.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/spring-orm-3.2.11.RELEASE.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/spring-oxm-3.2.11.RELEASE.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/spring-tx-3.2.11.RELEASE.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/spring-web-3.2.11.RELEASE.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/spring-webmvc-3.2.11.RELEASE.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/stax-api-1.0.1.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/stax-ex.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/streambuffer.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/taglibs-unstandard.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/walgreens-ws-utility.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/xbean-spring-4.2.jar" 
CLASSPATH="$CLASSPATH:$LIB_DIR/zip4j_1.3.2.jar"

#export environment variables
export PATH
export CLASSPATH
export currentDate=`date`

###################################################################################################
#IsProcRunning=`ps -Aef | grep SendNotificationRetryBatch.sh | grep -v grep | wc -l`
if [ -s /usr/local/ivrbatch/SendNotificationRetryBatch/bin/RunningInstance.dat ]
	then
		echo "Instance Already Running for" $currentDate
		if [ $EmailONOFF == "1" ]
		then
			if [ $OS_TYPE == "Linux" ]
			then
				(echo -e "$msgbodyAlreadyRunning " $currentDate; echo -e "$signature") | mutt -s "$subjectAlreadyRunning" $EML
			else
				(echo $msgbodyAlreadyRunning $currentDate; echo $signature) | mailx -r $EML_SYS -s "$subjectAlreadyRunning" $EML
			fi
		fi
		exit $SUCCESS
	else	
		echo "Instance Running for" `date` > /usr/local/ivrbatch/SendNotificationRetryBatch/bin/RunningInstance.dat	
		vmArgs="-ms128m -mx512m"
		classNs="com.walgreens.notify.retry.batch.startup.SendNotifyRetryInvoker"
		java $vmArgs $classNs "$$"
		retCode=$?
		echo retCode is $retCode

		if [ $retCode == "0" ]
			then
				echo "SendNotificationRetryBatch Completed Successfully !! - " $retCode
			if [ $SuccessEmailONOFF == "1" ]
			then
				if [ $OS_TYPE == "Linux" ]
				then
					(echo -e "$msgbodySuccess"; echo -e "$signature") | mutt -s "$subjectsuccess" $EML
				else
					(echo $msgbodySuccess; echo $signature) | mailx -r $EML_SYS -s "$subjectsuccess" $EML
				fi
			fi
				rm /usr/local/ivrbatch/SendNotificationRetryBatch/bin/RunningInstance.dat
				exit $SUCCESS
		elif [ $retCode == "9" ]
			then
				echo "SendNotificationRetryBatch Completed Successfully !! - " $retCode
				echo "No New Notifications in last 60 minutes !! - " $retCode
			if [ $EmailONOFF == "1" ]
			then
				if [ $OS_TYPE == "Linux" ]
				then
					(echo -e "$txnAlertMessage"; echo -e "$signature") | mutt -s "$txnAlertSubject" $EML
				else
					(echo $txnAlertMessage; echo $signature) | mailx -r $EML_SYS -s "$txnAlertSubject" $EML
				fi
			fi
				rm /usr/local/ivrbatch/SendNotificationRetryBatch/bin/RunningInstance.dat
				exit $SUCCESS
		elif [ $retCode == "12" ]
			then
				echo "SendNotificationRetryBatch Completed Successfully !! - " $retCode
				echo "No Disposition Updates in last 60 minutes from Genesys !! - " $retCode
			if [ $EmailONOFF == "1" ]
			then
				if [ $OS_TYPE == "Linux" ]
				then
					(echo -e "$dispAlertMessage"; echo -e "$signature") | mutt -s "$dispAlertSubjectGen" $EML
				else
					(echo $dispAlertMessage; echo $signature) | mailx -r $EML_SYS -s "$dispAlertSubjectGen" $EML
				fi
			fi
				rm /usr/local/ivrbatch/SendNotificationRetryBatch/bin/RunningInstance.dat
				exit $SUCCESS
		elif [ $retCode == "13" ]
			then
				echo "SendNotificationRetryBatch Completed Successfully !! - " $retCode
				echo "No Disposition Updates in last 60 minutes from CSG !! - " $retCode
			if [ $EmailONOFF == "1" ]
			then
				if [ $OS_TYPE == "Linux" ]
				then
					(echo -e "$dispAlertMessage"; echo -e "$signature") | mutt -s "$dispAlertSubjectCsg" $EML
				else
					(echo $dispAlertMessage; echo $signature) | mailx -r $EML_SYS -s "$dispAlertSubjectCsg" $EML
				fi
			fi
				rm /usr/local/ivrbatch/SendNotificationRetryBatch/bin/RunningInstance.dat
				exit $SUCCESS
		else
				echo "SendNotificationRetryBatch Failed !! - " $retCode
			if [ $EmailONOFF == "1" ]
			then
				if [ $OS_TYPE == "Linux" ]
				then
					(echo -e "$msgbodyFailed"; echo -e "$signature") | mutt -s "$subjectfail" $EML
				else
					(echo $msgbodyFailed; echo $signature) | mailx -r $EML_SYS -s "$subjectfail" $EML
				fi
			fi
				rm /usr/local/ivrbatch/SendNotificationRetryBatch/bin/RunningInstance.dat
				exit $FAILURE
		fi
fi