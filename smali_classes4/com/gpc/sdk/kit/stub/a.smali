.class public abstract Lcom/gpc/sdk/kit/stub/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/kit/stub/Stub;


# instance fields
.field public a:Lcom/gpc/sdk/kit/stub/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Lcom/gpc/sdk/kit/stub/d;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/kit/stub/a;->a:Lcom/gpc/sdk/kit/stub/d;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/gpc/sdk/kit/stub/a;->a:Lcom/gpc/sdk/kit/stub/d;

    return-void
.end method
