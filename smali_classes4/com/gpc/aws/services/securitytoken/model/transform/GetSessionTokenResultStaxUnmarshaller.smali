.class public Lcom/gpc/aws/services/securitytoken/model/transform/GetSessionTokenResultStaxUnmarshaller;
.super Ljava/lang/Object;
.source "GetSessionTokenResultStaxUnmarshaller.java"

# interfaces
.implements Lcom/gpc/aws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/aws/transform/Unmarshaller<",
        "Lcom/gpc/aws/services/securitytoken/model/GetSessionTokenResult;",
        "Lcom/gpc/aws/transform/StaxUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/gpc/aws/services/securitytoken/model/transform/GetSessionTokenResultStaxUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/gpc/aws/services/securitytoken/model/transform/GetSessionTokenResultStaxUnmarshaller;
    .locals 1

    .line 67
    sget-object v0, Lcom/gpc/aws/services/securitytoken/model/transform/GetSessionTokenResultStaxUnmarshaller;->instance:Lcom/gpc/aws/services/securitytoken/model/transform/GetSessionTokenResultStaxUnmarshaller;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/gpc/aws/services/securitytoken/model/transform/GetSessionTokenResultStaxUnmarshaller;

    invoke-direct {v0}, Lcom/gpc/aws/services/securitytoken/model/transform/GetSessionTokenResultStaxUnmarshaller;-><init>()V

    sput-object v0, Lcom/gpc/aws/services/securitytoken/model/transform/GetSessionTokenResultStaxUnmarshaller;->instance:Lcom/gpc/aws/services/securitytoken/model/transform/GetSessionTokenResultStaxUnmarshaller;

    .line 69
    :cond_0
    sget-object v0, Lcom/gpc/aws/services/securitytoken/model/transform/GetSessionTokenResultStaxUnmarshaller;->instance:Lcom/gpc/aws/services/securitytoken/model/transform/GetSessionTokenResultStaxUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/gpc/aws/transform/StaxUnmarshallerContext;)Lcom/gpc/aws/services/securitytoken/model/GetSessionTokenResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/gpc/aws/services/securitytoken/model/GetSessionTokenResult;

    invoke-direct {v0}, Lcom/gpc/aws/services/securitytoken/model/GetSessionTokenResult;-><init>()V

    .line 38
    invoke-virtual {p1}, Lcom/gpc/aws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 41
    invoke-virtual {p1}, Lcom/gpc/aws/transform/StaxUnmarshallerContext;->isStartOfDocument()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v1, 0x3

    .line 45
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/gpc/aws/transform/StaxUnmarshallerContext;->nextEvent()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 50
    const-string v3, "Credentials"

    invoke-virtual {p1, v3, v2}, Lcom/gpc/aws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    invoke-static {}, Lcom/gpc/aws/services/securitytoken/model/transform/CredentialsStaxUnmarshaller;->getInstance()Lcom/gpc/aws/services/securitytoken/model/transform/CredentialsStaxUnmarshaller;

    move-result-object v3

    .line 52
    invoke-virtual {v3, p1}, Lcom/gpc/aws/services/securitytoken/model/transform/CredentialsStaxUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/StaxUnmarshallerContext;)Lcom/gpc/aws/services/securitytoken/model/Credentials;

    move-result-object v3

    .line 51
    invoke-virtual {v0, v3}, Lcom/gpc/aws/services/securitytoken/model/GetSessionTokenResult;->setCredentials(Lcom/gpc/aws/services/securitytoken/model/Credentials;)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 56
    invoke-virtual {p1}, Lcom/gpc/aws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v3

    if-ge v3, v1, :cond_0

    :goto_1
    return-object v0
.end method

.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    check-cast p1, Lcom/gpc/aws/transform/StaxUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/securitytoken/model/transform/GetSessionTokenResultStaxUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/StaxUnmarshallerContext;)Lcom/gpc/aws/services/securitytoken/model/GetSessionTokenResult;

    move-result-object p1

    return-object p1
.end method
