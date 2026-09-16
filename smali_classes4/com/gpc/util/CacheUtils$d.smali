.class public Lcom/gpc/util/CacheUtils$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/util/SDKTask$SDKTaskResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/util/CacheUtils;->clearSpecifiedCacheAync(Ljava/lang/String;Lcom/gpc/util/CacheUtils$ClearCacheListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/util/SDKTask$SDKTaskResultListener<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/os/Handler;

.field public final synthetic b:Lcom/gpc/util/CacheUtils$ClearCacheListener;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/gpc/util/CacheUtils$ClearCacheListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/util/CacheUtils$d;->a:Landroid/os/Handler;

    iput-object p2, p0, Lcom/gpc/util/CacheUtils$d;->b:Lcom/gpc/util/CacheUtils$ClearCacheListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/gpc/sdk/error/GPCException;Ljava/lang/Boolean;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/gpc/util/CacheUtils$d;->a:Landroid/os/Handler;

    new-instance v1, Lcom/gpc/util/CacheUtils$d$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/gpc/util/CacheUtils$d$a;-><init>(Lcom/gpc/util/CacheUtils$d;Lcom/gpc/sdk/error/GPCException;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic onResult(Lcom/gpc/sdk/error/GPCException;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/gpc/util/CacheUtils$d;->onResult(Lcom/gpc/sdk/error/GPCException;Ljava/lang/Boolean;)V

    return-void
.end method
