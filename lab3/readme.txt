Lab 3 – IoT Telemetry Aggregator with Aurora & SQS

Problem to solve
Simulate 1,000+ IoT devices sending metrics; aggregate and store them efficiently in Aurora while decoupling ingestion from writes.

Core services

    API Gateway or IoT Core (optional) entry
    Lambda (ingestion + aggregation)
    SQS (high-throughput buffer queue)
    Aurora Serverless (metrics table + daily aggregates table)
    EventBridge (nightly “AggregateTelemetry” scheduled event)
    SNS (alerts when thresholds exceeded)

Criteria for success

    A script (Python/Node) simulates 1,000+ devices posting metrics to an ingestion endpoint.
    Ingestion Lambda never writes directly to Aurora; it pushes messages into SQS.
    A consumer Lambda reads from SQS in batches and performs batched writes to Aurora.
    A scheduled EventBridge rule (e.g., hourly) triggers an “aggregator” Lambda that:
        computes aggregates (avg/95th percentile per device) into a separate Aurora table
        publishes alerts to SNS if any device’s metric exceeds a threshold.
    CloudWatch metrics show that bursts are absorbed by SQS, not by Aurora’s connections.
