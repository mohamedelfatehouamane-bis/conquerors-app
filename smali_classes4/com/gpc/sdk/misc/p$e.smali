.class public Lcom/gpc/sdk/misc/p$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/util/CacheUtils$ClearCacheListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/misc/p;->a(Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;

.field public final synthetic b:Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;

.field public final synthetic c:Lcom/gpc/sdk/misc/p;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/misc/p;Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/misc/p$e;->c:Lcom/gpc/sdk/misc/p;

    iput-object p2, p0, Lcom/gpc/sdk/misc/p$e;->a:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;

    iput-object p3, p0, Lcom/gpc/sdk/misc/p$e;->b:Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/error/GPCException;Z)V
    .locals 2

    .line 1
    new-instance p1, Lcom/gpc/sdk/misc/q;

    invoke-direct {p1}, Lcom/gpc/sdk/misc/q;-><init>()V

    .line 2
    iget-object p2, p0, Lcom/gpc/sdk/misc/p$e;->a:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;

    invoke-virtual {p1, p2}, Lcom/gpc/sdk/misc/q;->a(Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;)V

    .line 3
    new-instance p2, Lcom/gpc/util/MD5;

    invoke-direct {p2}, Lcom/gpc/util/MD5;-><init>()V

    iget-object v0, p0, Lcom/gpc/sdk/misc/p$e;->b:Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;

    invoke-interface {v0}, Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;->getAccessKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/gpc/util/MD5;->getMD5ofStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gpc/sdk/misc/q;->c(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/gpc/sdk/misc/q;->a(J)V

    .line 5
    iget-object p2, p0, Lcom/gpc/sdk/misc/p$e;->c:Lcom/gpc/sdk/misc/p;

    iget-object v0, p0, Lcom/gpc/sdk/misc/p$e;->b:Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;

    invoke-interface {v0}, Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/misc/p$e;->b:Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;

    invoke-interface {v1}, Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;->getGameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/gpc/sdk/misc/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-virtual {p1}, Lcom/gpc/sdk/misc/q;->d()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/gpc/sdk/misc/p$e$a;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/misc/p$e$a;-><init>(Lcom/gpc/sdk/misc/p$e;)V

    invoke-static {p2, p1, v0}, Lcom/gpc/util/CacheUtils;->writeCacheAync(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/util/CacheUtils$WriteCacheListener;)V

    return-void
.end method
