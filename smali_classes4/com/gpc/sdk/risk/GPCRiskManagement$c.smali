.class public Lcom/gpc/sdk/risk/GPCRiskManagement$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/risk/service/OnCurrentRegionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/risk/GPCRiskManagement;->getCachedRegion(Landroid/content/Context;Lcom/gpc/sdk/risk/listener/GPCGetCachedRegionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/risk/listener/GPCGetCachedRegionListener;

.field public final synthetic b:Lcom/gpc/sdk/risk/GPCRiskManagement;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/risk/GPCRiskManagement;Lcom/gpc/sdk/risk/listener/GPCGetCachedRegionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/risk/GPCRiskManagement$c;->b:Lcom/gpc/sdk/risk/GPCRiskManagement;

    iput-object p2, p0, Lcom/gpc/sdk/risk/GPCRiskManagement$c;->a:Lcom/gpc/sdk/risk/listener/GPCGetCachedRegionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v0

    const-string v1, "region_current"

    const-string v2, "GPCRiskManagement"

    if-eqz v0, :cond_0

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "[getCachedRegion] request failed, use default region:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/gpc/sdk/risk/GPCRiskManagement;->DEFAULT_REGION_FOR_CHECK_ERROR:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/gpc/sdk/risk/GPCRiskManagement$c;->b:Lcom/gpc/sdk/risk/GPCRiskManagement;

    invoke-static {p2}, Lcom/gpc/sdk/risk/GPCRiskManagement;->a(Lcom/gpc/sdk/risk/GPCRiskManagement;)Lcom/gpc/util/LocalStorage;

    move-result-object p2

    sget-object v0, Lcom/gpc/sdk/risk/GPCRiskManagement;->DEFAULT_REGION_FOR_CHECK_ERROR:Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Lcom/gpc/util/LocalStorage;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/gpc/sdk/risk/GPCRiskManagement$c;->a:Lcom/gpc/sdk/risk/listener/GPCGetCachedRegionListener;

    sget-object v0, Lcom/gpc/sdk/risk/GPCRiskManagement;->DEFAULT_REGION_FOR_CHECK_ERROR:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Lcom/gpc/sdk/risk/listener/GPCGetCachedRegionListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[getCachedRegion] request to use latest region and update cache:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/gpc/sdk/risk/GPCRiskManagement$c;->b:Lcom/gpc/sdk/risk/GPCRiskManagement;

    invoke-static {p1}, Lcom/gpc/sdk/risk/GPCRiskManagement;->a(Lcom/gpc/sdk/risk/GPCRiskManagement;)Lcom/gpc/util/LocalStorage;

    move-result-object p1

    invoke-virtual {p1, v1, p2}, Lcom/gpc/util/LocalStorage;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/gpc/sdk/risk/GPCRiskManagement$c;->a:Lcom/gpc/sdk/risk/listener/GPCGetCachedRegionListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/gpc/sdk/risk/listener/GPCGetCachedRegionListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V

    return-void
.end method
