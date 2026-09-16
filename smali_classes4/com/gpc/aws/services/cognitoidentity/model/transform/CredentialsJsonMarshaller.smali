.class Lcom/gpc/aws/services/cognitoidentity/model/transform/CredentialsJsonMarshaller;
.super Ljava/lang/Object;
.source "CredentialsJsonMarshaller.java"


# static fields
.field private static instance:Lcom/gpc/aws/services/cognitoidentity/model/transform/CredentialsJsonMarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/gpc/aws/services/cognitoidentity/model/transform/CredentialsJsonMarshaller;
    .locals 1

    .line 54
    sget-object v0, Lcom/gpc/aws/services/cognitoidentity/model/transform/CredentialsJsonMarshaller;->instance:Lcom/gpc/aws/services/cognitoidentity/model/transform/CredentialsJsonMarshaller;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/gpc/aws/services/cognitoidentity/model/transform/CredentialsJsonMarshaller;

    invoke-direct {v0}, Lcom/gpc/aws/services/cognitoidentity/model/transform/CredentialsJsonMarshaller;-><init>()V

    sput-object v0, Lcom/gpc/aws/services/cognitoidentity/model/transform/CredentialsJsonMarshaller;->instance:Lcom/gpc/aws/services/cognitoidentity/model/transform/CredentialsJsonMarshaller;

    .line 56
    :cond_0
    sget-object v0, Lcom/gpc/aws/services/cognitoidentity/model/transform/CredentialsJsonMarshaller;->instance:Lcom/gpc/aws/services/cognitoidentity/model/transform/CredentialsJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public marshall(Lcom/gpc/aws/services/cognitoidentity/model/Credentials;Lcom/gpc/aws/util/json/AwsJsonWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    invoke-interface {p2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->beginObject()Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 28
    invoke-virtual {p1}, Lcom/gpc/aws/services/cognitoidentity/model/Credentials;->getAccessKeyId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p1}, Lcom/gpc/aws/services/cognitoidentity/model/Credentials;->getAccessKeyId()Ljava/lang/String;

    move-result-object v0

    .line 30
    const-string v1, "AccessKeyId"

    invoke-interface {p2, v1}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 31
    invoke-interface {p2, v0}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/aws/services/cognitoidentity/model/Credentials;->getSecretKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {p1}, Lcom/gpc/aws/services/cognitoidentity/model/Credentials;->getSecretKey()Ljava/lang/String;

    move-result-object v0

    .line 35
    const-string v1, "SecretKey"

    invoke-interface {p2, v1}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 36
    invoke-interface {p2, v0}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 38
    :cond_1
    invoke-virtual {p1}, Lcom/gpc/aws/services/cognitoidentity/model/Credentials;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 39
    invoke-virtual {p1}, Lcom/gpc/aws/services/cognitoidentity/model/Credentials;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 40
    const-string v1, "SessionToken"

    invoke-interface {p2, v1}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 41
    invoke-interface {p2, v0}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 43
    :cond_2
    invoke-virtual {p1}, Lcom/gpc/aws/services/cognitoidentity/model/Credentials;->getExpiration()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 44
    invoke-virtual {p1}, Lcom/gpc/aws/services/cognitoidentity/model/Credentials;->getExpiration()Ljava/util/Date;

    move-result-object p1

    .line 45
    const-string v0, "Expiration"

    invoke-interface {p2, v0}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 46
    invoke-interface {p2, p1}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/util/Date;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 48
    :cond_3
    invoke-interface {p2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->endObject()Lcom/gpc/aws/util/json/AwsJsonWriter;

    return-void
.end method
