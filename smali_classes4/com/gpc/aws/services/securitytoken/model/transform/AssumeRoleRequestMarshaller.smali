.class public Lcom/gpc/aws/services/securitytoken/model/transform/AssumeRoleRequestMarshaller;
.super Ljava/lang/Object;
.source "AssumeRoleRequestMarshaller.java"

# interfaces
.implements Lcom/gpc/aws/transform/Marshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/aws/transform/Marshaller<",
        "Lcom/gpc/aws/Request<",
        "Lcom/gpc/aws/services/securitytoken/model/AssumeRoleRequest;",
        ">;",
        "Lcom/gpc/aws/services/securitytoken/model/AssumeRoleRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public marshall(Lcom/gpc/aws/services/securitytoken/model/AssumeRoleRequest;)Lcom/gpc/aws/Request;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/aws/services/securitytoken/model/AssumeRoleRequest;",
            ")",
            "Lcom/gpc/aws/Request<",
            "Lcom/gpc/aws/services/securitytoken/model/AssumeRoleRequest;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_d

    .line 37
    new-instance v0, Lcom/gpc/aws/DefaultRequest;

    const-string v1, "AWSSecurityTokenService"

    invoke-direct {v0, p1, v1}, Lcom/gpc/aws/DefaultRequest;-><init>(Lcom/gpc/aws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 39
    const-string v1, "Action"

    const-string v2, "AssumeRole"

    invoke-interface {v0, v1, v2}, Lcom/gpc/aws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v1, "Version"

    const-string v2, "2011-06-15"

    invoke-interface {v0, v1, v2}, Lcom/gpc/aws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleRequest;->getRoleArn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {p1}, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleRequest;->getRoleArn()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {v1}, Lcom/gpc/aws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RoleArn"

    invoke-interface {v0, v2, v1}, Lcom/gpc/aws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleRequest;->getRoleSessionName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {p1}, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleRequest;->getRoleSessionName()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-static {v1}, Lcom/gpc/aws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RoleSessionName"

    invoke-interface {v0, v2, v1}, Lcom/gpc/aws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_1
    invoke-virtual {p1}, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleRequest;->getPolicyArns()Ljava/util/List;

    move-result-object v1

    const-string v2, "."

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 55
    invoke-virtual {p1}, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleRequest;->getPolicyArns()Ljava/util/List;

    move-result-object v1

    .line 58
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gpc/aws/services/securitytoken/model/PolicyDescriptorType;

    .line 59
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "PolicyArns.member."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_2

    .line 61
    invoke-static {}, Lcom/gpc/aws/services/securitytoken/model/transform/PolicyDescriptorTypeStaxMarshaller;->getInstance()Lcom/gpc/aws/services/securitytoken/model/transform/PolicyDescriptorTypeStaxMarshaller;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v5, v0, v6}, Lcom/gpc/aws/services/securitytoken/model/transform/PolicyDescriptorTypeStaxMarshaller;->marshall(Lcom/gpc/aws/services/securitytoken/model/PolicyDescriptorType;Lcom/gpc/aws/Request;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 68
    :cond_3
    invoke-virtual {p1}, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleRequest;->getPolicy()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 70
    invoke-virtual {p1}, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleRequest;->getPolicy()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {v1}, Lcom/gpc/aws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "Policy"

    invoke-interface {v0, v4, v1}, Lcom/gpc/aws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_4
    invoke-virtual {p1}, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 75
    invoke-virtual {p1}, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v1

    .line 76
    invoke-static {v1}, Lcom/gpc/aws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "DurationSeconds"

    invoke-interface {v0, v4, v1}, Lcom/gpc/aws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_5
    invoke-virtual {p1}, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleRequest;->getTags()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 80
    invoke-virtual {p1}, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleRequest;->getTags()Ljava/util/List;

    move-result-object v1

    .line 83
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gpc/aws/services/securitytoken/model/Tag;

    .line 84
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Tags.member."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_6

    .line 86
    invoke-static {}, Lcom/gpc/aws/services/securitytoken/model/transform/TagStaxMarshaller;->getInstance()Lcom/gpc/aws/services/securitytoken/model/transform/TagStaxMarshaller;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v5, v0, v6}, Lcom/gpc/aws/services/securitytoken/model/transform/TagStaxMarshaller;->marshall(Lcom/gpc/aws/services/securitytoken/model/Tag;Lcom/gpc/aws/Request;Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 92
    :cond_7
    invoke-virtual {p1}, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleRequest;->getTransitiveTagKeys()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 94
    invoke-virtual {p1}, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleRequest;->getTransitiveTagKeys()Ljava/util/List;

    move-result-object v1

    .line 97
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TransitiveTagKeys.member."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_8

    .line 100
    invoke-static {v2}, Lcom/gpc/aws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Lcom/gpc/aws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 106
    :cond_9
    invoke-virtual {p1}, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleRequest;->getExternalId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 108
    invoke-virtual {p1}, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleRequest;->getExternalId()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static {v1}, Lcom/gpc/aws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExternalId"

    invoke-interface {v0, v2, v1}, Lcom/gpc/aws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_a
    invoke-virtual {p1}, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 113
    invoke-virtual {p1}, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {v1}, Lcom/gpc/aws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SerialNumber"

    invoke-interface {v0, v2, v1}, Lcom/gpc/aws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_b
    invoke-virtual {p1}, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleRequest;->getTokenCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 118
    invoke-virtual {p1}, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleRequest;->getTokenCode()Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-static {p1}, Lcom/gpc/aws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "TokenCode"

    invoke-interface {v0, v1, p1}, Lcom/gpc/aws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-object v0

    .line 33
    :cond_d
    new-instance p1, Lcom/gpc/aws/AmazonClientException;

    const-string v0, "Invalid argument passed to marshall(AssumeRoleRequest)"

    invoke-direct {p1, v0}, Lcom/gpc/aws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic marshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    check-cast p1, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleRequest;

    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/securitytoken/model/transform/AssumeRoleRequestMarshaller;->marshall(Lcom/gpc/aws/services/securitytoken/model/AssumeRoleRequest;)Lcom/gpc/aws/Request;

    move-result-object p1

    return-object p1
.end method
