.class public Lcom/gpc/aws/services/cognitoidentity/model/transform/DeleteIdentitiesResultJsonUnmarshaller;
.super Ljava/lang/Object;
.source "DeleteIdentitiesResultJsonUnmarshaller.java"

# interfaces
.implements Lcom/gpc/aws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/aws/transform/Unmarshaller<",
        "Lcom/gpc/aws/services/cognitoidentity/model/DeleteIdentitiesResult;",
        "Lcom/gpc/aws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/gpc/aws/services/cognitoidentity/model/transform/DeleteIdentitiesResultJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/gpc/aws/services/cognitoidentity/model/transform/DeleteIdentitiesResultJsonUnmarshaller;
    .locals 1

    .line 54
    sget-object v0, Lcom/gpc/aws/services/cognitoidentity/model/transform/DeleteIdentitiesResultJsonUnmarshaller;->instance:Lcom/gpc/aws/services/cognitoidentity/model/transform/DeleteIdentitiesResultJsonUnmarshaller;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/gpc/aws/services/cognitoidentity/model/transform/DeleteIdentitiesResultJsonUnmarshaller;

    invoke-direct {v0}, Lcom/gpc/aws/services/cognitoidentity/model/transform/DeleteIdentitiesResultJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/gpc/aws/services/cognitoidentity/model/transform/DeleteIdentitiesResultJsonUnmarshaller;->instance:Lcom/gpc/aws/services/cognitoidentity/model/transform/DeleteIdentitiesResultJsonUnmarshaller;

    .line 56
    :cond_0
    sget-object v0, Lcom/gpc/aws/services/cognitoidentity/model/transform/DeleteIdentitiesResultJsonUnmarshaller;->instance:Lcom/gpc/aws/services/cognitoidentity/model/transform/DeleteIdentitiesResultJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Lcom/gpc/aws/services/cognitoidentity/model/DeleteIdentitiesResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/gpc/aws/services/cognitoidentity/model/DeleteIdentitiesResult;

    invoke-direct {v0}, Lcom/gpc/aws/services/cognitoidentity/model/DeleteIdentitiesResult;-><init>()V

    .line 32
    invoke-virtual {p1}, Lcom/gpc/aws/transform/JsonUnmarshallerContext;->getReader()Lcom/gpc/aws/util/json/AwsJsonReader;

    move-result-object v1

    .line 33
    invoke-interface {v1}, Lcom/gpc/aws/util/json/AwsJsonReader;->beginObject()V

    .line 34
    :goto_0
    invoke-interface {v1}, Lcom/gpc/aws/util/json/AwsJsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 35
    invoke-interface {v1}, Lcom/gpc/aws/util/json/AwsJsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 36
    const-string v3, "UnprocessedIdentityIds"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    new-instance v2, Lcom/gpc/aws/transform/ListUnmarshaller;

    .line 39
    invoke-static {}, Lcom/gpc/aws/services/cognitoidentity/model/transform/UnprocessedIdentityIdJsonUnmarshaller;->getInstance()Lcom/gpc/aws/services/cognitoidentity/model/transform/UnprocessedIdentityIdJsonUnmarshaller;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/gpc/aws/transform/ListUnmarshaller;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 41
    invoke-virtual {v2, p1}, Lcom/gpc/aws/transform/ListUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Ljava/util/List;

    move-result-object v2

    .line 38
    invoke-virtual {v0, v2}, Lcom/gpc/aws/services/cognitoidentity/model/DeleteIdentitiesResult;->setUnprocessedIdentityIds(Ljava/util/Collection;)V

    goto :goto_0

    .line 43
    :cond_0
    invoke-interface {v1}, Lcom/gpc/aws/util/json/AwsJsonReader;->skipValue()V

    goto :goto_0

    .line 46
    :cond_1
    invoke-interface {v1}, Lcom/gpc/aws/util/json/AwsJsonReader;->endObject()V

    return-object v0
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

    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/cognitoidentity/model/transform/DeleteIdentitiesResultJsonUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Lcom/gpc/aws/services/cognitoidentity/model/DeleteIdentitiesResult;

    move-result-object p1

    return-object p1
.end method
