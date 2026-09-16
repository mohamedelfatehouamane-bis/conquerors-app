.class public Lcom/igg/android/conquerors/GPCAgreementHelper;
.super Ljava/lang/Object;
.source "GPCAgreementHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;,
        Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;
    }
.end annotation


# static fields
.field private static final GOOGLE_ANALYTICS_SDK:Ljava/lang/String; = "GOOGLE_ANALYTICS_SDK"

.field private static mGameInstance:Lcom/igg/android/conquerors/col;

.field private static v1Agreement:Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;

.field private static v2Agreement:Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;


# direct methods
.method static bridge synthetic -$$Nest$sfgetmGameInstance()Lcom/igg/android/conquerors/col;
    .locals 1

    sget-object v0, Lcom/igg/android/conquerors/GPCAgreementHelper;->mGameInstance:Lcom/igg/android/conquerors/col;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smupdateThirdPartySDK(ZZZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/igg/android/conquerors/GPCAgreementHelper;->updateThirdPartySDK(ZZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getV1()Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;
    .locals 2

    .line 64
    sget-object v0, Lcom/igg/android/conquerors/GPCAgreementHelper;->v1Agreement:Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;

    sget-object v1, Lcom/igg/android/conquerors/GPCAgreementHelper;->mGameInstance:Lcom/igg/android/conquerors/col;

    invoke-direct {v0, v1}, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;-><init>(Lcom/igg/android/conquerors/col;)V

    sput-object v0, Lcom/igg/android/conquerors/GPCAgreementHelper;->v1Agreement:Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;

    .line 67
    :cond_0
    sget-object v0, Lcom/igg/android/conquerors/GPCAgreementHelper;->v1Agreement:Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;

    return-object v0
.end method

.method public static getV2()Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;
    .locals 2

    .line 57
    sget-object v0, Lcom/igg/android/conquerors/GPCAgreementHelper;->v2Agreement:Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;

    sget-object v1, Lcom/igg/android/conquerors/GPCAgreementHelper;->mGameInstance:Lcom/igg/android/conquerors/col;

    invoke-direct {v0, v1}, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;-><init>(Lcom/igg/android/conquerors/col;)V

    sput-object v0, Lcom/igg/android/conquerors/GPCAgreementHelper;->v2Agreement:Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;

    .line 60
    :cond_0
    sget-object v0, Lcom/igg/android/conquerors/GPCAgreementHelper;->v2Agreement:Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;

    return-object v0
.end method

.method public static init(Lcom/igg/android/conquerors/col;)V
    .locals 0

    .line 40
    sput-object p0, Lcom/igg/android/conquerors/GPCAgreementHelper;->mGameInstance:Lcom/igg/android/conquerors/col;

    return-void
.end method

.method private static updateThirdPartySDK(ZZZ)V
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateThirdPartySDK isEU :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " granted :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCAgreementHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-static {p0}, Lcom/ThirdPartySDK;->setEU(Z)V

    .line 48
    invoke-static {p2}, Lcom/ThirdPartySDK;->setAppsFlyerWithConsent(Z)V

    .line 49
    invoke-static {p2}, Lcom/ThirdPartySDK;->setFirebaseWithConsent(Z)V

    if-eqz p1, :cond_0

    .line 52
    invoke-static {}, Lcom/ThirdPartySDK;->startSDKWithConsent()V

    :cond_0
    return-void
.end method
