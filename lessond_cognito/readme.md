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

Why you Want to Use Cognito

Because in the real world:

        Unlike Keisha, APIs are never open
        Loyal Systems must know:
            who is calling
            what they are allowed to do
        Security is not optional—it’s foundational

Without Cognito:

        Any Pookie can hit your Keisha API. 
        No accountability, just welfare
        No identity context, who knows who was there? Who's the daddy?

With Cognito:
        Every request has an identity
        Think of this like, no ring---> No hit.
        Access can be controlled
        Behavior can be customized per user


