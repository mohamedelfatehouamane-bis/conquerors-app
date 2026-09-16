.class Lcom/gpc/aws/services/cognitoidentity/model/transform/RulesConfigurationTypeJsonMarshaller;
.super Ljava/lang/Object;
.source "RulesConfigurationTypeJsonMarshaller.java"


# static fields
.field private static instance:Lcom/gpc/aws/services/cognitoidentity/model/transform/RulesConfigurationTypeJsonMarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/gpc/aws/services/cognitoidentity/model/transform/RulesConfigurationTypeJsonMarshaller;
    .locals 1

    .line 46
    sget-object v0, Lcom/gpc/aws/services/cognitoidentity/model/transform/RulesConfigurationTypeJsonMarshaller;->instance:Lcom/gpc/aws/services/cognitoidentity/model/transform/RulesConfigurationTypeJsonMarshaller;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/gpc/aws/services/cognitoidentity/model/transform/RulesConfigurationTypeJsonMarshaller;

    invoke-direct {v0}, Lcom/gpc/aws/services/cognitoidentity/model/transform/RulesConfigurationTypeJsonMarshaller;-><init>()V

    sput-object v0, Lcom/gpc/aws/services/cognitoidentity/model/transform/RulesConfigurationTypeJsonMarshaller;->instance:Lcom/gpc/aws/services/cognitoidentity/model/transform/RulesConfigurationTypeJsonMarshaller;

    .line 48
    :cond_0
    sget-object v0, Lcom/gpc/aws/services/cognitoidentity/model/transform/RulesConfigurationTypeJsonMarshaller;->instance:Lcom/gpc/aws/services/cognitoidentity/model/transform/RulesConfigurationTypeJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public marshall(Lcom/gpc/aws/services/cognitoidentity/model/RulesConfigurationType;Lcom/gpc/aws/util/json/AwsJsonWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-interface {p2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->beginObject()Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 29
    invoke-virtual {p1}, Lcom/gpc/aws/services/cognitoidentity/model/RulesConfigurationType;->getRules()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 30
    invoke-virtual {p1}, Lcom/gpc/aws/services/cognitoidentity/model/RulesConfigurationType;->getRules()Ljava/util/List;

    move-result-object p1

    .line 31
    const-string v0, "Rules"

    invoke-interface {p2, v0}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 32
    invoke-interface {p2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->beginArray()Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 33
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/aws/services/cognitoidentity/model/MappingRule;

    if-eqz v0, :cond_0

    .line 35
    invoke-static {}, Lcom/gpc/aws/services/cognitoidentity/model/transform/MappingRuleJsonMarshaller;->getInstance()Lcom/gpc/aws/services/cognitoidentity/model/transform/MappingRuleJsonMarshaller;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/gpc/aws/services/cognitoidentity/model/transform/MappingRuleJsonMarshaller;->marshall(Lcom/gpc/aws/services/cognitoidentity/model/MappingRule;Lcom/gpc/aws/util/json/AwsJsonWriter;)V

    goto :goto_0

    .line 38
    :cond_1
    invoke-interface {p2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->endArray()Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 40
    :cond_2
    invoke-interface {p2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->endObject()Lcom/gpc/aws/util/json/AwsJsonWriter;

    return-void
.end method
