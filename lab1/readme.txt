Lab 1 – Event-Driven Order Processing Pipeline

Problem to solve
Build a small “orders” backend where:

    API calls create orders
    Orders are written to Aurora
    An asynchronous pipeline handles payment, inventory, and notification via events/queues.

Core services

    API Gateway (REST or HTTP API)
    Lambda (order creation, payment processor, notification worker)
    Aurora Serverless v2 (orders + line items)
    EventBridge (OrderCreated, OrderPaid events)
    SQS (work queue for payment processing + DLQ)
    SNS (customer notification topic)
    S3 (optional: for order receipts/invoices)

Criteria for success

    POST /orders writes a row into Aurora and emits an OrderCreated event to EventBridge.
    A Lambda subscribed via EventBridge picks up OrderCreated, writes a “pending payment” record, and pushes a message to SQS.
    A separate Lambda (triggered by SQS) “processes payment” (mock) and:
        updates the Aurora order row to PAID
        publishes OrderPaid to EventBridge
        publishes a notification to an SNS topic
    Test script (curl/Postman) shows full flow from order creation → paid → notification.
    Terraform (or scripts) can tear down and recreate the whole stack.
