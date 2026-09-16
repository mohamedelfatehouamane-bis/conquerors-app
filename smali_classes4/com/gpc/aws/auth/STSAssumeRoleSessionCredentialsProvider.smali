.class public Lcom/gpc/aws/auth/STSAssumeRoleSessionCredentialsProvider;
.super Ljava/lang/Object;
.source "STSAssumeRoleSessionCredentialsProvider.java"

# interfaces
.implements Lcom/gpc/aws/auth/AWSCredentialsProvider;


# static fields
.field public static final DEFAULT_DURATION_SECONDS:I = 0x384

.field private static final EXPIRY_TIME_MILLIS:I = 0xea60


# instance fields
.field private roleArn:Ljava/lang/String;

.field private roleSessionName:Ljava/lang/String;

.field private final securityTokenService:Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenService;

.field private sessionCredentials:Lcom/gpc/aws/auth/AWSSessionCredentials;

.field private sessionCredentialsExpiration:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lcom/gpc/aws/auth/AWSCredentials;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 86
    new-instance v0, Lcom/gpc/aws/ClientConfiguration;

    invoke-direct {v0}, Lcom/gpc/aws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/gpc/aws/auth/STSAssumeRoleSessionCredentialsProvider;-><init>(Lcom/gpc/aws/auth/AWSCredentials;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/aws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/gpc/aws/auth/AWSCredentials;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/aws/ClientConfiguration;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p2, p0, Lcom/gpc/aws/auth/STSAssumeRoleSessionCredentialsProvider;->roleArn:Ljava/lang/String;

    .line 106
    iput-object p3, p0, Lcom/gpc/aws/auth/STSAssumeRoleSessionCredentialsProvider;->roleSessionName:Ljava/lang/String;

    .line 107
    new-instance p2, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;

    invoke-direct {p2, p1, p4}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>(Lcom/gpc/aws/auth/AWSCredentials;Lcom/gpc/aws/ClientConfiguration;)V

    iput-object p2, p0, Lcom/gpc/aws/auth/STSAssumeRoleSessionCredentialsProvider;->securityTokenService:Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenService;

    return-void
.end method

.method public constructor <init>(Lcom/gpc/aws/auth/AWSCredentialsProvider;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p2, p0, Lcom/gpc/aws/auth/STSAssumeRoleSessionCredentialsProvider;->roleArn:Ljava/lang/String;

    .line 128
    iput-object p3, p0, Lcom/gpc/aws/auth/STSAssumeRoleSessionCredentialsProvider;->roleSessionName:Ljava/lang/String;

    .line 129
    new-instance p2, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;

    invoke-direct {p2, p1}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>(Lcom/gpc/aws/auth/AWSCredentialsProvider;)V

    iput-object p2, p0, Lcom/gpc/aws/auth/STSAssumeRoleSessionCredentialsProvider;->securityTokenService:Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenService;

    return-void
.end method

.method public constructor <init>(Lcom/gpc/aws/auth/AWSCredentialsProvider;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/aws/ClientConfiguration;)V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p2, p0, Lcom/gpc/aws/auth/STSAssumeRoleSessionCredentialsProvider;->roleArn:Ljava/lang/String;

    .line 150
    iput-object p3, p0, Lcom/gpc/aws/auth/STSAssumeRoleSessionCredentialsProvider;->roleSessionName:Ljava/lang/String;

    .line 151
    new-instance p2, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;

    invoke-direct {p2, p1, p4}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>(Lcom/gpc/aws/auth/AWSCredentialsProvider;Lcom/gpc/aws/ClientConfiguration;)V

    iput-object p2, p0, Lcom/gpc/aws/auth/STSAssumeRoleSessionCredentialsProvider;->securityTokenService:Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenService;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/gpc/aws/auth/STSAssumeRoleSessionCredentialsProvider;->roleArn:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/gpc/aws/auth/STSAssumeRoleSessionCredentialsProvider;->roleSessionName:Ljava/lang/String;

    .line 68
    new-instance p1, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;

    invoke-direct {p1}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>()V

    iput-object p1, p0, Lcom/gpc/aws/auth/STSAssumeRoleSessionCredentialsProvider;->securityTokenService:Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenService;

    return-void
.end method

.method private needsNewSession()Z
    .locals 6

    .line 213
    iget-object v0, p0, Lcom/gpc/aws/auth/STSAssumeRoleSessionCredentialsProvider;->sessionCredentials:Lcom/gpc/aws/auth/AWSSessionCredentials;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/gpc/aws/auth/STSAssumeRoleSessionCredentialsProvider;->sessionCredentialsExpiration:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private startSession()V
    .locals 5

    .line 195
    iget-object v0, p0, Lcom/gpc/aws/auth/STSAssumeRoleSessionCredentialsProvider;->securityTokenService:Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenService;

    new-instance v1, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleRequest;

    invoke-direct {v1}, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleRequest;-><init>()V

    iget-object v2, p0, Lcom/gpc/aws/auth/STSAssumeRoleSessionCredentialsProvider;->roleArn:Ljava/lang/String;

    .line 196
    invoke-virtual {v1, v2}, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleRequest;->withRoleArn(Ljava/lang/String;)Lcom/gpc/aws/services/securitytoken/model/AssumeRoleRequest;

    move-result-object v1

    const/16 v2, 0x384

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleRequest;->withDurationSeconds(Ljava/lang/Integer;)Lcom/gpc/aws/services/securitytoken/model/AssumeRoleRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/gpc/aws/auth/STSAssumeRoleSessionCredentialsProvider;->roleSessionName:Ljava/lang/String;

    .line 197
    invoke-virtual {v1, v2}, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleRequest;->withRoleSessionName(Ljava/lang/String;)Lcom/gpc/aws/services/securitytoken/model/AssumeRoleRequest;

    move-result-object v1

    .line 195
    invoke-interface {v0, v1}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenService;->assumeRole(Lcom/gpc/aws/services/securitytoken/model/AssumeRoleRequest;)Lcom/gpc/aws/services/securitytoken/model/AssumeRoleResult;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleResult;->getCredentials()Lcom/gpc/aws/services/securitytoken/model/Credentials;

    move-result-object v0

    .line 200
    new-instance v1, Lcom/gpc/aws/auth/BasicSessionCredentials;

    invoke-virtual {v0}, Lcom/gpc/aws/services/securitytoken/model/Credentials;->getAccessKeyId()Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-virtual {v0}, Lcom/gpc/aws/services/securitytoken/model/Credentials;->getSecretAccessKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/gpc/aws/services/securitytoken/model/Credentials;->getSessionToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/gpc/aws/auth/BasicSessionCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/gpc/aws/auth/STSAssumeRoleSessionCredentialsProvider;->sessionCredentials:Lcom/gpc/aws/auth/AWSSessionCredentials;

    .line 202
    invoke-virtual {v0}, Lcom/gpc/aws/services/securitytoken/model/Credentials;->getExpiration()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/aws/auth/STSAssumeRoleSessionCredentialsProvider;->sessionCredentialsExpiration:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public getCredentials()Lcom/gpc/aws/auth/AWSCredentials;
    .locals 1

    .line 177
    invoke-direct {p0}, Lcom/gpc/aws/auth/STSAssumeRoleSessionCredentialsProvider;->needsNewSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/gpc/aws/auth/STSAssumeRoleSessionCredentialsProvider;->startSession()V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/gpc/aws/auth/STSAssumeRoleSessionCredentialsProvider;->sessionCredentials:Lcom/gpc/aws/auth/AWSSessionCredentials;

    return-object v0
.end method

.method public refresh()V
    .locals 0

    .line 185
    invoke-direct {p0}, Lcom/gpc/aws/auth/STSAssumeRoleSessionCredentialsProvider;->startSession()V

    return-void
.end method

.method public setSTSClientEndpoint(Ljava/lang/String;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/gpc/aws/auth/STSAssumeRoleSessionCredentialsProvider;->securityTokenService:Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenService;

    invoke-interface {v0, p1}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenService;->setEndpoint(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 172
    iput-object p1, p0, Lcom/gpc/aws/auth/STSAssumeRoleSessionCredentialsProvider;->sessionCredentials:Lcom/gpc/aws/auth/AWSSessionCredentials;

    return-void
.end method
