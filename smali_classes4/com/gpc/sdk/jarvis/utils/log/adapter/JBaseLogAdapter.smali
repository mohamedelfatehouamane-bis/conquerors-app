.class public abstract Lcom/gpc/sdk/jarvis/utils/log/adapter/JBaseLogAdapter;
.super Ljava/lang/Object;
.source "JBaseLogAdapter.kt"

# interfaces
.implements Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogAdapter;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0004J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u0015H\u0004J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0014\u001a\u00020\u0015H&R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/gpc/sdk/jarvis/utils/log/adapter/JBaseLogAdapter;",
        "Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogAdapter;",
        "logformat",
        "Lcom/gpc/sdk/jarvis/utils/log/format/JLogFormat;",
        "filter",
        "Lcom/gpc/sdk/jarvis/utils/log/filter/JLogFilter;",
        "(Lcom/gpc/sdk/jarvis/utils/log/format/JLogFormat;Lcom/gpc/sdk/jarvis/utils/log/filter/JLogFilter;)V",
        "getFilter",
        "()Lcom/gpc/sdk/jarvis/utils/log/filter/JLogFilter;",
        "setFilter",
        "(Lcom/gpc/sdk/jarvis/utils/log/filter/JLogFilter;)V",
        "interceptors",
        "",
        "Lcom/gpc/sdk/jarvis/utils/log/interceptor/JLogInterceptor;",
        "getInterceptors",
        "()Ljava/util/List;",
        "getLogformat",
        "()Lcom/gpc/sdk/jarvis/utils/log/format/JLogFormat;",
        "getLogMessage",
        "",
        "logEntity",
        "Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;",
        "isRecord",
        "",
        "log",
        "",
        "logAfterFilter",
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
.field private filter:Lcom/gpc/sdk/jarvis/utils/log/filter/JLogFilter;

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/sdk/jarvis/utils/log/interceptor/JLogInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final logformat:Lcom/gpc/sdk/jarvis/utils/log/format/JLogFormat;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/gpc/sdk/jarvis/utils/log/adapter/JBaseLogAdapter;-><init>(Lcom/gpc/sdk/jarvis/utils/log/format/JLogFormat;Lcom/gpc/sdk/jarvis/utils/log/filter/JLogFilter;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/gpc/sdk/jarvis/utils/log/format/JLogFormat;Lcom/gpc/sdk/jarvis/utils/log/filter/JLogFilter;)V
    .locals 1

    const-string v0, "logformat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gpc/sdk/jarvis/utils/log/adapter/JBaseLogAdapter;->logformat:Lcom/gpc/sdk/jarvis/utils/log/format/JLogFormat;

    iput-object p2, p0, Lcom/gpc/sdk/jarvis/utils/log/adapter/JBaseLogAdapter;->filter:Lcom/gpc/sdk/jarvis/utils/log/filter/JLogFilter;

    const/4 p1, 0x2

    .line 20
    new-array p1, p1, [Lcom/gpc/sdk/jarvis/utils/log/interceptor/JLogInterceptor;

    .line 21
    new-instance p2, Lcom/gpc/sdk/jarvis/utils/log/interceptor/JAccessKeyLogInterceptor;

    invoke-direct {p2}, Lcom/gpc/sdk/jarvis/utils/log/interceptor/JAccessKeyLogInterceptor;-><init>()V

    check-cast p2, Lcom/gpc/sdk/jarvis/utils/log/interceptor/JLogInterceptor;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 22
    new-instance p2, Lcom/gpc/sdk/jarvis/utils/log/interceptor/JJWTLogInterceptor;

    invoke-direct {p2}, Lcom/gpc/sdk/jarvis/utils/log/interceptor/JJWTLogInterceptor;-><init>()V

    check-cast p2, Lcom/gpc/sdk/jarvis/utils/log/interceptor/JLogInterceptor;

    const/4 v0, 0x1

    aput-object p2, p1, v0

    .line 20
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/jarvis/utils/log/adapter/JBaseLogAdapter;->interceptors:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gpc/sdk/jarvis/utils/log/format/JLogFormat;Lcom/gpc/sdk/jarvis/utils/log/filter/JLogFilter;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 18
    new-instance p1, Lcom/gpc/sdk/jarvis/utils/log/format/JLogDefaultFormat;

    invoke-direct {p1}, Lcom/gpc/sdk/jarvis/utils/log/format/JLogDefaultFormat;-><init>()V

    check-cast p1, Lcom/gpc/sdk/jarvis/utils/log/format/JLogFormat;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    move-object p3, p2

    check-cast p3, Lcom/gpc/sdk/jarvis/utils/log/filter/JLogFilter;

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/gpc/sdk/jarvis/utils/log/adapter/JBaseLogAdapter;-><init>(Lcom/gpc/sdk/jarvis/utils/log/format/JLogFormat;Lcom/gpc/sdk/jarvis/utils/log/filter/JLogFilter;)V

    return-void
.end method


# virtual methods
.method public final getFilter()Lcom/gpc/sdk/jarvis/utils/log/filter/JLogFilter;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/gpc/sdk/jarvis/utils/log/adapter/JBaseLogAdapter;->filter:Lcom/gpc/sdk/jarvis/utils/log/filter/JLogFilter;

    return-object v0
.end method

.method protected final getInterceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/jarvis/utils/log/interceptor/JLogInterceptor;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/gpc/sdk/jarvis/utils/log/adapter/JBaseLogAdapter;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method protected final getLogMessage(Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;)Ljava/lang/String;
    .locals 2

    const-string v0, "logEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/gpc/sdk/jarvis/utils/log/adapter/JBaseLogAdapter;->interceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/sdk/jarvis/utils/log/interceptor/JLogInterceptor;

    .line 31
    invoke-interface {v1, p1}, Lcom/gpc/sdk/jarvis/utils/log/interceptor/JLogInterceptor;->onIntercept(Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;)V

    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/jarvis/utils/log/adapter/JBaseLogAdapter;->logformat:Lcom/gpc/sdk/jarvis/utils/log/format/JLogFormat;

    invoke-interface {v0, p1}, Lcom/gpc/sdk/jarvis/utils/log/format/JLogFormat;->toFormatMessage(Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getLogformat()Lcom/gpc/sdk/jarvis/utils/log/format/JLogFormat;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/gpc/sdk/jarvis/utils/log/adapter/JBaseLogAdapter;->logformat:Lcom/gpc/sdk/jarvis/utils/log/format/JLogFormat;

    return-object v0
.end method

.method protected final isRecord(Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;)Z
    .locals 1

    const-string v0, "logEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/gpc/sdk/jarvis/utils/log/adapter/JBaseLogAdapter;->filter:Lcom/gpc/sdk/jarvis/utils/log/filter/JLogFilter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/gpc/sdk/jarvis/utils/log/filter/JLogFilter;->onValid(Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public log(Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;)V
    .locals 1

    const-string v0, "logEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/jarvis/utils/log/adapter/JBaseLogAdapter;->isRecord(Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 40
    :cond_0
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/jarvis/utils/log/adapter/JBaseLogAdapter;->logAfterFilter(Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;)V

    return-void
.end method

.method public abstract logAfterFilter(Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;)V
.end method

.method public final setFilter(Lcom/gpc/sdk/jarvis/utils/log/filter/JLogFilter;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/gpc/sdk/jarvis/utils/log/adapter/JBaseLogAdapter;->filter:Lcom/gpc/sdk/jarvis/utils/log/filter/JLogFilter;

    return-void
.end method
