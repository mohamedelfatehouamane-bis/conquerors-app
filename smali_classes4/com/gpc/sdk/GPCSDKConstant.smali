.class public Lcom/gpc/sdk/GPCSDKConstant;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/GPCSDKConstant$ResourceStorage;,
        Lcom/gpc/sdk/GPCSDKConstant$OrderType;,
        Lcom/gpc/sdk/GPCSDKConstant$PushMessageBusinessType;,
        Lcom/gpc/sdk/GPCSDKConstant$ProductsChannel;,
        Lcom/gpc/sdk/GPCSDKConstant$PaymentType;,
        Lcom/gpc/sdk/GPCSDKConstant$GPCTranslationType;,
        Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;,
        Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;,
        Lcom/gpc/sdk/GPCSDKConstant$CDNType;,
        Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;,
        Lcom/gpc/sdk/GPCSDKConstant$ThirdAccountPlatformType;,
        Lcom/gpc/sdk/GPCSDKConstant$GuestAccountPlatformType;,
        Lcom/gpc/sdk/GPCSDKConstant$GPCMobileDeviceMessageState;,
        Lcom/gpc/sdk/GPCSDKConstant$GPCAppConfigContentFormat;
    }
.end annotation


# static fields
.field public static final ADM_REGISTERED_FAIL_INFO:Ljava/lang/String; = "From Amazon ADM Server: failed added device!"

.field public static final ADM_REGISTERED_SUCCESS_INFO:Ljava/lang/String; = "From Amazon ADM Server: successfully added device!"

.field public static final GCM_REGISTERED_FAIL_INFO:Ljava/lang/String; = "From GCM Server: failed added device!"

.field public static final GCM_REGISTERED_SUCCESS_INFO:Ljava/lang/String; = "From GCM Server: successfully added device!"

.field private static final TAG:Ljava/lang/String; = "GPCSDKConstant"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
