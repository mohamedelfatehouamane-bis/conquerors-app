.class public abstract Lcom/gpc/aws/auth/AWSAbstractCognitoDeveloperIdentityProvider;
.super Lcom/gpc/aws/auth/AWSAbstractCognitoIdentityProvider;
.source "AWSAbstractCognitoDeveloperIdentityProvider.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 44
    new-instance v0, Lcom/gpc/aws/ClientConfiguration;

    invoke-direct {v0}, Lcom/gpc/aws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/gpc/aws/auth/AWSAbstractCognitoDeveloperIdentityProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/aws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/aws/ClientConfiguration;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 77
    new-instance v0, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;

    new-instance v1, Lcom/gpc/aws/auth/AnonymousAWSCredentials;

    invoke-direct {v1}, Lcom/gpc/aws/auth/AnonymousAWSCredentials;-><init>()V

    invoke-direct {v0, v1, p3}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;-><init>(Lcom/gpc/aws/auth/AWSCredentials;Lcom/gpc/aws/ClientConfiguration;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/gpc/aws/auth/AWSAbstractCognitoDeveloperIdentityProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentity;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/aws/ClientConfiguration;Lcom/gpc/aws/regions/Regions;)V
    .locals 2

    .line 94
    new-instance v0, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;

    new-instance v1, Lcom/gpc/aws/auth/AnonymousAWSCredentials;

    invoke-direct {v1}, Lcom/gpc/aws/auth/AnonymousAWSCredentials;-><init>()V

    invoke-direct {v0, v1, p3}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;-><init>(Lcom/gpc/aws/auth/AWSCredentials;Lcom/gpc/aws/ClientConfiguration;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/gpc/aws/auth/AWSAbstractCognitoDeveloperIdentityProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentity;)V

    .line 96
    iget-object p1, p0, Lcom/gpc/aws/auth/AWSAbstractCognitoDeveloperIdentityProvider;->cib:Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentity;

    invoke-static {p4}, Lcom/gpc/aws/regions/Region;->getRegion(Lcom/gpc/aws/regions/Regions;)Lcom/gpc/aws/regions/Region;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentity;->setRegion(Lcom/gpc/aws/regions/Region;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/aws/regions/Regions;)V
    .locals 1

    .line 58
    new-instance v0, Lcom/gpc/aws/ClientConfiguration;

    invoke-direct {v0}, Lcom/gpc/aws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/gpc/aws/auth/AWSAbstractCognitoDeveloperIdentityProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/aws/ClientConfiguration;Lcom/gpc/aws/regions/Regions;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentity;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/gpc/aws/auth/AWSAbstractCognitoIdentityProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentity;)V

    return-void
.end method


# virtual methods
.method public abstract getProviderName()Ljava/lang/String;
.end method
