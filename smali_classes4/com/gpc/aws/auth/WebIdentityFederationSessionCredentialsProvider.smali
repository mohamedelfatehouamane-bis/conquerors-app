.class public Lcom/gpc/aws/auth/WebIdentityFederationSessionCredentialsProvider;
.super Ljava/lang/Object;
.source "WebIdentityFederationSessionCredentialsProvider.java"

# interfaces
.implements Lcom/gpc/aws/auth/AWSCredentialsProvider;


# static fields
.field public static final DEFAULT_DURATION_SECONDS:I = 0xe10

.field public static final DEFAULT_THRESHOLD_SECONDS:I = 0x1f4


# instance fields
.field private refreshThreshold:I

.field private final roleArn:Ljava/lang/String;

.field private final securityTokenService:Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenService;

.field private sessionCredentials:Lcom/gpc/aws/auth/AWSSessionCredentials;

.field private sessionCredentialsExpiration:Ljava/util/Date;

.field private sessionDuration:I

.field private subjectFromWIF:Ljava/lang/String;

.field private final wifProvider:Ljava/lang/String;

.field private final wifToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 69
    new-instance v0, Lcom/gpc/aws/ClientConfiguration;

    invoke-direct {v0}, Lcom/gpc/aws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/gpc/aws/auth/WebIdentityFederationSessionCredentialsProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/aws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/aws/ClientConfiguration;)V
    .locals 2

    .line 87
    new-instance v0, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;

    new-instance v1, Lcom/gpc/aws/auth/AnonymousAWSCredentials;

    invoke-direct {v1}, Lcom/gpc/aws/auth/AnonymousAWSCredentials;-><init>()V

    invoke-direct {v0, v1, p4}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>(Lcom/gpc/aws/auth/AWSCredentials;Lcom/gpc/aws/ClientConfiguration;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/gpc/aws/auth/WebIdentityFederationSessionCredentialsProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenService;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenService;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p4, p0, Lcom/gpc/aws/auth/WebIdentityFederationSessionCredentialsProvider;->securityTokenService:Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenService;

    .line 107
    iput-object p2, p0, Lcom/gpc/aws/auth/WebIdentityFederationSessionCredentialsProvider;->wifProvider:Ljava/lang/String;

    .line 108
    iput-object p1, p0, Lcom/gpc/aws/auth/WebIdentityFederationSessionCredentialsProvider;->wifToken:Ljava/lang/String;

    .line 109
    iput-object p3, p0, Lcom/gpc/aws/auth/WebIdentityFederationSessionCredentialsProvider;->roleArn:Ljava/lang/String;

    const/16 p1, 0xe10

    .line 110
    iput p1, p0, Lcom/gpc/aws/auth/WebIdentityFederationSessionCredentialsProvider;->sessionDuration:I

    const/16 p1, 0x1f4

    .line 111
    iput p1, p0, Lcom/gpc/aws/auth/WebIdentityFederationSessionCredentialsProvider;->refreshThreshold:I

    return-void
.end method

.method private needsNewSession()Z
    .locals 6

    .line 253
    iget-object v0, p0, Lcom/gpc/aws/auth/WebIdentityFederationSessionCredentialsProvider;->sessionCredentials:Lcom/gpc/aws/auth/AWSSessionCredentials;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/gpc/aws/auth/WebIdentityFederationSessionCredentialsProvider;->sessionCredentialsExpiration:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 257
    iget v0, p0, Lcom/gpc/aws/auth/WebIdentityFederationSessionCredentialsProvider;->refreshThreshold:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private startSession()V
    .locals 5

    .line 227
    iget-object v0, p0, Lcom/gpc/aws/auth/WebIdentityFederationSessionCredentialsProvider;->securityTokenService:Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenService;

    new-instance v1, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;

    invoke-direct {v1}, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;-><init>()V

    iget-object v2, p0, Lcom/gpc/aws/auth/WebIdentityFederationSessionCredentialsProvider;->wifToken:Ljava/lang/String;

    .line 229
    invoke-virtual {v1, v2}, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->withWebIdentityToken(Ljava/lang/String;)Lcom/gpc/aws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/gpc/aws/auth/WebIdentityFederationSessionCredentialsProvider;->wifProvider:Ljava/lang/String;

    .line 230
    invoke-virtual {v1, v2}, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->withProviderId(Ljava/lang/String;)Lcom/gpc/aws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/gpc/aws/auth/WebIdentityFederationSessionCredentialsProvider;->roleArn:Ljava/lang/String;

    .line 231
    invoke-virtual {v1, v2}, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->withRoleArn(Ljava/lang/String;)Lcom/gpc/aws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;

    move-result-object v1

    const-string v2, "ProviderSession"

    .line 232
    invoke-virtual {v1, v2}, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->withRoleSessionName(Ljava/lang/String;)Lcom/gpc/aws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;

    move-result-object v1

    iget v2, p0, Lcom/gpc/aws/auth/WebIdentityFederationSessionCredentialsProvider;->sessionDuration:I

    .line 233
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->withDurationSeconds(Ljava/lang/Integer;)Lcom/gpc/aws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;

    move-result-object v1

    .line 228
    invoke-interface {v0, v1}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenService;->assumeRoleWithWebIdentity(Lcom/gpc/aws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;)Lcom/gpc/aws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;->getCredentials()Lcom/gpc/aws/services/securitytoken/model/Credentials;

    move-result-object v1

    .line 236
    invoke-virtual {v0}, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;->getSubjectFromWebIdentityToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/aws/auth/WebIdentityFederationSessionCredentialsProvider;->subjectFromWIF:Ljava/lang/String;

    .line 238
    new-instance v0, Lcom/gpc/aws/auth/BasicSessionCredentials;

    .line 239
    invoke-virtual {v1}, Lcom/gpc/aws/services/securitytoken/model/Credentials;->getAccessKeyId()Ljava/lang/String;

    move-result-object v2

    .line 240
    invoke-virtual {v1}, Lcom/gpc/aws/services/securitytoken/model/Credentials;->getSecretAccessKey()Ljava/lang/String;

    move-result-object v3

    .line 241
    invoke-virtual {v1}, Lcom/gpc/aws/services/securitytoken/model/Credentials;->getSessionToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/gpc/aws/auth/BasicSessionCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gpc/aws/auth/WebIdentityFederationSessionCredentialsProvider;->sessionCredentials:Lcom/gpc/aws/auth/AWSSessionCredentials;

    .line 242
    invoke-virtual {v1}, Lcom/gpc/aws/services/securitytoken/model/Credentials;->getExpiration()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/aws/auth/WebIdentityFederationSessionCredentialsProvider;->sessionCredentialsExpiration:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public getCredentials()Lcom/gpc/aws/auth/AWSCredentials;
    .locals 1

    .line 116
    invoke-direct {p0}, Lcom/gpc/aws/auth/WebIdentityFederationSessionCredentialsProvider;->needsNewSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/gpc/aws/auth/WebIdentityFederationSessionCredentialsProvider;->startSession()V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/gpc/aws/auth/WebIdentityFederationSessionCredentialsProvider;->sessionCredentials:Lcom/gpc/aws/auth/AWSSessionCredentials;

    return-object v0
.end method

.method public getRefreshThreshold()I
    .locals 1

    .line 206
    iget v0, p0, Lcom/gpc/aws/auth/WebIdentityFederationSessionCredentialsProvider;->refreshThreshold:I

    return v0
.end method

.method public getSessionDuration()I
    .locals 1

    .line 163
    iget v0, p0, Lcom/gpc/aws/auth/WebIdentityFederationSessionCredentialsProvider;->sessionDuration:I

    return v0
.end method

.method public getSubjectFromWIF()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/gpc/aws/auth/WebIdentityFederationSessionCredentialsProvider;->subjectFromWIF:Ljava/lang/String;

    return-object v0
.end method

.method public refresh()V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/gpc/aws/auth/WebIdentityFederationSessionCredentialsProvider;->startSession()V

    return-void
.end method

.method public setRefreshThreshold(I)V
    .locals 0

    .line 176
    iput p1, p0, Lcom/gpc/aws/auth/WebIdentityFederationSessionCredentialsProvider;->refreshThreshold:I

    return-void
.end method

.method public setSessionDuration(I)V
    .locals 0

    .line 136
    iput p1, p0, Lcom/gpc/aws/auth/WebIdentityFederationSessionCredentialsProvider;->sessionDuration:I

    return-void
.end method

.method public withRefreshThreshold(I)Lcom/gpc/aws/auth/WebIdentityFederationSessionCredentialsProvider;
    .locals 0

    .line 192
    invoke-virtual {p0, p1}, Lcom/gpc/aws/auth/WebIdentityFederationSessionCredentialsProvider;->setRefreshThreshold(I)V

    return-object p0
.end method

.method public withSessionDuration(I)Lcom/gpc/aws/auth/WebIdentityFederationSessionCredentialsProvider;
    .locals 0

    .line 151
    invoke-virtual {p0, p1}, Lcom/gpc/aws/auth/WebIdentityFederationSessionCredentialsProvider;->setSessionDuration(I)V

    return-object p0
.end method
