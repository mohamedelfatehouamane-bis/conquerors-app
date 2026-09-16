.class public Lcom/gpc/aws/services/cognitoidentity/model/transform/CreateIdentityPoolRequestMarshaller;
.super Ljava/lang/Object;
.source "CreateIdentityPoolRequestMarshaller.java"

# interfaces
.implements Lcom/gpc/aws/transform/Marshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/aws/transform/Marshaller<",
        "Lcom/gpc/aws/Request<",
        "Lcom/gpc/aws/services/cognitoidentity/model/CreateIdentityPoolRequest;",
        ">;",
        "Lcom/gpc/aws/services/cognitoidentity/model/CreateIdentityPoolRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public marshall(Lcom/gpc/aws/services/cognitoidentity/model/CreateIdentityPoolRequest;)Lcom/gpc/aws/Request;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/aws/services/cognitoidentity/model/CreateIdentityPoolRequest;",
            ")",
            "Lcom/gpc/aws/Request<",
            "Lcom/gpc/aws/services/cognitoidentity/model/CreateIdentityPoolRequest;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_14

    .line 50
    new-instance v0, Lcom/gpc/aws/DefaultRequest;

    const-string v1, "AmazonCognitoIdentity"

    invoke-direct {v0, p1, v1}, Lcom/gpc/aws/DefaultRequest;-><init>(Lcom/gpc/aws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 52
    const-string v1, "AWSCognitoIdentityService.CreateIdentityPool"

    .line 53
    const-string v2, "X-Amz-Target"

    invoke-interface {v0, v2, v1}, Lcom/gpc/aws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object v1, Lcom/gpc/aws/http/HttpMethodName;->POST:Lcom/gpc/aws/http/HttpMethodName;

    invoke-interface {v0, v1}, Lcom/gpc/aws/Request;->setHttpMethod(Lcom/gpc/aws/http/HttpMethodName;)V

    .line 56
    const-string v1, "/"

    .line 57
    invoke-interface {v0, v1}, Lcom/gpc/aws/Request;->setResourcePath(Ljava/lang/String;)V

    .line 59
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 60
    invoke-static {v1}, Lcom/gpc/aws/util/json/JsonUtils;->getJsonWriter(Ljava/io/Writer;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    move-result-object v2

    .line 61
    invoke-interface {v2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->beginObject()Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 63
    invoke-virtual {p1}, Lcom/gpc/aws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getIdentityPoolName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 64
    invoke-virtual {p1}, Lcom/gpc/aws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getIdentityPoolName()Ljava/lang/String;

    move-result-object v3

    .line 65
    const-string v4, "IdentityPoolName"

    invoke-interface {v2, v4}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 66
    invoke-interface {v2, v3}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 68
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/aws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getAllowUnauthenticatedIdentities()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 70
    invoke-virtual {p1}, Lcom/gpc/aws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getAllowUnauthenticatedIdentities()Ljava/lang/Boolean;

    move-result-object v3

    .line 71
    const-string v4, "AllowUnauthenticatedIdentities"

    invoke-interface {v2, v4}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 72
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Z)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 74
    :cond_1
    invoke-virtual {p1}, Lcom/gpc/aws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getAllowClassicFlow()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 75
    invoke-virtual {p1}, Lcom/gpc/aws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getAllowClassicFlow()Ljava/lang/Boolean;

    move-result-object v3

    .line 76
    const-string v4, "AllowClassicFlow"

    invoke-interface {v2, v4}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 77
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Z)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 79
    :cond_2
    invoke-virtual {p1}, Lcom/gpc/aws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getSupportedLoginProviders()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 81
    invoke-virtual {p1}, Lcom/gpc/aws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getSupportedLoginProviders()Ljava/util/Map;

    move-result-object v3

    .line 82
    const-string v4, "SupportedLoginProviders"

    invoke-interface {v2, v4}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 83
    invoke-interface {v2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->beginObject()Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 85
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 84
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 86
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 88
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 89
    invoke-interface {v2, v5}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    goto :goto_0

    .line 92
    :cond_4
    invoke-interface {v2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->endObject()Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 94
    :cond_5
    invoke-virtual {p1}, Lcom/gpc/aws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getDeveloperProviderName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 95
    invoke-virtual {p1}, Lcom/gpc/aws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getDeveloperProviderName()Ljava/lang/String;

    move-result-object v3

    .line 96
    const-string v4, "DeveloperProviderName"

    invoke-interface {v2, v4}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 97
    invoke-interface {v2, v3}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 99
    :cond_6
    invoke-virtual {p1}, Lcom/gpc/aws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getOpenIdConnectProviderARNs()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 101
    invoke-virtual {p1}, Lcom/gpc/aws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getOpenIdConnectProviderARNs()Ljava/util/List;

    move-result-object v3

    .line 102
    const-string v4, "OpenIdConnectProviderARNs"

    invoke-interface {v2, v4}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 103
    invoke-interface {v2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->beginArray()Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 104
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 106
    invoke-interface {v2, v4}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    goto :goto_1

    .line 109
    :cond_8
    invoke-interface {v2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->endArray()Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 111
    :cond_9
    invoke-virtual {p1}, Lcom/gpc/aws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getCognitoIdentityProviders()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 113
    invoke-virtual {p1}, Lcom/gpc/aws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getCognitoIdentityProviders()Ljava/util/List;

    move-result-object v3

    .line 114
    const-string v4, "CognitoIdentityProviders"

    invoke-interface {v2, v4}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 115
    invoke-interface {v2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->beginArray()Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 116
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gpc/aws/services/cognitoidentity/model/CognitoIdentityProvider;

    if-eqz v4, :cond_a

    .line 118
    invoke-static {}, Lcom/gpc/aws/services/cognitoidentity/model/transform/CognitoIdentityProviderJsonMarshaller;->getInstance()Lcom/gpc/aws/services/cognitoidentity/model/transform/CognitoIdentityProviderJsonMarshaller;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Lcom/gpc/aws/services/cognitoidentity/model/transform/CognitoIdentityProviderJsonMarshaller;->marshall(Lcom/gpc/aws/services/cognitoidentity/model/CognitoIdentityProvider;Lcom/gpc/aws/util/json/AwsJsonWriter;)V

    goto :goto_2

    .line 122
    :cond_b
    invoke-interface {v2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->endArray()Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 124
    :cond_c
    invoke-virtual {p1}, Lcom/gpc/aws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getSamlProviderARNs()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 126
    invoke-virtual {p1}, Lcom/gpc/aws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getSamlProviderARNs()Ljava/util/List;

    move-result-object v3

    .line 127
    const-string v4, "SamlProviderARNs"

    invoke-interface {v2, v4}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 128
    invoke-interface {v2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->beginArray()Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 129
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 131
    invoke-interface {v2, v4}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    goto :goto_3

    .line 134
    :cond_e
    invoke-interface {v2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->endArray()Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 136
    :cond_f
    invoke-virtual {p1}, Lcom/gpc/aws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getIdentityPoolTags()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 138
    invoke-virtual {p1}, Lcom/gpc/aws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getIdentityPoolTags()Ljava/util/Map;

    move-result-object p1

    .line 139
    const-string v3, "IdentityPoolTags"

    invoke-interface {v2, v3}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 140
    invoke-interface {v2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->beginObject()Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 142
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 141
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 143
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_10

    .line 145
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 146
    invoke-interface {v2, v4}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    goto :goto_4

    .line 149
    :cond_11
    invoke-interface {v2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->endObject()Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 152
    :cond_12
    invoke-interface {v2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->endObject()Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 153
    invoke-interface {v2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->close()V

    .line 154
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    .line 155
    sget-object v1, Lcom/gpc/aws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 156
    new-instance v2, Lcom/gpc/aws/util/StringInputStream;

    invoke-direct {v2, p1}, Lcom/gpc/aws/util/StringInputStream;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/gpc/aws/Request;->setContent(Ljava/io/InputStream;)V

    .line 157
    const-string p1, "Content-Length"

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/gpc/aws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    invoke-interface {v0}, Lcom/gpc/aws/Request;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v1, "Content-Type"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    .line 163
    const-string p1, "application/x-amz-json-1.1"

    invoke-interface {v0, v1, p1}, Lcom/gpc/aws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    return-object v0

    :catchall_0
    move-exception p1

    .line 159
    new-instance v0, Lcom/gpc/aws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to marshall request to JSON: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/gpc/aws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 46
    :cond_14
    new-instance p1, Lcom/gpc/aws/AmazonClientException;

    const-string v0, "Invalid argument passed to marshall(CreateIdentityPoolRequest)"

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

    .line 40
    check-cast p1, Lcom/gpc/aws/services/cognitoidentity/model/CreateIdentityPoolRequest;

    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/cognitoidentity/model/transform/CreateIdentityPoolRequestMarshaller;->marshall(Lcom/gpc/aws/services/cognitoidentity/model/CreateIdentityPoolRequest;)Lcom/gpc/aws/Request;

    move-result-object p1

    return-object p1
.end method
