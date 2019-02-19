```
1. Startup ngrok by typing ./ngrok the_port_number  in your terminal and leave it running
2. Copy this part of the part of the forwarding address that looks similar to http://e06b612d.ngrok.io
3. Setup the webhook Payload URL in GitHub with using the part of the ngrok address. 
For example http://e06b612d.ngrok.io/v1/issues , this is the endpoint to receive events in your app 

references:
https://developer.github.com/webhooks/configuring/
https://developer.github.com/webhooks/creating/#setting-up-a-webhook

4. Start your server in the terminal
5. Create an issue in one of the repositories where you have set up the webhook
6. Test that you are receiving events by going to the endpoint on your machine 

for example http://localhost:3000/v1/issues

  [{
    "id": 9,
    "issue_id": 411559646,
    "action": "open",
    "repository_id": 171282644,
    "repository_name": "Git-Event-Webhook-Demo",
    "owner_name": "dmage20",
    "created_at": "2019-02-19T03:38:04.676Z",
    "updated_at": "2019-02-19T03:38:04.676Z"
  },
  {
    "id": 10,
    "issue_id": 411730401,
    "action": "open",
    "repository_id": 171282644,
    "repository_name": "Git-Event-Webhook-Demo",
    "owner_name": "dmage20",
    "created_at": "2019-02-19T03:38:37.266Z",
    "updated_at": "2019-02-19T03:38:37.266Z"
  }]
  
7. To list the issues of a particular repository 
go to http://localhost:3000/v1/repositories/171237359/issues
  
  [
  {
    "id": 11,
    "issue_id": null,
    "action": null,
    "repository_id": 171237359,
    "repository_name": "Zaiit-test",
    "owner_name": "dmage20",
    "created_at": "2019-02-19T03:40:59.679Z",
    "updated_at": "2019-02-19T03:40:59.679Z"
  },
  {
    "id": 12,
    "issue_id": 411730961,
    "action": "open",
    "repository_id": 171237359,
    "repository_name": "Zaiit-test",
    "owner_name": "dmage20",
    "created_at": "2019-02-19T03:41:31.180Z",
    "updated_at": "2019-02-19T03:41:31.180Z"
  }
]

8. To display the information of an issue through the id of the issue 
go to http://localhost:3000/v1/issues/411730401
  [
  {
    "id": 10,
    "issue_id": 411730401,
    "action": "open",
    "repository_id": 171282644,
    "repository_name": "Git-Event-Webhook-Demo",
    "owner_name": "dmage20",
    "created_at": "2019-02-19T03:38:37.266Z",
    "updated_at": "2019-02-19T03:38:37.266Z"
  }
]
```
