.class public final Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController$terminate$1$onComplete$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/agreementsigning/listener/GPCTerminateRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController$terminate$1;->onComplete(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;

.field public final synthetic b:Lcom/gpc/sdk/agreementsigning/listener/GPCTerminateRequestListener;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;Lcom/gpc/sdk/agreementsigning/listener/GPCTerminateRequestListener;)V
    .locals 0

    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController$terminate$1$onComplete$1;->a:Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;

    iput-object p2, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController$terminate$1$onComplete$1;->b:Lcom/gpc/sdk/agreementsigning/listener/GPCTerminateRequestListener;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/gpc/sdk/error/GPCException;)V
    .locals 4

    const-string v0, "ex"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isNone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController$terminate$1$onComplete$1;->a:Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;

    invoke-static {v0}, Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;->access$getStorage$p(Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;)Lcom/gpc/util/LocalStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController$terminate$1$onComplete$1;->a:Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;

    invoke-static {v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;->access$getProxy$p(Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;)Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;

    move-result-object v1

    invoke-static {v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->lastSigningTimestampKey(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/gpc/util/LocalStorage;->writeLong(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController$terminate$1$onComplete$1;->b:Lcom/gpc/sdk/agreementsigning/listener/GPCTerminateRequestListener;

    invoke-interface {v0, p1}, Lcom/gpc/sdk/agreementsigning/listener/GPCTerminateRequestListener;->onResponse(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method
