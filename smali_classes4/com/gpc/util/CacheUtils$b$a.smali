.class public Lcom/gpc/util/CacheUtils$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/util/CacheUtils$b;->onResult(Lcom/gpc/sdk/error/GPCException;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/error/GPCException;

.field public final synthetic b:Ljava/lang/Boolean;

.field public final synthetic c:Lcom/gpc/util/CacheUtils$b;


# direct methods
.method public constructor <init>(Lcom/gpc/util/CacheUtils$b;Lcom/gpc/sdk/error/GPCException;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/util/CacheUtils$b$a;->c:Lcom/gpc/util/CacheUtils$b;

    iput-object p2, p0, Lcom/gpc/util/CacheUtils$b$a;->a:Lcom/gpc/sdk/error/GPCException;

    iput-object p3, p0, Lcom/gpc/util/CacheUtils$b$a;->b:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/util/CacheUtils$b$a;->c:Lcom/gpc/util/CacheUtils$b;

    iget-object v0, v0, Lcom/gpc/util/CacheUtils$b;->b:Lcom/gpc/util/CacheUtils$WriteCacheListener;

    iget-object v1, p0, Lcom/gpc/util/CacheUtils$b$a;->a:Lcom/gpc/sdk/error/GPCException;

    iget-object v2, p0, Lcom/gpc/util/CacheUtils$b$a;->b:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/gpc/util/CacheUtils$WriteCacheListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Z)V

    return-void
.end method
