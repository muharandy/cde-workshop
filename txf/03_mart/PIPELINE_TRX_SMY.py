from airflow import DAG
from airflow.utils import timezone
from cloudera.cdp.airflow.operators.cde_operator import CDEJobRunOperator
from datetime import timedelta
from dateutil import parser

dag = DAG(
    dag_id='PIPELINE_TRX_SMY',
    start_date=parser.isoparse('2022-11-25T04:07:34Z').replace(tzinfo=timezone.utc),
    schedule_interval=None,
    is_paused_upon_creation=False,
    default_args={
        'owner': 'fajarmuharandy',
    },
)

INS_STG_ATM_TRX = CDEJobRunOperator(
    job_name='INS_STG_ATM_TRX',
    task_id='INS_STG_ATM_TRX',
    dag=dag,
)

INS_STG_MOBILE_TRX = CDEJobRunOperator(
    job_name='INS_STG_MOBILE_TRX',
    task_id='INS_STG_MOBILE_TRX',
    dag=dag,
)

INS_STG_CUST = CDEJobRunOperator(
    job_name='INS_STG_CUST',
    task_id='INS_STG_CUST',
    dag=dag,
)

INS_STG_ATM_MART_TRX_SMY = CDEJobRunOperator(
    job_name='INS_STG_ATM_MART_TRX_SMY',
    task_id='INS_STG_ATM_MART_TRX_SMY',
    dag=dag,
)

INS_STG_ATM_MART_TRX_SMY << [INS_STG_ATM_TRX, INS_STG_MOBILE_TRX, INS_STG_CUST]