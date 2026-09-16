.class final enum Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/AFb1gSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AFa1ySDK"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;",
        ">;"
    }
.end annotation


# static fields
.field private static enum AFInAppEventParameterName:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

.field private static enum AFInAppEventType:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

.field private static enum AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

.field private static enum AFLogger:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

.field private static final synthetic afDebugLog:[Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

.field private static enum afInfoLog:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

.field private static enum d:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

.field private static enum e:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

.field private static enum force:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

.field private static enum registerClient:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

.field private static enum unregisterClient:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

.field private static enum v:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

.field public static final enum valueOf:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

.field private static enum values:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

.field private static enum w:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;


# instance fields
.field private final afWarnLog:Ljava/lang/String;

.field private final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 63
    new-instance v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    const-string v1, "android_adobe_air"

    const-string v2, "com.appsflyer.adobeair.AppsFlyerExtension"

    const-string v3, "ADOBE_AIR"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    .line 64
    new-instance v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    const-string v1, "android_adobe_mobile"

    const-string v2, "com.appsflyer.adobeextension.AppsFlyerAdobeExtension"

    const-string v3, "ADOBE_MOBILE_SDK"

    const/4 v5, 0x1

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->AFInAppEventType:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    .line 65
    new-instance v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    const-string v1, "android_cocos2dx"

    const-string v2, "org.cocos2dx.lib.Cocos2dxActivity"

    const-string v3, "COCOS2DX"

    const/4 v6, 0x2

    invoke-direct {v0, v3, v6, v1, v2}, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->values:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    .line 66
    new-instance v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    const-string v1, "android_cordova"

    const-string v2, "com.appsflyer.cordova.plugin.AppsFlyerPlugin"

    const-string v3, "CORDOVA"

    const/4 v7, 0x3

    invoke-direct {v0, v3, v7, v1, v2}, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    .line 67
    new-instance v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    const-string v1, "android_native"

    const-string v2, "DEFAULT"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1, v1}, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->valueOf:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    .line 68
    new-instance v1, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    const-string v2, "android_flutter"

    const-string v8, "com.appsflyer.appsflyersdk.AppsflyerSdkPlugin"

    const-string v9, "FLUTTER"

    const/4 v10, 0x5

    invoke-direct {v1, v9, v10, v2, v8}, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->unregisterClient:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    .line 69
    new-instance v1, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    const-string v2, "android_mparticle"

    const-string v8, "com.mparticle.kits.AppsFlyerKit"

    const-string v9, "M_PARTICLE"

    const/4 v11, 0x6

    invoke-direct {v1, v9, v11, v2, v8}, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->d:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    .line 70
    new-instance v1, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    const-string v2, "android_native_script"

    const-string v8, "com.tns.NativeScriptActivity"

    const-string v9, "NATIVE_SCRIPT"

    const/4 v12, 0x7

    invoke-direct {v1, v9, v12, v2, v8}, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->e:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    .line 71
    new-instance v1, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    const-string v2, "android_expo"

    const-string v8, "expo.modules.devmenu.react.DevMenuAwareReactActivity"

    const-string v9, "EXPO"

    const/16 v13, 0x8

    invoke-direct {v1, v9, v13, v2, v8}, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->registerClient:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    .line 72
    new-instance v1, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    const-string v2, "android_reactNative"

    const-string v8, "com.appsflyer.reactnative.RNAppsFlyerModule"

    const-string v9, "REACT_NATIVE"

    const/16 v14, 0x9

    invoke-direct {v1, v9, v14, v2, v8}, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->AFLogger:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    .line 73
    new-instance v1, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    const-string v2, "android_unity"

    const-string v8, "com.appsflyer.unity.AppsFlyerAndroidWrapper"

    const-string v9, "UNITY"

    const/16 v15, 0xa

    invoke-direct {v1, v9, v15, v2, v8}, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->force:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    .line 74
    new-instance v1, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    const-string v2, "android_unreal"

    const-string v8, "com.epicgames.ue4.GameActivity"

    const-string v9, "UNREAL_ENGINE"

    const/16 v16, 0x4

    const/16 v3, 0xb

    invoke-direct {v1, v9, v3, v2, v8}, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->w:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    .line 75
    new-instance v1, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    const-string v2, "android_xamarin"

    const-string v8, "mono.android.Runtime"

    const-string v9, "XAMARIN"

    const/16 v17, 0xb

    const/16 v3, 0xc

    invoke-direct {v1, v9, v3, v2, v8}, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->v:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    .line 76
    new-instance v1, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    const-string v2, "android_capacitor"

    const-string v8, "capacitor.plugin.appsflyer.sdk.AppsFlyerPlugin"

    const-string v9, "CAPACITOR"

    const/16 v18, 0xc

    const/16 v3, 0xd

    invoke-direct {v1, v9, v3, v2, v8}, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->afInfoLog:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    const/16 v2, 0xe

    .line 62
    new-array v2, v2, [Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    sget-object v8, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    aput-object v8, v2, v4

    sget-object v4, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->AFInAppEventType:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    aput-object v4, v2, v5

    sget-object v4, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->values:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    aput-object v4, v2, v6

    sget-object v4, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    aput-object v4, v2, v7

    aput-object v0, v2, v16

    sget-object v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->unregisterClient:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    aput-object v0, v2, v10

    sget-object v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->d:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    aput-object v0, v2, v11

    sget-object v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->e:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    aput-object v0, v2, v12

    sget-object v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->registerClient:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    aput-object v0, v2, v13

    sget-object v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->AFLogger:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    aput-object v0, v2, v14

    sget-object v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->force:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    aput-object v0, v2, v15

    sget-object v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->w:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    aput-object v0, v2, v17

    sget-object v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->v:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    aput-object v0, v2, v18

    aput-object v1, v2, v3

    sput-object v2, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->afDebugLog:[Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 82
    iput-object p3, p0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->i:Ljava/lang/String;

    .line 83
    iput-object p4, p0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->afWarnLog:Ljava/lang/String;

    return-void
.end method

.method static synthetic AFKeystoreWrapper(Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;)Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->afWarnLog:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;
    .locals 1

    .line 62
    const-class v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    return-object p0
.end method

.method static synthetic values(Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;)Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->i:Ljava/lang/String;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;
    .locals 1

    .line 62
    sget-object v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->afDebugLog:[Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    return-object v0
.end method
