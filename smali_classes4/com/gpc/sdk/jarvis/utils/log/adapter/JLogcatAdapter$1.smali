.class public final Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogcatAdapter$1;
.super Ljava/lang/Object;
.source "JLogcatAdapter.kt"

# interfaces
.implements Lcom/gpc/sdk/jarvis/utils/log/filter/JLogFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogcatAdapter;-><init>(Landroid/content/Context;Lcom/gpc/sdk/jarvis/utils/log/format/JLogFormat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/gpc/sdk/jarvis/utils/log/adapter/JLogcatAdapter$1",
        "Lcom/gpc/sdk/jarvis/utils/log/filter/JLogFilter;",
        "onValid",
        "",
        "logEntity",
        "Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;",
        "Jarvis-Utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogcatAdapter;


# direct methods
.method constructor <init>(Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogcatAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogcatAdapter$1;->this$0:Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogcatAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValid(Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;)Z
    .locals 2

    const-string v0, "logEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogcatAdapter$1;->this$0:Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogcatAdapter;

    invoke-static {v0}, Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogcatAdapter;->access$isSetSystemProperty$p(Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogcatAdapter;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 45
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;->getLogcatType()I

    move-result p1

    const/4 v0, 0x4

    if-ge p1, v0, :cond_1

    .line 46
    invoke-static {}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->isDebugMode()Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method
