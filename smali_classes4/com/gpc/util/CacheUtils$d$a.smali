.class public Lcom/gpc/util/CacheUtils$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/util/CacheUtils$d;->onResult(Lcom/gpc/sdk/error/GPCException;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/error/GPCException;

.field public final synthetic b:Ljava/lang/Boolean;

.field public final synthetic c:Lcom/gpc/util/CacheUtils$d;


# direct methods
.method public constructor <init>(Lcom/gpc/util/CacheUtils$d;Lcom/gpc/sdk/error/GPCException;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/util/CacheUtils$d$a;->c:Lcom/gpc/util/CacheUtils$d;

    iput-object p2, p0, Lcom/gpc/util/CacheUtils$d$a;->a:Lcom/gpc/sdk/error/GPCException;

    iput-object p3, p0, Lcom/gpc/util/CacheUtils$d$a;->b:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/util/CacheUtils$d$a;->c:Lcom/gpc/util/CacheUtils$d;

    iget-object v0, v0, Lcom/gpc/util/CacheUtils$d;->b:Lcom/gpc/util/CacheUtils$ClearCacheListener;

    iget-object v1, p0, Lcom/gpc/util/CacheUtils$d$a;->a:Lcom/gpc/sdk/error/GPCException;

    iget-object v2, p0, Lcom/gpc/util/CacheUtils$d$a;->b:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/gpc/util/CacheUtils$ClearCacheListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Z)V

    return-void
.end method
