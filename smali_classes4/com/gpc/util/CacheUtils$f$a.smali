.class public Lcom/gpc/util/CacheUtils$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/util/CacheUtils$f;->onResult(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/error/GPCException;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/gpc/util/CacheUtils$f;


# direct methods
.method public constructor <init>(Lcom/gpc/util/CacheUtils$f;Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/util/CacheUtils$f$a;->c:Lcom/gpc/util/CacheUtils$f;

    iput-object p2, p0, Lcom/gpc/util/CacheUtils$f$a;->a:Lcom/gpc/sdk/error/GPCException;

    iput-object p3, p0, Lcom/gpc/util/CacheUtils$f$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/util/CacheUtils$f$a;->c:Lcom/gpc/util/CacheUtils$f;

    iget-object v0, v0, Lcom/gpc/util/CacheUtils$f;->b:Lcom/gpc/util/CacheUtils$ReadCacheListener;

    iget-object v1, p0, Lcom/gpc/util/CacheUtils$f$a;->a:Lcom/gpc/sdk/error/GPCException;

    iget-object v2, p0, Lcom/gpc/util/CacheUtils$f$a;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/gpc/util/CacheUtils$ReadCacheListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V

    return-void
.end method
