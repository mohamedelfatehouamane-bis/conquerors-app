.class public final Lcom/gpc/sdk/jarvis/utils/log/interceptor/JAccessKeyLogInterceptor;
.super Ljava/lang/Object;
.source "JAccessKeyLogInterceptor.kt"

# interfaces
.implements Lcom/gpc/sdk/jarvis/utils/log/interceptor/JLogInterceptor;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/gpc/sdk/jarvis/utils/log/interceptor/JAccessKeyLogInterceptor;",
        "Lcom/gpc/sdk/jarvis/utils/log/interceptor/JLogInterceptor;",
        "()V",
        "onIntercept",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIntercept(Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;)V
    .locals 5

    const-string v0, "logEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;->getMsg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "mark_not_AccessKey"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/sdk/jarvis/utils/JSensitiveUtils;->process(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JSensitiveUtils.process(logEntity.msg)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;->setMsg(Ljava/lang/String;)V

    return-void
.end method
