.class public final Lcom/gpc/util/log/adapter/GPCQALogAdapter$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/util/log/adapter/GPCQALogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/util/log/adapter/GPCQALogAdapter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final setGPCLogListener(Lcom/gpc/util/log/adapter/GPCQALogAdapter$GPCLogListener;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/util/log/adapter/GPCQALogAdapter;->Companion:Lcom/gpc/util/log/adapter/GPCQALogAdapter$Companion;

    invoke-static {p1}, Lcom/gpc/util/log/adapter/GPCQALogAdapter;->access$setLogListener$cp(Lcom/gpc/util/log/adapter/GPCQALogAdapter$GPCLogListener;)V

    return-void
.end method
