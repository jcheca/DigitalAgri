# EnForma COMÚN
curl localhost:1026/v2/subscriptions -s -S --header 'Content-Type: application/json' --header 'Accept: application/json' --header 'fiware-service: lavega' --header 'fiware-servicepath: /poc' -d @- <<EOF
{
        "description": "Sub urn:ngsi-ld:ws301:eui-24e124141b267650",
        "subject": {
            "entities": [
            {
                "idPattern": "urn:ngsi-ld:ws301:eui-24e124141b267650",
                "type": "ws301"
            }
            ],
            "condition": {
                "attrs": [
                "state","install","battery"
                ]
            }
        },
        "notification": {
            "http": {
                "url": "http://quantumleap:8668/v2/notify"
            },
            "attrs": [
                "state","install","battery"
            ],
            "metadata": ["dateCreated", "dateModified"]
        },
        "throttling": 5
    }
EOF
