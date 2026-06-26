import json
import boto3
import uuid
from datetime import datetime

dynamodb = boto3.resource("dynamodb")
table = dynamodb.Table("AlertLog")

def lambda_handler(event, context):

    for record in event["Records"]:

        body = json.loads(record["body"])

        if "Message" in body:
            alarm = json.loads(body["Message"])
        else:
            alarm = body

        table.put_item(
            Item={
                "alertId": str(uuid.uuid4()),
                "Sortid": datetime.utcnow().isoformat(),
                "AlarmName": alarm.get("AlarmName", ""),
                "State": alarm.get("NewStateValue", ""),
                "Reason": alarm.get("NewStateReason", ""),
                "Region": alarm.get("Region", "")
            }
        )

    return {
        "statusCode": 200
    }