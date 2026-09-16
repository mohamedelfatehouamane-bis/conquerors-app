.class public final Lcom/gpc/util/log/adapter/GPCQALogAdapter;
.super Lcom/gpc/sdk/jarvis/utils/log/adapter/JBaseLogAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/util/log/adapter/GPCQALogAdapter$Companion;,
        Lcom/gpc/util/log/adapter/GPCQALogAdapter$GPCLogListener;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/gpc/util/log/adapter/GPCQALogAdapter$Companion;

.field public static final TAG_ACCOUNT:Ljava/lang/String; = "_ACCOUNT_"

.field public static final TAG_FLOW:Ljava/lang/String; = "_Flow_"

.field public static final TAG_HTTP:Ljava/lang/String; = "_HTTP_"

.field public static final TAG_PAY:Ljava/lang/String; = "_PAY_"

.field private static logListener:Lcom/gpc/util/log/adapter/GPCQALogAdapter$GPCLogListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/util/log/adapter/GPCQALogAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/util/log/adapter/GPCQALogAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/util/log/adapter/GPCQALogAdapter;->Companion:Lcom/gpc/util/log/adapter/GPCQALogAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/gpc/sdk/jarvis/utils/log/format/JLogFormat;)V
    .locals 2

    const-string v0, "logformat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 1
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/gpc/sdk/jarvis/utils/log/adapter/JBaseLogAdapter;-><init>(Lcom/gpc/sdk/jarvis/utils/log/format/JLogFormat;Lcom/gpc/sdk/jarvis/utils/log/filter/JLogFilter;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    new-instance p1, Lcom/gpc/util/log/filter/GPCQAFilter;

    invoke-direct {p1}, Lcom/gpc/util/log/filter/GPCQAFilter;-><init>()V

    invoke-virtual {p0, p1}, Lcom/gpc/sdk/jarvis/utils/log/adapter/JBaseLogAdapter;->setFilter(Lcom/gpc/sdk/jarvis/utils/log/filter/JLogFilter;)V

    return-void
.end method

.method public static final synthetic access$setLogListener$cp(Lcom/gpc/util/log/adapter/GPCQALogAdapter$GPCLogListener;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/gpc/util/log/adapter/GPCQALogAdapter;->logListener:Lcom/gpc/util/log/adapter/GPCQALogAdapter$GPCLogListener;

    return-void
.end method


# virtual methods
.method public logAfterFilter(Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;)V
    .locals 2

    const-string v0, "logEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/gpc/util/log/adapter/GPCQALogAdapter;->logListener:Lcom/gpc/util/log/adapter/GPCQALogAdapter$GPCLogListener;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/gpc/sdk/jarvis/utils/log/adapter/JBaseLogAdapter;->getLogMessage(Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/gpc/util/log/adapter/GPCQALogAdapter$GPCLogListener;->onLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
