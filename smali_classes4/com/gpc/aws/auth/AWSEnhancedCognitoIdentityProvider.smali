.class public final Lcom/gpc/aws/auth/AWSEnhancedCognitoIdentityProvider;
.super Lcom/gpc/aws/auth/AWSAbstractCognitoIdentityProvider;
.source "AWSEnhancedCognitoIdentityProvider.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 37
    new-instance v0, Lcom/gpc/aws/ClientConfiguration;

    invoke-direct {v0}, Lcom/gpc/aws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/gpc/aws/auth/AWSEnhancedCognitoIdentityProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/aws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/aws/ClientConfiguration;)V
    .locals 2

    .line 51
    new-instance v0, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;

    new-instance v1, Lcom/gpc/aws/auth/AnonymousAWSCredentials;

    invoke-direct {v1}, Lcom/gpc/aws/auth/AnonymousAWSCredentials;-><init>()V

    invoke-direct {v0, v1, p3}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;-><init>(Lcom/gpc/aws/auth/AWSCredentials;Lcom/gpc/aws/ClientConfiguration;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/gpc/aws/auth/AWSEnhancedCognitoIdentityProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentity;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentity;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/gpc/aws/auth/AWSAbstractCognitoIdentityProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentity;)V

    return-void
.end method


# virtual methods
.method public getProviderName()Ljava/lang/String;
    .locals 1

    .line 71
    const-string v0, "Cognito"

    return-object v0
.end method

.method public refresh()Ljava/lang/String;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/gpc/aws/auth/AWSEnhancedCognitoIdentityProvider;->getIdentityId()Ljava/lang/String;

    const/4 v0, 0x0

    return-object v0
.end method
