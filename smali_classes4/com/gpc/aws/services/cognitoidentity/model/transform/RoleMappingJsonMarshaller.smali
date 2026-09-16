.class Lcom/gpc/aws/services/cognitoidentity/model/transform/RoleMappingJsonMarshaller;
.super Ljava/lang/Object;
.source "RoleMappingJsonMarshaller.java"


# static fields
.field private static instance:Lcom/gpc/aws/services/cognitoidentity/model/transform/RoleMappingJsonMarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/gpc/aws/services/cognitoidentity/model/transform/RoleMappingJsonMarshaller;
    .locals 1

    .line 50
    sget-object v0, Lcom/gpc/aws/services/cognitoidentity/model/transform/RoleMappingJsonMarshaller;->instance:Lcom/gpc/aws/services/cognitoidentity/model/transform/RoleMappingJsonMarshaller;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/gpc/aws/services/cognitoidentity/model/transform/RoleMappingJsonMarshaller;

    invoke-direct {v0}, Lcom/gpc/aws/services/cognitoidentity/model/transform/RoleMappingJsonMarshaller;-><init>()V

    sput-object v0, Lcom/gpc/aws/services/cognitoidentity/model/transform/RoleMappingJsonMarshaller;->instance:Lcom/gpc/aws/services/cognitoidentity/model/transform/RoleMappingJsonMarshaller;

    .line 52
    :cond_0
    sget-object v0, Lcom/gpc/aws/services/cognitoidentity/model/transform/RoleMappingJsonMarshaller;->instance:Lcom/gpc/aws/services/cognitoidentity/model/transform/RoleMappingJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public marshall(Lcom/gpc/aws/services/cognitoidentity/model/RoleMapping;Lcom/gpc/aws/util/json/AwsJsonWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    invoke-interface {p2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->beginObject()Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 28
    invoke-virtual {p1}, Lcom/gpc/aws/services/cognitoidentity/model/RoleMapping;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p1}, Lcom/gpc/aws/services/cognitoidentity/model/RoleMapping;->getType()Ljava/lang/String;

    move-result-object v0

    .line 30
    const-string v1, "Type"

    invoke-interface {p2, v1}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 31
    invoke-interface {p2, v0}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/aws/services/cognitoidentity/model/RoleMapping;->getAmbiguousRoleResolution()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {p1}, Lcom/gpc/aws/services/cognitoidentity/model/RoleMapping;->getAmbiguousRoleResolution()Ljava/lang/String;

    move-result-object v0

    .line 35
    const-string v1, "AmbiguousRoleResolution"

    invoke-interface {p2, v1}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 36
    invoke-interface {p2, v0}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 38
    :cond_1
    invoke-virtual {p1}, Lcom/gpc/aws/services/cognitoidentity/model/RoleMapping;->getRulesConfiguration()Lcom/gpc/aws/services/cognitoidentity/model/RulesConfigurationType;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 39
    invoke-virtual {p1}, Lcom/gpc/aws/services/cognitoidentity/model/RoleMapping;->getRulesConfiguration()Lcom/gpc/aws/services/cognitoidentity/model/RulesConfigurationType;

    move-result-object p1

    .line 40
    const-string v0, "RulesConfiguration"

    invoke-interface {p2, v0}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 41
    invoke-static {}, Lcom/gpc/aws/services/cognitoidentity/model/transform/RulesConfigurationTypeJsonMarshaller;->getInstance()Lcom/gpc/aws/services/cognitoidentity/model/transform/RulesConfigurationTypeJsonMarshaller;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/gpc/aws/services/cognitoidentity/model/transform/RulesConfigurationTypeJsonMarshaller;->marshall(Lcom/gpc/aws/services/cognitoidentity/model/RulesConfigurationType;Lcom/gpc/aws/util/json/AwsJsonWriter;)V

    .line 44
    :cond_2
    invoke-interface {p2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->endObject()Lcom/gpc/aws/util/json/AwsJsonWriter;

    return-void
.end method
