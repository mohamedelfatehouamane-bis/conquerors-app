.class Lcom/gpc/aws/services/cognitoidentity/model/transform/CognitoIdentityProviderJsonUnmarshaller;
.super Ljava/lang/Object;
.source "CognitoIdentityProviderJsonUnmarshaller.java"

# interfaces
.implements Lcom/gpc/aws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/aws/transform/Unmarshaller<",
        "Lcom/gpc/aws/services/cognitoidentity/model/CognitoIdentityProvider;",
        "Lcom/gpc/aws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/gpc/aws/services/cognitoidentity/model/transform/CognitoIdentityProviderJsonUnmarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/gpc/aws/services/cognitoidentity/model/transform/CognitoIdentityProviderJsonUnmarshaller;
    .locals 1

    .line 60
    sget-object v0, Lcom/gpc/aws/services/cognitoidentity/model/transform/CognitoIdentityProviderJsonUnmarshaller;->instance:Lcom/gpc/aws/services/cognitoidentity/model/transform/CognitoIdentityProviderJsonUnmarshaller;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/gpc/aws/services/cognitoidentity/model/transform/CognitoIdentityProviderJsonUnmarshaller;

    invoke-direct {v0}, Lcom/gpc/aws/services/cognitoidentity/model/transform/CognitoIdentityProviderJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/gpc/aws/services/cognitoidentity/model/transform/CognitoIdentityProviderJsonUnmarshaller;->instance:Lcom/gpc/aws/services/cognitoidentity/model/transform/CognitoIdentityProviderJsonUnmarshaller;

    .line 62
    :cond_0
    sget-object v0, Lcom/gpc/aws/services/cognitoidentity/model/transform/CognitoIdentityProviderJsonUnmarshaller;->instance:Lcom/gpc/aws/services/cognitoidentity/model/transform/CognitoIdentityProviderJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Lcom/gpc/aws/services/cognitoidentity/model/CognitoIdentityProvider;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    invoke-virtual {p1}, Lcom/gpc/aws/transform/JsonUnmarshallerContext;->getReader()Lcom/gpc/aws/util/json/AwsJsonReader;

    move-result-object v0

    .line 31
    invoke-interface {v0}, Lcom/gpc/aws/util/json/AwsJsonReader;->isContainer()Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    invoke-interface {v0}, Lcom/gpc/aws/util/json/AwsJsonReader;->skipValue()V

    const/4 p1, 0x0

    return-object p1

    .line 35
    :cond_0
    new-instance v1, Lcom/gpc/aws/services/cognitoidentity/model/CognitoIdentityProvider;

    invoke-direct {v1}, Lcom/gpc/aws/services/cognitoidentity/model/CognitoIdentityProvider;-><init>()V

    .line 36
    invoke-interface {v0}, Lcom/gpc/aws/util/json/AwsJsonReader;->beginObject()V

    .line 37
    :goto_0
    invoke-interface {v0}, Lcom/gpc/aws/util/json/AwsJsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 38
    invoke-interface {v0}, Lcom/gpc/aws/util/json/AwsJsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 39
    const-string v3, "ProviderName"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 40
    invoke-static {}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->getInstance()Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 41
    invoke-virtual {v2, p1}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Lcom/gpc/aws/services/cognitoidentity/model/CognitoIdentityProvider;->setProviderName(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_1
    const-string v3, "ClientId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 43
    invoke-static {}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->getInstance()Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 44
    invoke-virtual {v2, p1}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Lcom/gpc/aws/services/cognitoidentity/model/CognitoIdentityProvider;->setClientId(Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_2
    const-string v3, "ServerSideTokenCheck"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 47
    invoke-static {}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;->getInstance()Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;

    move-result-object v2

    .line 48
    invoke-virtual {v2, p1}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Ljava/lang/Boolean;

    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Lcom/gpc/aws/services/cognitoidentity/model/CognitoIdentityProvider;->setServerSideTokenCheck(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 50
    :cond_3
    invoke-interface {v0}, Lcom/gpc/aws/util/json/AwsJsonReader;->skipValue()V

    goto :goto_0

    .line 53
    :cond_4
    invoke-interface {v0}, Lcom/gpc/aws/util/json/AwsJsonReader;->endObject()V

    return-object v1
.end method

.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    check-cast p1, Lcom/gpc/aws/transform/JsonUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/cognitoidentity/model/transform/CognitoIdentityProviderJsonUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Lcom/gpc/aws/services/cognitoidentity/model/CognitoIdentityProvider;

    move-result-object p1

    return-object p1
.end method
