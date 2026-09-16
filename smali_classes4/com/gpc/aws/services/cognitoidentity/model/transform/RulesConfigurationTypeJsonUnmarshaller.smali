.class Lcom/gpc/aws/services/cognitoidentity/model/transform/RulesConfigurationTypeJsonUnmarshaller;
.super Ljava/lang/Object;
.source "RulesConfigurationTypeJsonUnmarshaller.java"

# interfaces
.implements Lcom/gpc/aws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/aws/transform/Unmarshaller<",
        "Lcom/gpc/aws/services/cognitoidentity/model/RulesConfigurationType;",
        "Lcom/gpc/aws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/gpc/aws/services/cognitoidentity/model/transform/RulesConfigurationTypeJsonUnmarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/gpc/aws/services/cognitoidentity/model/transform/RulesConfigurationTypeJsonUnmarshaller;
    .locals 1

    .line 55
    sget-object v0, Lcom/gpc/aws/services/cognitoidentity/model/transform/RulesConfigurationTypeJsonUnmarshaller;->instance:Lcom/gpc/aws/services/cognitoidentity/model/transform/RulesConfigurationTypeJsonUnmarshaller;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/gpc/aws/services/cognitoidentity/model/transform/RulesConfigurationTypeJsonUnmarshaller;

    invoke-direct {v0}, Lcom/gpc/aws/services/cognitoidentity/model/transform/RulesConfigurationTypeJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/gpc/aws/services/cognitoidentity/model/transform/RulesConfigurationTypeJsonUnmarshaller;->instance:Lcom/gpc/aws/services/cognitoidentity/model/transform/RulesConfigurationTypeJsonUnmarshaller;

    .line 57
    :cond_0
    sget-object v0, Lcom/gpc/aws/services/cognitoidentity/model/transform/RulesConfigurationTypeJsonUnmarshaller;->instance:Lcom/gpc/aws/services/cognitoidentity/model/transform/RulesConfigurationTypeJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Lcom/gpc/aws/services/cognitoidentity/model/RulesConfigurationType;
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
    new-instance v1, Lcom/gpc/aws/services/cognitoidentity/model/RulesConfigurationType;

    invoke-direct {v1}, Lcom/gpc/aws/services/cognitoidentity/model/RulesConfigurationType;-><init>()V

    .line 36
    invoke-interface {v0}, Lcom/gpc/aws/util/json/AwsJsonReader;->beginObject()V

    .line 37
    :goto_0
    invoke-interface {v0}, Lcom/gpc/aws/util/json/AwsJsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 38
    invoke-interface {v0}, Lcom/gpc/aws/util/json/AwsJsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 39
    const-string v3, "Rules"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    new-instance v2, Lcom/gpc/aws/transform/ListUnmarshaller;

    .line 41
    invoke-static {}, Lcom/gpc/aws/services/cognitoidentity/model/transform/MappingRuleJsonUnmarshaller;->getInstance()Lcom/gpc/aws/services/cognitoidentity/model/transform/MappingRuleJsonUnmarshaller;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/gpc/aws/transform/ListUnmarshaller;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 43
    invoke-virtual {v2, p1}, Lcom/gpc/aws/transform/ListUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Ljava/util/List;

    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Lcom/gpc/aws/services/cognitoidentity/model/RulesConfigurationType;->setRules(Ljava/util/Collection;)V

    goto :goto_0

    .line 45
    :cond_1
    invoke-interface {v0}, Lcom/gpc/aws/util/json/AwsJsonReader;->skipValue()V

    goto :goto_0

    .line 48
    :cond_2
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

    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/cognitoidentity/model/transform/RulesConfigurationTypeJsonUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Lcom/gpc/aws/services/cognitoidentity/model/RulesConfigurationType;

    move-result-object p1

    return-object p1
.end method
