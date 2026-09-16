.class public Lcom/ThirdPartySDK$AppsFlyerSDK;
.super Ljava/lang/Object;
.source "ThirdPartySDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ThirdPartySDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppsFlyerSDK"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AppsFlyerSDK"


# instance fields
.field private final flyerKey:Ljava/lang/String;

.field private mAppsflyerEnable:Z

.field private mGameInstance:Lcom/igg/android/conquerors/col;


# direct methods
.method public constructor <init>(Lcom/igg/android/conquerors/col;)V
    .locals 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/ThirdPartySDK$AppsFlyerSDK;->mAppsflyerEnable:Z

    .line 138
    const-string v0, "WEYqZmRBi6ZmFww2esj28Y"

    iput-object v0, p0, Lcom/ThirdPartySDK$AppsFlyerSDK;->flyerKey:Ljava/lang/String;

    .line 143
    iput-object p1, p0, Lcom/ThirdPartySDK$AppsFlyerSDK;->mGameInstance:Lcom/igg/android/conquerors/col;

    return-void
.end method


# virtual methods
.method public Init(Lcom/ThirdPartySDK$InitSDKFinish;)V
    .locals 4

    const-string v0, "{\"g_id\":\""

    .line 147
    new-instance v1, Lcom/ThirdPartySDK$AppsFlyerSDK$1;

    invoke-direct {v1, p0, p1}, Lcom/ThirdPartySDK$AppsFlyerSDK$1;-><init>(Lcom/ThirdPartySDK$AppsFlyerSDK;Lcom/ThirdPartySDK$InitSDKFinish;)V

    .line 183
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/appsflyer/AppsFlyerLib;->setDebugLog(Z)V

    .line 185
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object p1

    iget-object v2, p0, Lcom/ThirdPartySDK$AppsFlyerSDK;->mGameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {v2}, Lcom/igg/android/conquerors/col;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "WEYqZmRBi6ZmFww2esj28Y"

    invoke-virtual {p1, v3, v1, v2}, Lcom/appsflyer/AppsFlyerLib;->init(Ljava/lang/String;Lcom/appsflyer/AppsFlyerConversionListener;Landroid/content/Context;)Lcom/appsflyer/AppsFlyerLib;

    .line 187
    :try_start_0
    invoke-static {}, Lcom/Tool;->getGameIdByLocalLanguage()Ljava/lang/String;

    move-result-object p1

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"}"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 189
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appsflyer/AppsFlyerLib;->setCustomerUserId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 191
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public startSDKWithNonGDPR()V
    .locals 2

    .line 196
    invoke-static {}, Lcom/appsflyer/AppsFlyerConsent;->forNonGDPRUser()Lcom/appsflyer/AppsFlyerConsent;

    move-result-object v0

    .line 197
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appsflyer/AppsFlyerLib;->setConsentData(Lcom/appsflyer/AppsFlyerConsent;)V

    .line 199
    iget-boolean v0, p0, Lcom/ThirdPartySDK$AppsFlyerSDK;->mAppsflyerEnable:Z

    if-nez v0, :cond_0

    .line 200
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    iget-object v1, p0, Lcom/ThirdPartySDK$AppsFlyerSDK;->mGameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->start(Landroid/content/Context;)V

    :cond_0
    const/4 v0, 0x1

    .line 202
    iput-boolean v0, p0, Lcom/ThirdPartySDK$AppsFlyerSDK;->mAppsflyerEnable:Z

    .line 204
    const-string v0, "AppsFlyerSDK"

    const-string v1, "AppsFlyerLib startSDKWithNonGDPR"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startWithGDPRUserWithConsent(Z)V
    .locals 2

    .line 211
    invoke-static {p1, p1}, Lcom/appsflyer/AppsFlyerConsent;->forGDPRUser(ZZ)Lcom/appsflyer/AppsFlyerConsent;

    move-result-object v0

    .line 212
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appsflyer/AppsFlyerLib;->setConsentData(Lcom/appsflyer/AppsFlyerConsent;)V

    .line 215
    iget-boolean v0, p0, Lcom/ThirdPartySDK$AppsFlyerSDK;->mAppsflyerEnable:Z

    if-nez v0, :cond_0

    .line 216
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    iget-object v1, p0, Lcom/ThirdPartySDK$AppsFlyerSDK;->mGameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->start(Landroid/content/Context;)V

    :cond_0
    const/4 v0, 0x1

    .line 218
    iput-boolean v0, p0, Lcom/ThirdPartySDK$AppsFlyerSDK;->mAppsflyerEnable:Z

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppsFlyerLib startWithGDPRUserWithConsent. granted :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppsFlyerSDK"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
