.class public Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataStruct"
.end annotation


# static fields
.field private static final KEY_ACCESS_KEY:Ljava/lang/String; = "accessKey"

.field private static final KEY_SSO_TOKEN:Ljava/lang/String; = "SSOToken"

.field private static final KEY_USER_ID:Ljava/lang/String; = "userId"


# instance fields
.field public SSOTokenData:Ljava/lang/String;

.field public accessKey:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;->userId:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;->accessKey:Ljava/lang/String;

    return-void
.end method

.method public static createFromJson(Ljava/lang/String;)Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;
    .locals 4

    const-string v0, "userId"

    const-string v1, "SSOToken"

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    new-instance p0, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;

    invoke-direct {p0}, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;-><init>()V

    return-object p0

    .line 5
    :cond_0
    :try_start_0
    new-instance v2, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;

    invoke-direct {v2}, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;-><init>()V

    .line 6
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    const-string p0, "accessKey"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;->accessKey:Ljava/lang/String;

    .line 8
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 9
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;->SSOTokenData:Ljava/lang/String;

    .line 11
    :cond_1
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 12
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;->userId:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v2

    :catch_0
    move-exception p0

    .line 16
    const-string v0, "EncryptedStorageUtil"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    new-instance p0, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;

    invoke-direct {p0}, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;-><init>()V

    return-object p0
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    const-string v1, "userId"

    iget-object v2, p0, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    const-string v1, "accessKey"

    iget-object v2, p0, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;->accessKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    const-string v1, "SSOToken"

    iget-object v2, p0, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;->SSOTokenData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 11
    const-string v1, "EncryptedStorageUtil"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method
