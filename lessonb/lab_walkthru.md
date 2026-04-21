Task Flow — Lambda Creation (ClickOps)
🎯 Objective

Create two AWS Lambda functions using different runtimes (Python and Node.js), validate execution, and confirm logging in CloudWatch.

Remember: “Lambda is just a function that waits. When an event arrives, it executes, logs what happened, and returns a result.”

Key ideas:

    No servers
    No ports
    No SSH
    Execution happens only when triggered
    Logs are your only visibility

Task 1 — Create Python Lambda

📍 Navigation
AWS Console → Lambda
Click Create function

Configuration
1. Choose Author from Scratch
Function name: chewbacca-python-lambda

2. Runtime
Select: Python 3.x (latest available)

3. Permissions
Choose: Create a new role with basic Lambda permissions

Note: This gives permission to write logs to CloudWatch. Without this, you are blind.


✍️ Task 2 — Add Python Code

Replace default code with: https://github.com/BalericaAI/lambda/blob/main/lessonb/lambda/handler.py

💾 Click Deploy

👉 NOTE:  “If you don’t deploy, nothing changed. AWS is not psychic. This is why Keisha fails”

▶️ Task 3 — Test Python Lambda
Click Test
        Create new test event:
        Name: test-python

Use this JSON:

        {
          "queryStringParameters": {
            "name": "Chewbacca"
          }
        }
        
✅ Expected Result
    Status: Succeeded
    Output contains:
            "Hello Chewbacca from Python!"
            timestamp

🔍 Task 4 — Verify Python Logs
Navigate:
Monitor tab → View CloudWatch Logs

You must find:
Log group: /aws/lambda/chewbacca-python-lambda

⚙️ Task 5 — Create Node.js Lambda

Repeat same process.

🛠️ Configuration
Function name: chewbacca-node-lambda
Runtime:  Node.js (latest LTS)
Permissions: Create new role (basic Lambda)

✍️ Task 6 — Add Node.js Code 





