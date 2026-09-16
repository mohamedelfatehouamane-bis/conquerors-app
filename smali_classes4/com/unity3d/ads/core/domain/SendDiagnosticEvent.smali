.class public interface abstract Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
.super Ljava/lang/Object;
.source "SendDiagnosticEvent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$Companion;,
        Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008f\u0018\u0000 \r2\u00020\u0001:\u0001\rJU\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0016\u0008\u0002\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\t2\u0016\u0008\u0002\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000b\u0018\u00010\tH\u00a6B\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000c\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;",
        "",
        "invoke",
        "",
        "event",
        "",
        "value",
        "",
        "tags",
        "",
        "intTags",
        "",
        "(Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
        "unity-ads_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final AD_LOAD_TYPE:Ljava/lang/String; = "type"

.field public static final BRIDGE_SEND_EVENT_FAILED:Ljava/lang/String; = "bridge_send_event_failed"

.field public static final Companion:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$Companion;

.field public static final INIT_FAILURE:Ljava/lang/String; = "native_initialize_task_failure_time"

.field public static final INIT_STARTED:Ljava/lang/String; = "native_initialization_started"

.field public static final INIT_SUCCESS:Ljava/lang/String; = "native_initialize_task_success_time"

.field public static final LOAD_FAILURE:Ljava/lang/String; = "native_load_failure_time"

.field public static final LOAD_STARTED:Ljava/lang/String; = "native_load_started"

.field public static final LOAD_SUCCESS:Ljava/lang/String; = "native_load_success_time"

.field public static final LOAD_TIMEOUT:Ljava/lang/String; = "native_load_timeout"

.field public static final NETWORK_CLIENT:Ljava/lang/String; = "network_client"

.field public static final NETWORK_FAILURE:Ljava/lang/String; = "native_network_failure_time"

.field public static final NETWORK_SUCCESS:Ljava/lang/String; = "native_network_success_time"

.field public static final OPERATION:Ljava/lang/String; = "operation"

.field public static final PROTOCOL:Ljava/lang/String; = "protocol"

.field public static final REASON:Ljava/lang/String; = "reason"

.field public static final REASON_ALREADY_SHOWING:Ljava/lang/String; = "already_showing"

.field public static final REASON_GATEWAY:Ljava/lang/String; = "gateway"

.field public static final REASON_INIT_FAILED:Ljava/lang/String; = "init_failed"

.field public static final REASON_INTERNAL:Ljava/lang/String; = "internal"

.field public static final REASON_INVALID:Ljava/lang/String; = "invalid"

.field public static final REASON_NETWORK:Ljava/lang/String; = "network"

.field public static final REASON_NOT_READY:Ljava/lang/String; = "not_ready"

.field public static final REASON_NO_CONNECTION:Ljava/lang/String; = "no_connection"

.field public static final REASON_NO_FILL:Ljava/lang/String; = "no_fill"

.field public static final REASON_TIMEOUT:Ljava/lang/String; = "timeout"

.field public static final REASON_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final REASON_VIDEO_PLAYER:Ljava/lang/String; = "player"

.field public static final RETRIES:Ljava/lang/String; = "retries"

.field public static final SHOW_CANCEL_TIMEOUT:Ljava/lang/String; = "native_show_cancel_timeout"

.field public static final SHOW_CLICKED:Ljava/lang/String; = "native_show_clicked"

.field public static final SHOW_FAILURE:Ljava/lang/String; = "native_show_failure_time"

.field public static final SHOW_STARTED:Ljava/lang/String; = "native_show_started"

.field public static final SHOW_SUCCESS:Ljava/lang/String; = "native_show_success_time"

.field public static final SHOW_WV_STARTED:Ljava/lang/String; = "native_show_wv_started"

.field public static final SYSTEM_CRONET_FAILURE:Ljava/lang/String; = "native_cronet_failure_time"

.field public static final SYSTEM_CRONET_SUCCESS:Ljava/lang/String; = "native_cronet_success_time"

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final WEBVIEW_ERROR:Ljava/lang/String; = "webview_error"

.field public static final WEBVIEW_ERROR_CODE:Ljava/lang/String; = "webview_error_code"

.field public static final WEBVIEW_URL:Ljava/lang/String; = "webview_url"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$Companion;->$$INSTANCE:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$Companion;

    sput-object v0, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;->Companion:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$Companion;

    return-void
.end method


# virtual methods
.method public abstract invoke(Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
