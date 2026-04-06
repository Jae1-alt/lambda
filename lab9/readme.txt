Lab 9 – Blue/Green Aurora Deployment with Event-Driven Cutover

Problem to solve
Design a blue/green Aurora environment where application traffic can be switched between clusters using events, limiting downtime and enabling “DB releases.”

Core services

    Two Aurora Serverless clusters: blue and green
    Lambda (cutover orchestrator)
    EventBridge (cutover and rollback events)
    SQS (optional: queue of pending writes during cutover)
    SNS (cutover announcements)

Criteria for success

    Application reads/writes usually go to blue Aurora via a “current writer endpoint” (e.g., stored config in SSM Parameter Store or a routing Lambda).
    Triggering a DbCutoverRequested event on EventBridge starts a Lambda that:
        updates configuration to point to green
        briefly queues writes via SQS during the switchover
        drains SQS, replays writes to green
        publishes DbCutoverCompleted via EventBridge and SNS.
    Demonstrate both forward cutover and rollback using events.
    Clear Terraform definition of both clusters, routing Lambda, and EventBridge rules.
