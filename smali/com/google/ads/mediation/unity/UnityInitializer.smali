.class public Lcom/google/ads/mediation/unity/UnityInitializer;
.super Ljava/lang/Object;
.source "UnityInitializer.java"


# static fields
.field static final ADMOB:Ljava/lang/String; = "AdMob"

.field static final KEY_ADAPTER_VERSION:Ljava/lang/String; = "adapter_version"

.field private static unityInitializerInstance:Lcom/google/ads/mediation/unity/UnityInitializer;


# instance fields
.field private final unityAdsWrapper:Lcom/google/ads/mediation/unity/UnityAdsWrapper;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/google/ads/mediation/unity/UnityAdsWrapper;

    invoke-direct {v0}, Lcom/google/ads/mediation/unity/UnityAdsWrapper;-><init>()V

    iput-object v0, p0, Lcom/google/ads/mediation/unity/UnityInitializer;->unityAdsWrapper:Lcom/google/ads/mediation/unity/UnityAdsWrapper;

    return-void
.end method

.method constructor <init>(Lcom/google/ads/mediation/unity/UnityAdsWrapper;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/ads/mediation/unity/UnityInitializer;->unityAdsWrapper:Lcom/google/ads/mediation/unity/UnityAdsWrapper;

    return-void
.end method

.method static declared-synchronized getInstance()Lcom/google/ads/mediation/unity/UnityInitializer;
    .locals 2

    const-class v0, Lcom/google/ads/mediation/unity/UnityInitializer;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/google/ads/mediation/unity/UnityInitializer;->unityInitializerInstance:Lcom/google/ads/mediation/unity/UnityInitializer;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/google/ads/mediation/unity/UnityInitializer;

    invoke-direct {v1}, Lcom/google/ads/mediation/unity/UnityInitializer;-><init>()V

    sput-object v1, Lcom/google/ads/mediation/unity/UnityInitializer;->unityInitializerInstance:Lcom/google/ads/mediation/unity/UnityInitializer;

    .line 48
    :cond_0
    sget-object v1, Lcom/google/ads/mediation/unity/UnityInitializer;->unityInitializerInstance:Lcom/google/ads/mediation/unity/UnityInitializer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public initializeUnityAds(Landroid/content/Context;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsInitializationListener;)V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityInitializer;->unityAdsWrapper:Lcom/google/ads/mediation/unity/UnityAdsWrapper;

    invoke-virtual {v0}, Lcom/google/ads/mediation/unity/UnityAdsWrapper;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-interface {p3}, Lcom/unity3d/ads/IUnityAdsInitializationListener;->onInitializationComplete()V

    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityInitializer;->unityAdsWrapper:Lcom/google/ads/mediation/unity/UnityAdsWrapper;

    invoke-virtual {v0, p1}, Lcom/google/ads/mediation/unity/UnityAdsWrapper;->getMediationMetaData(Landroid/content/Context;)Lcom/unity3d/ads/metadata/MediationMetaData;

    move-result-object v0

    .line 80
    const-string v1, "AdMob"

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/metadata/MediationMetaData;->setName(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/google/ads/mediation/unity/UnityInitializer;->unityAdsWrapper:Lcom/google/ads/mediation/unity/UnityAdsWrapper;

    invoke-virtual {v1}, Lcom/google/ads/mediation/unity/UnityAdsWrapper;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/metadata/MediationMetaData;->setVersion(Ljava/lang/String;)V

    .line 82
    const-string v1, "adapter_version"

    const-string v2, "4.9.3.0"

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/ads/metadata/MediationMetaData;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 83
    invoke-virtual {v0}, Lcom/unity3d/ads/metadata/MediationMetaData;->commit()V

    .line 85
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityInitializer;->unityAdsWrapper:Lcom/google/ads/mediation/unity/UnityAdsWrapper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/ads/mediation/unity/UnityAdsWrapper;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsInitializationListener;)V

    return-void
.end method
