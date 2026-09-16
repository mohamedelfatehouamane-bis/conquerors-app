.class public final Lcom/gpc/sdk/jarvis/utils/log/adapter/JFileLogAdapter$1;
.super Ljava/lang/Object;
.source "JFileLogAdapter.kt"

# interfaces
.implements Lcom/gpc/sdk/jarvis/utils/log/filter/JLogFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/jarvis/utils/log/adapter/JFileLogAdapter;-><init>(Landroid/content/Context;)V
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
        "com/gpc/sdk/jarvis/utils/log/adapter/JFileLogAdapter$1",
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
.field final synthetic this$0:Lcom/gpc/sdk/jarvis/utils/log/adapter/JFileLogAdapter;


# direct methods
.method constructor <init>(Lcom/gpc/sdk/jarvis/utils/log/adapter/JFileLogAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/gpc/sdk/jarvis/utils/log/adapter/JFileLogAdapter$1;->this$0:Lcom/gpc/sdk/jarvis/utils/log/adapter/JFileLogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValid(Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;)Z
    .locals 1

    const-string v0, "logEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lcom/gpc/sdk/jarvis/utils/log/adapter/JFileLogAdapter$1;->this$0:Lcom/gpc/sdk/jarvis/utils/log/adapter/JFileLogAdapter;

    invoke-static {p1}, Lcom/gpc/sdk/jarvis/utils/log/adapter/JFileLogAdapter;->access$getEnable$p(Lcom/gpc/sdk/jarvis/utils/log/adapter/JFileLogAdapter;)Z

    move-result p1

    return p1
.end method
