.class public Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;
.super Lcom/gpc/aws/auth/CognitoCredentialsProvider;
.source "CognitoCachingCredentialsProvider.java"


# static fields
.field private static final AK_KEY:Ljava/lang/String;

.field private static final AWS_KEY_VALUE_STORE_NAMESPACE_IDENTIFIER:Ljava/lang/String;

.field private static final EXP_KEY:Ljava/lang/String;

.field private static final ID_KEY:Ljava/lang/String;

.field private static final LOG:Lcom/gpc/aws/logging/Log;

.field private static final SK_KEY:Ljava/lang/String;

.field private static final ST_KEY:Ljava/lang/String;

.field private static final USER_AGENT:Ljava/lang/String;


# instance fields
.field awsKeyValueStore:Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;

.field private identityId:Ljava/lang/String;

.field private isPersistenceEnabled:Z

.field private final listener:Lcom/gpc/aws/auth/IdentityChangedListener;

.field volatile needIdentityRefresh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-static {}, Lcom/gpc/aws/util/VersionInfoUtils;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->USER_AGENT:Ljava/lang/String;

    .line 83
    invoke-static {v1}, Lcom/gpc/aws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/gpc/aws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->LOG:Lcom/gpc/aws/logging/Log;

    .line 93
    const-string v0, "com.amazonaws.android.auth"

    sput-object v0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->AWS_KEY_VALUE_STORE_NAMESPACE_IDENTIFIER:Ljava/lang/String;

    .line 94
    const-string v0, "identityId"

    sput-object v0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->ID_KEY:Ljava/lang/String;

    .line 95
    const-string v0, "accessKey"

    sput-object v0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->AK_KEY:Ljava/lang/String;

    .line 96
    const-string v0, "secretKey"

    sput-object v0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->SK_KEY:Ljava/lang/String;

    .line 97
    const-string v0, "sessionToken"

    sput-object v0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->ST_KEY:Ljava/lang/String;

    .line 98
    const-string v0, "expirationDate"

    sput-object v0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->EXP_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;Lcom/gpc/aws/regions/Regions;)V
    .locals 0

    .line 384
    invoke-direct {p0, p2, p3}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;-><init>(Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;Lcom/gpc/aws/regions/Regions;)V

    const/4 p2, 0x0

    .line 101
    iput-boolean p2, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->needIdentityRefresh:Z

    .line 104
    new-instance p2, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider$1;

    invoke-direct {p2, p0}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider$1;-><init>(Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;)V

    iput-object p2, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->listener:Lcom/gpc/aws/auth/IdentityChangedListener;

    const/4 p2, 0x1

    .line 112
    iput-boolean p2, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->isPersistenceEnabled:Z

    if-eqz p1, :cond_0

    .line 388
    invoke-direct {p0, p1}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->initialize(Landroid/content/Context;)V

    return-void

    .line 386
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;Lcom/gpc/aws/regions/Regions;Lcom/gpc/aws/ClientConfiguration;)V
    .locals 0

    .line 418
    invoke-direct {p0, p2, p3, p4}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;-><init>(Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;Lcom/gpc/aws/regions/Regions;Lcom/gpc/aws/ClientConfiguration;)V

    const/4 p2, 0x0

    .line 101
    iput-boolean p2, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->needIdentityRefresh:Z

    .line 104
    new-instance p2, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider$1;

    invoke-direct {p2, p0}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider$1;-><init>(Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;)V

    iput-object p2, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->listener:Lcom/gpc/aws/auth/IdentityChangedListener;

    const/4 p2, 0x1

    .line 112
    iput-boolean p2, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->isPersistenceEnabled:Z

    if-eqz p1, :cond_0

    .line 422
    invoke-direct {p0, p1}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->initialize(Landroid/content/Context;)V

    return-void

    .line 420
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 326
    invoke-direct {p0, p2, p3, p4}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;-><init>(Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 101
    iput-boolean p2, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->needIdentityRefresh:Z

    .line 104
    new-instance p2, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider$1;

    invoke-direct {p2, p0}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider$1;-><init>(Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;)V

    iput-object p2, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->listener:Lcom/gpc/aws/auth/IdentityChangedListener;

    const/4 p2, 0x1

    .line 112
    iput-boolean p2, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->isPersistenceEnabled:Z

    if-eqz p1, :cond_0

    .line 330
    invoke-direct {p0, p1}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->initialize(Landroid/content/Context;)V

    return-void

    .line 328
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenService;)V
    .locals 0

    .line 352
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;-><init>(Lcom/gpc/aws/auth/AWSCognitoIdentityProvider;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenService;)V

    const/4 p2, 0x0

    .line 101
    iput-boolean p2, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->needIdentityRefresh:Z

    .line 104
    new-instance p2, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider$1;

    invoke-direct {p2, p0}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider$1;-><init>(Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;)V

    iput-object p2, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->listener:Lcom/gpc/aws/auth/IdentityChangedListener;

    const/4 p2, 0x1

    .line 112
    iput-boolean p2, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->isPersistenceEnabled:Z

    if-eqz p1, :cond_0

    .line 356
    invoke-direct {p0, p1}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->initialize(Landroid/content/Context;)V

    return-void

    .line 354
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gpc/aws/mobile/config/AWSConfiguration;)V
    .locals 0

    .line 231
    invoke-direct {p0, p2}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;-><init>(Lcom/gpc/aws/mobile/config/AWSConfiguration;)V

    const/4 p2, 0x0

    .line 101
    iput-boolean p2, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->needIdentityRefresh:Z

    .line 104
    new-instance p2, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider$1;

    invoke-direct {p2, p0}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider$1;-><init>(Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;)V

    iput-object p2, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->listener:Lcom/gpc/aws/auth/IdentityChangedListener;

    const/4 p2, 0x1

    .line 112
    iput-boolean p2, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->isPersistenceEnabled:Z

    if-eqz p1, :cond_0

    .line 235
    invoke-direct {p0, p1}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->initialize(Landroid/content/Context;)V

    return-void

    .line 233
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/gpc/aws/regions/Regions;)V
    .locals 0

    .line 191
    invoke-direct {p0, p2, p3}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;-><init>(Ljava/lang/String;Lcom/gpc/aws/regions/Regions;)V

    const/4 p2, 0x0

    .line 101
    iput-boolean p2, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->needIdentityRefresh:Z

    .line 104
    new-instance p2, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider$1;

    invoke-direct {p2, p0}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider$1;-><init>(Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;)V

    iput-object p2, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->listener:Lcom/gpc/aws/auth/IdentityChangedListener;

    const/4 p2, 0x1

    .line 112
    iput-boolean p2, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->isPersistenceEnabled:Z

    if-eqz p1, :cond_0

    .line 195
    invoke-direct {p0, p1}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->initialize(Landroid/content/Context;)V

    return-void

    .line 193
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/gpc/aws/regions/Regions;Lcom/gpc/aws/ClientConfiguration;)V
    .locals 0

    .line 265
    invoke-direct {p0, p2, p3, p4}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;-><init>(Ljava/lang/String;Lcom/gpc/aws/regions/Regions;Lcom/gpc/aws/ClientConfiguration;)V

    const/4 p2, 0x0

    .line 101
    iput-boolean p2, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->needIdentityRefresh:Z

    .line 104
    new-instance p2, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider$1;

    invoke-direct {p2, p0}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider$1;-><init>(Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;)V

    iput-object p2, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->listener:Lcom/gpc/aws/auth/IdentityChangedListener;

    const/4 p2, 0x1

    .line 112
    iput-boolean p2, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->isPersistenceEnabled:Z

    if-eqz p1, :cond_0

    .line 269
    invoke-direct {p0, p1}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->initialize(Landroid/content/Context;)V

    return-void

    .line 267
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/aws/regions/Regions;)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 132
    invoke-direct/range {v0 .. v5}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/aws/regions/Regions;)V

    const/4 p2, 0x0

    .line 101
    iput-boolean p2, v0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->needIdentityRefresh:Z

    .line 104
    new-instance p2, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider$1;

    invoke-direct {p2, p0}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider$1;-><init>(Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;)V

    iput-object p2, v0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->listener:Lcom/gpc/aws/auth/IdentityChangedListener;

    const/4 p2, 0x1

    .line 112
    iput-boolean p2, v0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->isPersistenceEnabled:Z

    if-eqz p1, :cond_0

    .line 136
    invoke-direct {p0, p1}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->initialize(Landroid/content/Context;)V

    return-void

    .line 134
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/aws/regions/Regions;Lcom/gpc/aws/ClientConfiguration;)V
    .locals 7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 164
    invoke-direct/range {v0 .. v6}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/aws/regions/Regions;Lcom/gpc/aws/ClientConfiguration;)V

    const/4 p2, 0x0

    .line 101
    iput-boolean p2, v0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->needIdentityRefresh:Z

    .line 104
    new-instance p2, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider$1;

    invoke-direct {p2, p0}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider$1;-><init>(Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;)V

    iput-object p2, v0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->listener:Lcom/gpc/aws/auth/IdentityChangedListener;

    const/4 p2, 0x1

    .line 112
    iput-boolean p2, v0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->isPersistenceEnabled:Z

    if-eqz p1, :cond_0

    .line 168
    invoke-direct {p0, p1}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->initialize(Landroid/content/Context;)V

    return-void

    .line 166
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenService;)V
    .locals 7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 301
    invoke-direct/range {v0 .. v6}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenService;)V

    const/4 p2, 0x0

    .line 101
    iput-boolean p2, v0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->needIdentityRefresh:Z

    .line 104
    new-instance p2, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider$1;

    invoke-direct {p2, p0}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider$1;-><init>(Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;)V

    iput-object p2, v0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->listener:Lcom/gpc/aws/auth/IdentityChangedListener;

    const/4 p2, 0x1

    .line 112
    iput-boolean p2, v0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->isPersistenceEnabled:Z

    if-eqz p1, :cond_0

    .line 305
    invoke-direct {p0, p1}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->initialize(Landroid/content/Context;)V

    return-void

    .line 303
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000()Lcom/gpc/aws/logging/Log;
    .locals 1

    .line 78
    sget-object v0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->LOG:Lcom/gpc/aws/logging/Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->saveIdentityId(Ljava/lang/String;)V

    return-void
.end method

.method private checkUpgrade()V
    .locals 3

    .line 673
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->awsKeyValueStore:Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;

    sget-object v1, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->ID_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    sget-object v0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->LOG:Lcom/gpc/aws/logging/Log;

    const-string v2, "Identity id without namespace is detected. It will be saved under new namespace."

    invoke-interface {v0, v2}, Lcom/gpc/aws/logging/Log;->info(Ljava/lang/Object;)V

    .line 676
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->awsKeyValueStore:Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;

    invoke-virtual {v0, v1}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 677
    iget-object v2, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->awsKeyValueStore:Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;

    invoke-virtual {v2}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->clear()V

    .line 678
    iget-object v2, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->awsKeyValueStore:Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;

    invoke-direct {p0, v1}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private hasCredentials()Z
    .locals 4

    .line 623
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->awsKeyValueStore:Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;

    sget-object v1, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->AK_KEY:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->contains(Ljava/lang/String;)Z

    move-result v0

    .line 624
    iget-object v1, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->awsKeyValueStore:Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;

    sget-object v2, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->SK_KEY:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->contains(Ljava/lang/String;)Z

    move-result v1

    .line 625
    iget-object v2, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->awsKeyValueStore:Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;

    sget-object v3, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->ST_KEY:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 628
    :cond_1
    :goto_0
    sget-object v0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->LOG:Lcom/gpc/aws/logging/Log;

    const-string v1, "No valid credentials found in SharedPreferences"

    invoke-interface {v0, v1}, Lcom/gpc/aws/logging/Log;->debug(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 3

    .line 429
    new-instance v0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;

    sget-object v1, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->AWS_KEY_VALUE_STORE_NAMESPACE_IDENTIFIER:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->isPersistenceEnabled:Z

    invoke-direct {v0, p1, v1, v2}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->awsKeyValueStore:Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;

    .line 432
    invoke-direct {p0}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->checkUpgrade()V

    .line 433
    invoke-virtual {p0}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->getCachedIdentityId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->identityId:Ljava/lang/String;

    .line 434
    invoke-direct {p0}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->loadCachedCredentials()V

    .line 435
    iget-object p1, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->listener:Lcom/gpc/aws/auth/IdentityChangedListener;

    invoke-virtual {p0, p1}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->registerIdentityChangedListener(Lcom/gpc/aws/auth/IdentityChangedListener;)V

    return-void
.end method

.method private loadCachedCredentials()V
    .locals 6

    .line 588
    sget-object v0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->LOG:Lcom/gpc/aws/logging/Log;

    const-string v1, "Loading credentials from SharedPreferences"

    invoke-interface {v0, v1}, Lcom/gpc/aws/logging/Log;->debug(Ljava/lang/Object;)V

    .line 592
    iget-object v1, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->awsKeyValueStore:Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;

    sget-object v2, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->EXP_KEY:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 595
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 596
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    iput-object v1, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->sessionCredentialsExpiration:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    invoke-direct {p0}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->hasCredentials()Z

    move-result v1

    if-nez v1, :cond_0

    .line 607
    iput-object v2, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->sessionCredentialsExpiration:Ljava/util/Date;

    return-void

    .line 611
    :cond_0
    iget-object v1, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->awsKeyValueStore:Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;

    sget-object v3, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->AK_KEY:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 612
    iget-object v3, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->awsKeyValueStore:Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;

    sget-object v4, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->SK_KEY:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 613
    iget-object v4, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->awsKeyValueStore:Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;

    sget-object v5, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->ST_KEY:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    if-nez v4, :cond_1

    goto :goto_0

    .line 619
    :cond_1
    new-instance v0, Lcom/gpc/aws/auth/BasicSessionCredentials;

    invoke-direct {v0, v1, v3, v4}, Lcom/gpc/aws/auth/BasicSessionCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->sessionCredentials:Lcom/gpc/aws/auth/AWSSessionCredentials;

    return-void

    .line 615
    :cond_2
    :goto_0
    const-string v1, "No valid credentials found in SharedPreferences"

    invoke-interface {v0, v1}, Lcom/gpc/aws/logging/Log;->debug(Ljava/lang/Object;)V

    .line 616
    iput-object v2, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->sessionCredentialsExpiration:Ljava/util/Date;

    return-void

    .line 598
    :catch_0
    iput-object v2, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->sessionCredentialsExpiration:Ljava/util/Date;

    return-void

    .line 602
    :cond_3
    iput-object v2, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->sessionCredentialsExpiration:Ljava/util/Date;

    return-void
.end method

.method private namespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->getIdentityPoolId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private saveCredentials(Lcom/gpc/aws/auth/AWSSessionCredentials;J)V
    .locals 3

    .line 638
    sget-object v0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->LOG:Lcom/gpc/aws/logging/Log;

    const-string v1, "Saving credentials to SharedPreferences"

    invoke-interface {v0, v1}, Lcom/gpc/aws/logging/Log;->debug(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 640
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->awsKeyValueStore:Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;

    sget-object v1, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->AK_KEY:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/gpc/aws/auth/AWSSessionCredentials;->getAWSAccessKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->awsKeyValueStore:Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;

    sget-object v1, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->SK_KEY:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/gpc/aws/auth/AWSSessionCredentials;->getAWSSecretKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->awsKeyValueStore:Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;

    sget-object v1, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->ST_KEY:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/gpc/aws/auth/AWSSessionCredentials;->getSessionToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    iget-object p1, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->awsKeyValueStore:Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;

    sget-object v0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->EXP_KEY:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private saveIdentityId(Ljava/lang/String;)V
    .locals 2

    .line 655
    sget-object v0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->LOG:Lcom/gpc/aws/logging/Log;

    const-string v1, "Saving identity id to SharedPreferences"

    invoke-interface {v0, v1}, Lcom/gpc/aws/logging/Log;->debug(Ljava/lang/Object;)V

    .line 656
    iput-object p1, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->identityId:Ljava/lang/String;

    .line 658
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->awsKeyValueStore:Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;

    sget-object v1, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->ID_KEY:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 543
    invoke-super {p0}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->clear()V

    .line 546
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->awsKeyValueStore:Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;

    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {v0}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->clear()V

    :cond_0
    return-void
.end method

.method public clearCredentials()V
    .locals 2

    .line 558
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 560
    :try_start_0
    invoke-super {p0}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->clearCredentials()V

    .line 561
    sget-object v0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->LOG:Lcom/gpc/aws/logging/Log;

    const-string v1, "Clearing credentials from SharedPreferences"

    invoke-interface {v0, v1}, Lcom/gpc/aws/logging/Log;->debug(Ljava/lang/Object;)V

    .line 562
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->awsKeyValueStore:Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;

    sget-object v1, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->AK_KEY:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->remove(Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->awsKeyValueStore:Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;

    sget-object v1, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->SK_KEY:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->remove(Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->awsKeyValueStore:Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;

    sget-object v1, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->ST_KEY:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->remove(Ljava/lang/String;)V

    .line 565
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->awsKeyValueStore:Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;

    sget-object v1, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->EXP_KEY:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 568
    throw v0
.end method

.method public getCachedIdentityId()Ljava/lang/String;
    .locals 2

    .line 577
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->awsKeyValueStore:Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;

    sget-object v1, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->ID_KEY:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 578
    iget-object v1, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->identityId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 579
    invoke-super {p0, v0}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->setIdentityId(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getCredentials()Lcom/gpc/aws/auth/AWSCredentials;
    .locals 1

    .line 78
    invoke-virtual {p0}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->getCredentials()Lcom/gpc/aws/auth/AWSSessionCredentials;

    move-result-object v0

    return-object v0
.end method

.method public getCredentials()Lcom/gpc/aws/auth/AWSSessionCredentials;
    .locals 3

    .line 468
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 471
    :try_start_0
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->sessionCredentials:Lcom/gpc/aws/auth/AWSSessionCredentials;

    if-nez v0, :cond_0

    .line 472
    invoke-direct {p0}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->loadCachedCredentials()V

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->sessionCredentialsExpiration:Ljava/util/Date;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->needsNewSession()Z

    move-result v0

    if-nez v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->sessionCredentials:Lcom/gpc/aws/auth/AWSSessionCredentials;
    :try_end_0
    .catch Lcom/gpc/aws/services/cognitoidentity/model/NotAuthorizedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    :goto_0
    iget-object v1, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object v0

    .line 480
    :cond_1
    :try_start_1
    sget-object v0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->LOG:Lcom/gpc/aws/logging/Log;

    const-string v1, "Making a network call to fetch credentials."

    invoke-interface {v0, v1}, Lcom/gpc/aws/logging/Log;->debug(Ljava/lang/Object;)V

    .line 481
    invoke-super {p0}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->getCredentials()Lcom/gpc/aws/auth/AWSSessionCredentials;

    .line 484
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->sessionCredentialsExpiration:Ljava/util/Date;

    if-eqz v0, :cond_2

    .line 485
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->sessionCredentials:Lcom/gpc/aws/auth/AWSSessionCredentials;

    iget-object v1, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->sessionCredentialsExpiration:Ljava/util/Date;

    .line 486
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 485
    invoke-direct {p0, v0, v1, v2}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->saveCredentials(Lcom/gpc/aws/auth/AWSSessionCredentials;J)V

    .line 488
    :cond_2
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->sessionCredentials:Lcom/gpc/aws/auth/AWSSessionCredentials;
    :try_end_1
    .catch Lcom/gpc/aws/services/cognitoidentity/model/NotAuthorizedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 490
    :try_start_2
    sget-object v1, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->LOG:Lcom/gpc/aws/logging/Log;

    const-string v2, "Failure to get credentials"

    invoke-interface {v1, v2, v0}, Lcom/gpc/aws/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 491
    invoke-virtual {p0}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->getLogins()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    .line 494
    invoke-super {p0, v0}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->setIdentityId(Ljava/lang/String;)V

    .line 495
    invoke-super {p0}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->getCredentials()Lcom/gpc/aws/auth/AWSSessionCredentials;

    .line 496
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->sessionCredentials:Lcom/gpc/aws/auth/AWSSessionCredentials;

    goto :goto_0

    .line 499
    :cond_3
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 502
    :goto_1
    iget-object v1, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 503
    throw v0
.end method

.method public getIdentityId()Ljava/lang/String;
    .locals 1

    .line 450
    iget-boolean v0, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->needIdentityRefresh:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 451
    iput-boolean v0, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->needIdentityRefresh:Z

    .line 452
    invoke-virtual {p0}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->refresh()V

    .line 453
    invoke-super {p0}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->getIdentityId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->identityId:Ljava/lang/String;

    .line 454
    invoke-direct {p0, v0}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->saveIdentityId(Ljava/lang/String;)V

    .line 458
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->getCachedIdentityId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->identityId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 460
    invoke-super {p0}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->getIdentityId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->identityId:Ljava/lang/String;

    .line 461
    invoke-direct {p0, v0}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->saveIdentityId(Ljava/lang/String;)V

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->identityId:Ljava/lang/String;

    return-object v0
.end method

.method protected getUserAgent()Ljava/lang/String;
    .locals 1

    .line 663
    sget-object v0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->USER_AGENT:Ljava/lang/String;

    return-object v0
.end method

.method public refresh()V
    .locals 3

    .line 508
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 510
    :try_start_0
    invoke-super {p0}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->refresh()V

    .line 513
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->sessionCredentialsExpiration:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->sessionCredentials:Lcom/gpc/aws/auth/AWSSessionCredentials;

    iget-object v1, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->sessionCredentialsExpiration:Ljava/util/Date;

    .line 515
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 514
    invoke-direct {p0, v0, v1, v2}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->saveCredentials(Lcom/gpc/aws/auth/AWSSessionCredentials;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 519
    throw v0
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

    .line 524
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 526
    :try_start_0
    invoke-super {p0, p1}, Lcom/gpc/aws/auth/CognitoCredentialsProvider;->setLogins(Ljava/util/Map;)V

    const/4 p1, 0x1

    .line 528
    iput-boolean p1, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->needIdentityRefresh:Z

    .line 530
    invoke-virtual {p0}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->clearCredentials()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    iget-object p1, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 533
    throw p1
.end method

.method public setPersistenceEnabled(Z)V
    .locals 1

    .line 695
    iput-boolean p1, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->isPersistenceEnabled:Z

    .line 696
    iget-object v0, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->awsKeyValueStore:Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;

    invoke-virtual {v0, p1}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->setPersistenceEnabled(Z)V

    return-void
.end method
