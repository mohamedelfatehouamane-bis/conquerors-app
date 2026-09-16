.class public Lcom/gpc/sdk/utils/common/GPCConstant$PERSISTENCE_FILE_NAME;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/utils/common/GPCConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PERSISTENCE_FILE_NAME"
.end annotation


# static fields
.field public static final API_GATEWAY_LINKS:Ljava/lang/String; = "api_gateway_links.profile"

.field public static final APP_CONFIG_FILE:Ljava/lang/String; = "app_config_file"

.field public static final APP_PROFILE:Ljava/lang/String; = "app_profile"

.field public static final DEVICE_EVENT_INFO:Ljava/lang/String; = "device_event_info.profile"

.field public static final EVENT_COLLECTION:Ljava/lang/String; = "event_collection.profile"

.field public static final FCM_PUSH_SESSION_INFO:Ljava/lang/String; = "fcm_push_session_info"

.field public static final GPC_SDK_DATA:Ljava/lang/String; = "gpc_sdk_data"

.field public static final LOGIN_SESSION:Ljava/lang/String; = "gpcsdk_login_session"

.field public static final OBSCURE_FILE:Ljava/lang/String; = "obscure_file"

.field public static final PAYLOAD_INFO_CACHE:Ljava/lang/String; = "payload_info_cache.tmp"

.field public static final PAYMENT_MESSAGE:Ljava/lang/String; = "payment_message"

.field public static final PUSH_STORAGE_MESSAGE:Ljava/lang/String; = "gpcsdk_push_storage_message"

.field public static final SDK_DEVICEUID_FILE:Ljava/lang/String; = "gpcsdk_device_file"

.field public static final SDK_INITIALIZATION_STATUS:Ljava/lang/String; = "sdk_initialization_status.profile"

.field public static final SDK_LEGACY_TASK:Ljava/lang/String; = "gpcsdk_legacy_task"

.field public static final SIGNING_STATUS:Ljava/lang/String; = "signing_status.profile"

.field public static final STORAGE_GETUI_CACHE_NAME:Ljava/lang/String; = "getui_push_message"

.field public static final STORAGE_V2_STATUS:Ljava/lang/String; = "storage_v2_status"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static EVENT_COLLECTION_FLUSHING_CYCLE(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "event_collection_flushing_cycle_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".profile"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static EVENT_COLLECTION_VOLUME(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "event_collection_volume_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".profile"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
