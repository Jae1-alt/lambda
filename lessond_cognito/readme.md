Cognito — What It Is, Purpose, and Why It Matters

What is Cognito?
In simple terms: ---> “Cognito answers one question: Who are you?”

Amazon Cognito is AWS’s managed identity service.

It handles:

    User authentication (login, passwords, tokens)
    User management (accounts, groups)
    Token generation (JWTs) for APIs



Purpose of Cognito in This Lab

So far, your API:

    Accepts requests from anyone
    Has WAF to filter bad traffic
    But does not know who is calling


Cognito adds:

    Identity verification
    Controlled access
    Authenticated API usage


Updated System Flow: Client → WAF → API Gateway (Cognito Auth) → Lambda → Logs

NOTE!!!!---> If authentication fails, Lambda is never executed

