.class public Lcom/gpc/aws/auth/CognitoCredentialsProvider;
.super Ljava/lang/Object;
.source "CognitoCredentialsProvider.java"

# interfaces
.implements Lcom/gpc/aws/auth/AWSCredentialsProvider;


# static fields
.field public static final DEFAULT_DURATION_SECONDS:I = 0xe10

.field public static final DEFAULT_THRESHOLD_SECONDS:I = 0x1f4

.field private static final log:Lcom/gpc/aws/logging/Log;


# instance fields
.field protected authRoleArn:Ljava/lang/String;

.field private cib:Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentity;

.field protected final credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field protected customRoleArn:Ljava/lang/String;

.field private final identityProvider:Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;

.field protected refreshThreshold:I

.field private final region:Ljava/lang/String;

.field protected securityTokenService:Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenService;

.field protected sessionCredentials:Lcom/gpc/aws/auth/AWSSessionCredentials;

.field protected sessionCredentialsExpiration:Ljava/util/Date;

.field protected sessionDuration:I

.field protected token:Ljava/lang/String;

.field protected unauthRoleArn:Ljava/lang/String;

.field protected final useEnhancedFlow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lcom/gpc/aws/auth/AWSCredentialsProviderChain;

    invoke-static {v0}, Lcom/gpc/aws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/gpc/aws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->log:Lcom/gpc/aws/logging/Log;

    return-void
.end method

.method public constructor <init>(Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;Lcom/gpc/aws/regions/Regions;)V
    .locals 1

    .line 366
    new-instance v0, Lcom/gpc/aws/ClientConfiguration;

    invoke-direct {v0}, Lcom/gpc/aws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;-><init>(Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;Lcom/gpc/aws/regions/Regions;Lcom/gpc/aws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;Lcom/gpc/aws/regions/Regions;Lcom/gpc/aws/ClientConfiguration;)V
    .locals 0

    .line 388
    invoke-static {p3, p2}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->createIdentityClient(Lcom/gpc/aws/ClientConfiguration;Lcom/gpc/aws/regions/Regions;)Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;-><init>(Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;)V
    .locals 0

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    iput-object p2, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->cib:Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentity;

    .line 411
    invoke-virtual {p2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->getRegions()Lcom/gpc/aws/regions/Regions;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/aws/regions/Regions;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->region:Ljava/lang/String;

    .line 412
    iput-object p1, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->identityProvider:Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;

    const/4 p1, 0x0

    .line 413
    iput-object p1, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->unauthRoleArn:Ljava/lang/String;

    .line 414
    iput-object p1, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->authRoleArn:Ljava/lang/String;

    .line 415
    iput-object p1, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->securityTokenService:Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenService;

    const/16 p1, 0xe10

    .line 416
    iput p1, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->sessionDuration:I

    const/16 p1, 0x1f4

    .line 417
    iput p1, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->refreshThreshold:I

    const/4 p1, 0x1

    .line 418
    iput-boolean p1, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->useEnhancedFlow:Z

    .line 419
    new-instance p2, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {p2, p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object p2, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-void
.end method

.method public constructor <init>(Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 309
    new-instance v0, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;

    new-instance v1, Lcom/gpc/aws/auth/AnonymousAWSCredentials;

    invoke-direct {v1}, Lcom/gpc/aws/auth/AnonymousAWSCredentials;-><init>()V

    new-instance v2, Lcom/gpc/aws/ClientConfiguration;

    invoke-direct {v2}, Lcom/gpc/aws/ClientConfiguration;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>(Lcom/gpc/aws/auth/AWSCredentials;Lcom/gpc/aws/ClientConfiguration;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;-><init>(Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenService;)V

    return-void
.end method

.method public constructor <init>(Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenService;)V
    .locals 1

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput-object p1, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->identityProvider:Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;

    .line 333
    instance-of v0, p1, Lcom/gpc/aws/auth/AWSAbstractCognitoIdentityProvider;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/gpc/aws/auth/AWSAbstractCognitoIdentityProvider;

    iget-object v0, p1, Lcom/gpc/aws/auth/AWSAbstractCognitoIdentityProvider;->cib:Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentity;

    instance-of v0, v0, Lcom/gpc/aws/AmazonWebServiceClient;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/gpc/aws/auth/AWSAbstractCognitoIdentityProvider;->cib:Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentity;

    check-cast v0, Lcom/gpc/aws/AmazonWebServiceClient;

    .line 335
    invoke-virtual {v0}, Lcom/gpc/aws/AmazonWebServiceClient;->getRegions()Lcom/gpc/aws/regions/Regions;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 336
    iget-object p1, p1, Lcom/gpc/aws/auth/AWSAbstractCognitoIdentityProvider;->cib:Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentity;

    check-cast p1, Lcom/gpc/aws/AmazonWebServiceClient;

    invoke-virtual {p1}, Lcom/gpc/aws/AmazonWebServiceClient;->getRegions()Lcom/gpc/aws/regions/Regions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/aws/regions/Regions;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->region:Ljava/lang/String;

    goto :goto_0

    .line 338
    :cond_0
    sget-object p1, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->log:Lcom/gpc/aws/logging/Log;

    const-string v0, "Could not determine region of the Cognito Identity client, using default us-east-1"

    invoke-interface {p1, v0}, Lcom/gpc/aws/logging/Log;->warn(Ljava/lang/Object;)V

    .line 339
    sget-object p1, Lcom/gpc/aws/regions/Regions;->US_EAST_1:Lcom/gpc/aws/regions/Regions;

    invoke-virtual {p1}, Lcom/gpc/aws/regions/Regions;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->region:Ljava/lang/String;

    .line 341
    :goto_0
    iput-object p2, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->unauthRoleArn:Ljava/lang/String;

    .line 342
    iput-object p3, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->authRoleArn:Ljava/lang/String;

    .line 343
    iput-object p4, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->securityTokenService:Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenService;

    const/16 p1, 0xe10

    .line 344
    iput p1, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->sessionDuration:I

    const/16 p1, 0x1f4

    .line 345
    iput p1, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->refreshThreshold:I

    const/4 p1, 0x0

    .line 346
    iput-boolean p1, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->useEnhancedFlow:Z

    .line 347
    new-instance p1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object p1, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-void
.end method

.method public constructor <init>(Lcom/gpc/aws/mobile/config/AWSConfiguration;)V
    .locals 7

    .line 175
    invoke-static {p1}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->getIdentityPoolId(Lcom/gpc/aws/mobile/config/AWSConfiguration;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->getRegions(Lcom/gpc/aws/mobile/config/AWSConfiguration;)Lcom/gpc/aws/regions/Regions;

    move-result-object v5

    invoke-static {p1}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->getClientConfiguration(Lcom/gpc/aws/mobile/config/AWSConfiguration;)Lcom/gpc/aws/ClientConfiguration;

    move-result-object v6

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/aws/regions/Regions;Lcom/gpc/aws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/gpc/aws/regions/Regions;)V
    .locals 7

    .line 216
    new-instance v6, Lcom/gpc/aws/ClientConfiguration;

    invoke-direct {v6}, Lcom/gpc/aws/ClientConfiguration;-><init>()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/aws/regions/Regions;Lcom/gpc/aws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/gpc/aws/regions/Regions;Lcom/gpc/aws/ClientConfiguration;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    .line 236
    invoke-direct/range {v0 .. v6}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/aws/regions/Regions;Lcom/gpc/aws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/aws/regions/Regions;)V
    .locals 7

    .line 111
    new-instance v6, Lcom/gpc/aws/ClientConfiguration;

    invoke-direct {v6}, Lcom/gpc/aws/ClientConfiguration;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/aws/regions/Regions;Lcom/gpc/aws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/aws/regions/Regions;Lcom/gpc/aws/ClientConfiguration;)V
    .locals 7

    .line 140
    invoke-static {p6, p5}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->createIdentityClient(Lcom/gpc/aws/ClientConfiguration;Lcom/gpc/aws/regions/Regions;)Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;

    move-result-object v5

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    const/4 p5, 0x0

    goto :goto_0

    :cond_0
    new-instance p5, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;

    new-instance v0, Lcom/gpc/aws/auth/AnonymousAWSCredentials;

    invoke-direct {v0}, Lcom/gpc/aws/auth/AnonymousAWSCredentials;-><init>()V

    invoke-direct {p5, v0, p6}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>(Lcom/gpc/aws/auth/AWSCredentials;Lcom/gpc/aws/ClientConfiguration;)V

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 139
    invoke-direct/range {v0 .. v6}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenService;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenService;)V
    .locals 1

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-object p5, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->cib:Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentity;

    .line 271
    invoke-virtual {p5}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->getRegions()Lcom/gpc/aws/regions/Regions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/aws/regions/Regions;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->region:Ljava/lang/String;

    .line 272
    iput-object p6, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->securityTokenService:Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenService;

    .line 274
    iput-object p3, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->unauthRoleArn:Ljava/lang/String;

    .line 275
    iput-object p4, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->authRoleArn:Ljava/lang/String;

    const/16 p6, 0xe10

    .line 276
    iput p6, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->sessionDuration:I

    const/16 p6, 0x1f4

    .line 277
    iput p6, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->refreshThreshold:I

    const/4 p6, 0x1

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 279
    :goto_0
    iput-boolean p3, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->useEnhancedFlow:Z

    if-eqz p3, :cond_1

    .line 282
    new-instance p3, Lcom/gpc/aws/auth/AWSEnhancedCognitoIdentityProvider;

    invoke-direct {p3, p1, p2, p5}, Lcom/gpc/aws/auth/AWSEnhancedCognitoIdentityProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentity;)V

    iput-object p3, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->identityProvider:Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;

    goto :goto_1

    .line 286
    :cond_1
    new-instance p3, Lcom/gpc/aws/auth/AWSBasicCognitoIdentityProvider;

    invoke-direct {p3, p1, p2, p5}, Lcom/gpc/aws/auth/AWSBasicCognitoIdentityProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentity;)V

    iput-object p3, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->identityProvider:Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;

    .line 289
    :goto_1
    new-instance p1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {p1, p6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object p1, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-void
.end method

.method private appendUserAgent(Lcom/gpc/aws/AmazonWebServiceRequest;Ljava/lang/String;)V
    .locals 0

    .line 867
    invoke-virtual {p1}, Lcom/gpc/aws/AmazonWebServiceRequest;->getRequestClientOptions()Lcom/gpc/aws/RequestClientOptions;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/gpc/aws/RequestClientOptions;->appendUserAgent(Ljava/lang/String;)V

    return-void
.end method

.method private static createIdentityClient(Lcom/gpc/aws/ClientConfiguration;Lcom/gpc/aws/regions/Regions;)Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;
    .locals 2

    .line 147
    new-instance v0, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;

    new-instance v1, Lcom/gpc/aws/auth/AnonymousAWSCredentials;

    invoke-direct {v1}, Lcom/gpc/aws/auth/AnonymousAWSCredentials;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;-><init>(Lcom/gpc/aws/auth/AWSCredentials;Lcom/gpc/aws/ClientConfiguration;)V

    .line 148
    invoke-static {p1}, Lcom/gpc/aws/regions/Region;->getRegion(Lcom/gpc/aws/regions/Regions;)Lcom/gpc/aws/regions/Region;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->setRegion(Lcom/gpc/aws/regions/Region;)V

    return-object v0
.end method

.method private static getClientConfiguration(Lcom/gpc/aws/mobile/config/AWSConfiguration;)Lcom/gpc/aws/ClientConfiguration;
    .locals 1

    .line 201
    new-instance v0, Lcom/gpc/aws/ClientConfiguration;

    invoke-direct {v0}, Lcom/gpc/aws/ClientConfiguration;-><init>()V

    .line 202
    invoke-virtual {p0}, Lcom/gpc/aws/mobile/config/AWSConfiguration;->getUserAgent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/gpc/aws/ClientConfiguration;->setUserAgent(Ljava/lang/String;)V

    return-object v0
.end method

.method private static getIdentityPoolId(Lcom/gpc/aws/mobile/config/AWSConfiguration;)Ljava/lang/String;
    .locals 2

    .line 180
    :try_start_0
    const-string v0, "CredentialsProvider"

    invoke-virtual {p0, v0}, Lcom/gpc/aws/mobile/config/AWSConfiguration;->optJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "CognitoIdentity"

    .line 181
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 182
    invoke-virtual {p0}, Lcom/gpc/aws/mobile/config/AWSConfiguration;->getConfiguration()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 183
    const-string v0, "PoolId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to read CognitoIdentity please check your setup or awsconfiguration.json file"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static getRegions(Lcom/gpc/aws/mobile/config/AWSConfiguration;)Lcom/gpc/aws/regions/Regions;
    .locals 2

    .line 191
    :try_start_0
    const-string v0, "CredentialsProvider"

    invoke-virtual {p0, v0}, Lcom/gpc/aws/mobile/config/AWSConfiguration;->optJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "CognitoIdentity"

    .line 192
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 193
    invoke-virtual {p0}, Lcom/gpc/aws/mobile/config/AWSConfiguration;->getConfiguration()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 194
    const-string v0, "Region"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gpc/aws/regions/Regions;->fromName(Ljava/lang/String;)Lcom/gpc/aws/regions/Regions;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 196
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to read CognitoIdentity please check your setup or awsconfiguration.json file"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private populateCredentialsWithCognito(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 769
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 770
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 771
    invoke-virtual {p0}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->getLoginsKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 773
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->getLogins()Ljava/util/Map;

    move-result-object v0

    .line 776
    :goto_0
    new-instance p1, Lcom/gpc/aws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;

    invoke-direct {p1}, Lcom/gpc/aws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;-><init>()V

    .line 777
    invoke-virtual {p0}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->getIdentityId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/gpc/aws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->withIdentityId(Ljava/lang/String;)Lcom/gpc/aws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;

    move-result-object p1

    .line 778
    invoke-virtual {p1, v0}, Lcom/gpc/aws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->withLogins(Ljava/util/Map;)Lcom/gpc/aws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->customRoleArn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/gpc/aws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->withCustomRoleArn(Ljava/lang/String;)Lcom/gpc/aws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;

    move-result-object p1

    .line 783
    :try_start_0
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->cib:Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentity;

    invoke-interface {v0, p1}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentity;->getCredentialsForIdentity(Lcom/gpc/aws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;)Lcom/gpc/aws/services/cognitoidentity/model/GetCredentialsForIdentityResult;

    move-result-object p1
    :try_end_0
    .catch Lcom/gpc/aws/services/cognitoidentity/model/ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/gpc/aws/AmazonServiceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 790
    invoke-virtual {p1}, Lcom/gpc/aws/AmazonServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ValidationException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 791
    invoke-direct {p0}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->retryGetCredentialsForIdentity()Lcom/gpc/aws/services/cognitoidentity/model/GetCredentialsForIdentityResult;

    move-result-object p1

    goto :goto_1

    .line 794
    :cond_1
    throw p1

    .line 787
    :catch_1
    invoke-direct {p0}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->retryGetCredentialsForIdentity()Lcom/gpc/aws/services/cognitoidentity/model/GetCredentialsForIdentityResult;

    move-result-object p1

    .line 799
    :goto_1
    invoke-virtual {p1}, Lcom/gpc/aws/services/cognitoidentity/model/GetCredentialsForIdentityResult;->getCredentials()Lcom/gpc/aws/services/cognitoidentity/model/Credentials;

    move-result-object v0

    .line 800
    new-instance v1, Lcom/gpc/aws/auth/BasicSessionCredentials;

    invoke-virtual {v0}, Lcom/gpc/aws/services/cognitoidentity/model/Credentials;->getAccessKeyId()Ljava/lang/String;

    move-result-object v2

    .line 801
    invoke-virtual {v0}, Lcom/gpc/aws/services/cognitoidentity/model/Credentials;->getSecretKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/gpc/aws/services/cognitoidentity/model/Credentials;->getSessionToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/gpc/aws/auth/BasicSessionCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->sessionCredentials:Lcom/gpc/aws/auth/AWSSessionCredentials;

    .line 802
    invoke-virtual {v0}, Lcom/gpc/aws/services/cognitoidentity/model/Credentials;->getExpiration()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->setSessionCredentialsExpiration(Ljava/util/Date;)V

    .line 804
    invoke-virtual {p1}, Lcom/gpc/aws/services/cognitoidentity/model/GetCredentialsForIdentityResult;->getIdentityId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->getIdentityId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 805
    invoke-virtual {p1}, Lcom/gpc/aws/services/cognitoidentity/model/GetCredentialsForIdentityResult;->getIdentityId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->setIdentityId(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private populateCredentialsWithSts(Ljava/lang/String;)V
    .locals 4

    .line 817
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->identityProvider:Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;

    invoke-interface {v0}, Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->authRoleArn:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->unauthRoleArn:Ljava/lang/String;

    .line 820
    :goto_0
    new-instance v1, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;

    invoke-direct {v1}, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;-><init>()V

    .line 821
    invoke-virtual {v1, p1}, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->withWebIdentityToken(Ljava/lang/String;)Lcom/gpc/aws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;

    move-result-object p1

    .line 822
    invoke-virtual {p1, v0}, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->withRoleArn(Ljava/lang/String;)Lcom/gpc/aws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;

    move-result-object p1

    const-string v0, "ProviderSession"

    .line 823
    invoke-virtual {p1, v0}, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->withRoleSessionName(Ljava/lang/String;)Lcom/gpc/aws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;

    move-result-object p1

    iget v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->sessionDuration:I

    .line 824
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->withDurationSeconds(Ljava/lang/Integer;)Lcom/gpc/aws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;

    move-result-object p1

    .line 825
    invoke-virtual {p0}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->appendUserAgent(Lcom/gpc/aws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 826
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->securityTokenService:Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenService;

    .line 827
    invoke-interface {v0, p1}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenService;->assumeRoleWithWebIdentity(Lcom/gpc/aws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;)Lcom/gpc/aws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;

    move-result-object p1

    .line 828
    invoke-virtual {p1}, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;->getCredentials()Lcom/gpc/aws/services/securitytoken/model/Credentials;

    move-result-object p1

    .line 830
    new-instance v0, Lcom/gpc/aws/auth/BasicSessionCredentials;

    .line 831
    invoke-virtual {p1}, Lcom/gpc/aws/services/securitytoken/model/Credentials;->getAccessKeyId()Ljava/lang/String;

    move-result-object v1

    .line 832
    invoke-virtual {p1}, Lcom/gpc/aws/services/securitytoken/model/Credentials;->getSecretAccessKey()Ljava/lang/String;

    move-result-object v2

    .line 833
    invoke-virtual {p1}, Lcom/gpc/aws/services/securitytoken/model/Credentials;->getSessionToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/gpc/aws/auth/BasicSessionCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->sessionCredentials:Lcom/gpc/aws/auth/AWSSessionCredentials;

    .line 834
    invoke-virtual {p1}, Lcom/gpc/aws/services/securitytoken/model/Credentials;->getExpiration()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->setSessionCredentialsExpiration(Ljava/util/Date;)V

    return-void
.end method

.method private retryGetCredentialsForIdentity()Lcom/gpc/aws/services/cognitoidentity/model/GetCredentialsForIdentityResult;
    .locals 3

    .line 742
    invoke-direct {p0}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->retryRefresh()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->token:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 745
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 746
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 747
    invoke-virtual {p0}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->getLoginsKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->token:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 749
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->getLogins()Ljava/util/Map;

    move-result-object v0

    .line 752
    :goto_0
    new-instance v1, Lcom/gpc/aws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;

    invoke-direct {v1}, Lcom/gpc/aws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;-><init>()V

    .line 753
    invoke-virtual {p0}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->getIdentityId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gpc/aws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->withIdentityId(Ljava/lang/String;)Lcom/gpc/aws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;

    move-result-object v1

    .line 754
    invoke-virtual {v1, v0}, Lcom/gpc/aws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->withLogins(Ljava/util/Map;)Lcom/gpc/aws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->customRoleArn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gpc/aws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->withCustomRoleArn(Ljava/lang/String;)Lcom/gpc/aws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;

    move-result-object v0

    .line 756
    iget-object v1, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->cib:Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentity;

    invoke-interface {v1, v0}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentity;->getCredentialsForIdentity(Lcom/gpc/aws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;)Lcom/gpc/aws/services/cognitoidentity/model/GetCredentialsForIdentityResult;

    move-result-object v0

    return-object v0
.end method

.method private retryRefresh()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 714
    invoke-virtual {p0, v0}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->setIdentityId(Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->identityProvider:Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;

    invoke-interface {v0}, Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;->refresh()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->token:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 644
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 646
    :try_start_0
    invoke-virtual {p0}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->clearCredentials()V

    const/4 v0, 0x0

    .line 647
    invoke-virtual {p0, v0}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->setIdentityId(Ljava/lang/String;)V

    .line 648
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->identityProvider:Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1}, Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;->setLogins(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 651
    throw v0
.end method

.method public clearCredentials()V
    .locals 2

    .line 659
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    const/4 v0, 0x0

    .line 661
    :try_start_0
    iput-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->sessionCredentials:Lcom/gpc/aws/auth/AWSSessionCredentials;

    .line 662
    iput-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->sessionCredentialsExpiration:Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 665
    throw v0
.end method

.method public bridge synthetic getCredentials()Lcom/gpc/aws/auth/AWSCredentials;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->getCredentials()Lcom/gpc/aws/auth/AWSSessionCredentials;

    move-result-object v0

    return-object v0
.end method

.method public getCredentials()Lcom/gpc/aws/auth/AWSSessionCredentials;
    .locals 2

    .line 463
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 465
    :try_start_0
    invoke-virtual {p0}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->needsNewSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {p0}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->startSession()V

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->sessionCredentials:Lcom/gpc/aws/auth/AWSSessionCredentials;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    iget-object v1, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 471
    throw v0
.end method

.method public getCustomRoleArn()Ljava/lang/String;
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->customRoleArn:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentityId()Ljava/lang/String;
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->identityProvider:Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;

    invoke-interface {v0}, Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;->getIdentityId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdentityPoolId()Ljava/lang/String;
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->identityProvider:Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;

    invoke-interface {v0}, Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;->getIdentityPoolId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdentityProvider()Lcom/gpc/aws/auth/AWSIdentityProvider;
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->identityProvider:Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;

    return-object v0
.end method

.method public getLogins()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 625
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->identityProvider:Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;

    invoke-interface {v0}, Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;->getLogins()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected getLoginsKey()Ljava/lang/String;
    .locals 2

    .line 726
    sget-object v0, Lcom/gpc/aws/regions/Regions;->CN_NORTH_1:Lcom/gpc/aws/regions/Regions;

    invoke-virtual {v0}, Lcom/gpc/aws/regions/Regions;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->region:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    const-string v0, "cognito-identity.cn-north-1.amazonaws.com.cn"

    return-object v0

    .line 729
    :cond_0
    const-string v0, "cognito-identity.amazonaws.com"

    return-object v0
.end method

.method public getRefreshThreshold()I
    .locals 1

    .line 553
    iget v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->refreshThreshold:I

    return v0
.end method

.method public getSessionCredentitalsExpiration()Ljava/util/Date;
    .locals 2

    .line 444
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 446
    :try_start_0
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->sessionCredentialsExpiration:Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    iget-object v1, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 449
    throw v0
.end method

.method public getSessionDuration()I
    .locals 1

    .line 510
    iget v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->sessionDuration:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->identityProvider:Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;

    invoke-interface {v0}, Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUserAgent()Ljava/lang/String;
    .locals 1

    .line 877
    const-string v0, ""

    return-object v0
.end method

.method protected needsNewSession()Z
    .locals 6

    .line 848
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->sessionCredentials:Lcom/gpc/aws/auth/AWSSessionCredentials;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 851
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 852
    invoke-static {}, Lcom/gpc/aws/SDKGlobalConfiguration;->getGlobalTimeOffset()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    sub-long/2addr v2, v4

    .line 853
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->sessionCredentialsExpiration:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 855
    iget v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->refreshThreshold:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    cmp-long v0, v4, v2

    if-gez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public refresh()V
    .locals 2

    .line 630
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 632
    :try_start_0
    invoke-virtual {p0}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->startSession()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 635
    throw v0
.end method

.method public registerIdentityChangedListener(Lcom/gpc/aws/auth/IdentityChangedListener;)V
    .locals 1

    .line 887
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->identityProvider:Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;

    invoke-interface {v0, p1}, Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;->registerIdentityChangedListener(Lcom/gpc/aws/auth/IdentityChangedListener;)V

    return-void
.end method

.method public setCustomRoleArn(Ljava/lang/String;)V
    .locals 0

    .line 598
    iput-object p1, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->customRoleArn:Ljava/lang/String;

    return-void
.end method

.method protected setIdentityId(Ljava/lang/String;)V
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->identityProvider:Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;

    invoke-interface {v0, p1}, Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;->identityChanged(Ljava/lang/String;)V

    return-void
.end method

.method public setLogins(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 569
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 571
    :try_start_0
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->identityProvider:Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;

    invoke-interface {v0, p1}, Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;->setLogins(Ljava/util/Map;)V

    .line 572
    invoke-virtual {p0}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->clearCredentials()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    iget-object p1, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 575
    throw p1
.end method

.method public setRefreshThreshold(I)V
    .locals 0

    .line 523
    iput p1, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->refreshThreshold:I

    return-void
.end method

.method public setSessionCredentialsExpiration(Ljava/util/Date;)V
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 437
    :try_start_0
    iput-object p1, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->sessionCredentialsExpiration:Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    iget-object p1, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 440
    throw p1
.end method

.method public setSessionDuration(I)V
    .locals 0

    .line 483
    iput p1, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->sessionDuration:I

    return-void
.end method

.method protected startSession()V
    .locals 3

    .line 679
    :try_start_0
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->identityProvider:Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;

    invoke-interface {v0}, Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;->refresh()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->token:Ljava/lang/String;
    :try_end_0
    .catch Lcom/gpc/aws/services/cognitoidentity/model/ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/gpc/aws/AmazonServiceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 686
    invoke-virtual {v0}, Lcom/gpc/aws/AmazonServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ValidationException"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 687
    invoke-direct {p0}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->retryRefresh()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->token:Ljava/lang/String;

    goto :goto_0

    .line 690
    :cond_0
    throw v0

    .line 683
    :catch_1
    invoke-direct {p0}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->retryRefresh()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->token:Ljava/lang/String;

    .line 694
    :goto_0
    iget-boolean v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->useEnhancedFlow:Z

    if-eqz v0, :cond_1

    .line 695
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->token:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->populateCredentialsWithCognito(Ljava/lang/String;)V

    goto :goto_1

    .line 697
    :cond_1
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->token:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->populateCredentialsWithSts(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public unregisterIdentityChangedListener(Lcom/gpc/aws/auth/IdentityChangedListener;)V
    .locals 1

    .line 897
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->identityProvider:Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;

    invoke-interface {v0, p1}, Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;->unregisterIdentityChangedListener(Lcom/gpc/aws/auth/IdentityChangedListener;)V

    return-void
.end method

.method public withLogins(Ljava/util/Map;)Lcom/gpc/aws/auth/AWSCredentialsProvider;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/gpc/aws/auth/AWSCredentialsProvider;"
        }
    .end annotation

    .line 614
    invoke-virtual {p0, p1}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->setLogins(Ljava/util/Map;)V

    return-object p0
.end method

.method public withRefreshThreshold(I)Lcom/gpc/aws/auth/CognitoCredentialsProvider;
    .locals 0

    .line 539
    invoke-virtual {p0, p1}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->setRefreshThreshold(I)V

    return-object p0
.end method

.method public withSessionDuration(I)Lcom/gpc/aws/auth/CognitoCredentialsProvider;
    .locals 0

    .line 498
    invoke-virtual {p0, p1}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->setSessionDuration(I)V

    return-object p0
.end method
