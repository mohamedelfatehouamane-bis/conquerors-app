.class public Lcom/gpc/sdk/notification/GPCNotificationCenter$Notification;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/notification/GPCNotificationCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Notification"
.end annotation


# static fields
.field public static final ACTIVITY_RESULT_RECEIVED:Ljava/lang/String; = "activity_result_received"

.field public static final ADM_TOKEN_REFRESH:Ljava/lang/String; = "adm_token_refresh"

.field public static final APP_CONFIG_NOTIFICATION_NAME:Ljava/lang/String; = "app_config_notification"

.field public static final FCM_TOKEN_REFRESH:Ljava/lang/String; = "fcm_token_refresh"

.field public static final FIRST_LOGIN:Ljava/lang/String; = "FIRST_LOGIN"

.field public static final FIRST_START_UP:Ljava/lang/String; = "FIRST_START_UP"

.field public static final GAME_ID_CHANGED:Ljava/lang/String; = "game_id_changed"

.field public static final LEGACY_TASK_FINISH:Ljava/lang/String; = "legacy_task_finish"

.field public static final LEGACY_TASK_PROCESS:Ljava/lang/String; = "legacy_task_process"

.field public static final MAIN_ACTIVITY_SETTED:Ljava/lang/String; = "main_activity_setted"

.field public static final NEW_USER_LOGIN:Ljava/lang/String; = "new_user_login"

.field public static final PRIMARY_APP_CONFIG_LOAD_FAILED_NOTIFICATION_NAME:Ljava/lang/String; = "primary_app_config_load_failed_notification"

.field public static final PRIMARY_APP_CONFIG_NOTIFICATION_NAME:Ljava/lang/String; = "primary_app_config_notification"

.field public static final SERVICE_SESSION_HAS_BEEN_EXPIRED:Ljava/lang/String; = "service_session_has_been_expired"

.field public static final SESSION_HAS_BEEN_EXPIRED:Ljava/lang/String; = "session_has_been_expired"

.field public static final SESSION_HAS_BEEN_INVALID:Ljava/lang/String; = "session_has_been_invalid"

.field public static final TIME_SYNC:Ljava/lang/String; = "time_sync"

.field public static final UPLOAD_VIP_LOG:Ljava/lang/String; = "upload_vip_log"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
