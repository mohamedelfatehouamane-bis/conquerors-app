.class public Lcom/gpc/aws/services/cognitoidentity/model/transform/GetIdentityPoolRolesResultJsonUnmarshaller;
.super Ljava/lang/Object;
.source "GetIdentityPoolRolesResultJsonUnmarshaller.java"

# interfaces
.implements Lcom/gpc/aws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/aws/transform/Unmarshaller<",
        "Lcom/gpc/aws/services/cognitoidentity/model/GetIdentityPoolRolesResult;",
        "Lcom/gpc/aws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/gpc/aws/services/cognitoidentity/model/transform/GetIdentityPoolRolesResultJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/gpc/aws/services/cognitoidentity/model/transform/GetIdentityPoolRolesResultJsonUnmarshaller;
    .locals 1

    .line 61
    sget-object v0, Lcom/gpc/aws/services/cognitoidentity/model/transform/GetIdentityPoolRolesResultJsonUnmarshaller;->instance:Lcom/gpc/aws/services/cognitoidentity/model/transform/GetIdentityPoolRolesResultJsonUnmarshaller;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/gpc/aws/services/cognitoidentity/model/transform/GetIdentityPoolRolesResultJsonUnmarshaller;

    invoke-direct {v0}, Lcom/gpc/aws/services/cognitoidentity/model/transform/GetIdentityPoolRolesResultJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/gpc/aws/services/cognitoidentity/model/transform/GetIdentityPoolRolesResultJsonUnmarshaller;->instance:Lcom/gpc/aws/services/cognitoidentity/model/transform/GetIdentityPoolRolesResultJsonUnmarshaller;

    .line 63
    :cond_0
    sget-object v0, Lcom/gpc/aws/services/cognitoidentity/model/transform/GetIdentityPoolRolesResultJsonUnmarshaller;->instance:Lcom/gpc/aws/services/cognitoidentity/model/transform/GetIdentityPoolRolesResultJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Lcom/gpc/aws/services/cognitoidentity/model/GetIdentityPoolRolesResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/gpc/aws/services/cognitoidentity/model/GetIdentityPoolRolesResult;

    invoke-direct {v0}, Lcom/gpc/aws/services/cognitoidentity/model/GetIdentityPoolRolesResult;-><init>()V

    .line 32
    invoke-virtual {p1}, Lcom/gpc/aws/transform/JsonUnmarshallerContext;->getReader()Lcom/gpc/aws/util/json/AwsJsonReader;

    move-result-object v1

    .line 33
    invoke-interface {v1}, Lcom/gpc/aws/util/json/AwsJsonReader;->beginObject()V

    .line 34
    :goto_0
    invoke-interface {v1}, Lcom/gpc/aws/util/json/AwsJsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 35
    invoke-interface {v1}, Lcom/gpc/aws/util/json/AwsJsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 36
    const-string v3, "IdentityPoolId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 37
    invoke-static {}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->getInstance()Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 38
    invoke-virtual {v2, p1}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-virtual {v0, v2}, Lcom/gpc/aws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->setIdentityPoolId(Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_0
    const-string v3, "Roles"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 40
    new-instance v2, Lcom/gpc/aws/transform/MapUnmarshaller;

    .line 41
    invoke-static {}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->getInstance()Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/gpc/aws/transform/MapUnmarshaller;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 43
    invoke-virtual {v2, p1}, Lcom/gpc/aws/transform/MapUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Ljava/util/Map;

    move-result-object v2

    .line 40
    invoke-virtual {v0, v2}, Lcom/gpc/aws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->setRoles(Ljava/util/Map;)V

    goto :goto_0

    .line 44
    :cond_1
    const-string v3, "RoleMappings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 45
    new-instance v2, Lcom/gpc/aws/transform/MapUnmarshaller;

    .line 46
    invoke-static {}, Lcom/gpc/aws/services/cognitoidentity/model/transform/RoleMappingJsonUnmarshaller;->getInstance()Lcom/gpc/aws/services/cognitoidentity/model/transform/RoleMappingJsonUnmarshaller;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/gpc/aws/transform/MapUnmarshaller;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 48
    invoke-virtual {v2, p1}, Lcom/gpc/aws/transform/MapUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Ljava/util/Map;

    move-result-object v2

    .line 45
    invoke-virtual {v0, v2}, Lcom/gpc/aws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->setRoleMappings(Ljava/util/Map;)V

    goto :goto_0

    .line 50
    :cond_2
    invoke-interface {v1}, Lcom/gpc/aws/util/json/AwsJsonReader;->skipValue()V

    goto :goto_0

    .line 53
    :cond_3
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

    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/cognitoidentity/model/transform/GetIdentityPoolRolesResultJsonUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Lcom/gpc/aws/services/cognitoidentity/model/GetIdentityPoolRolesResult;

    move-result-object p1

    return-object p1
.end method
