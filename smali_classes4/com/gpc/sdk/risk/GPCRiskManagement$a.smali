.class public Lcom/gpc/sdk/risk/GPCRiskManagement$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/risk/service/OnCurrentRegionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/risk/GPCRiskManagement;->checkIfInRegion(Lcom/gpc/sdk/risk/bean/GPCCountryRegion;Lcom/gpc/sdk/risk/listener/GPCRegionCheckingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/risk/listener/GPCRegionCheckingListener;

.field public final synthetic b:Lcom/gpc/sdk/risk/bean/GPCCountryRegion;

.field public final synthetic c:Lcom/gpc/sdk/risk/GPCRiskManagement;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/risk/GPCRiskManagement;Lcom/gpc/sdk/risk/listener/GPCRegionCheckingListener;Lcom/gpc/sdk/risk/bean/GPCCountryRegion;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/risk/GPCRiskManagement$a;->c:Lcom/gpc/sdk/risk/GPCRiskManagement;

    iput-object p2, p0, Lcom/gpc/sdk/risk/GPCRiskManagement$a;->a:Lcom/gpc/sdk/risk/listener/GPCRegionCheckingListener;

    iput-object p3, p0, Lcom/gpc/sdk/risk/GPCRiskManagement$a;->b:Lcom/gpc/sdk/risk/bean/GPCCountryRegion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/gpc/sdk/risk/GPCRiskManagement$a;->a:Lcom/gpc/sdk/risk/listener/GPCRegionCheckingListener;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Lcom/gpc/sdk/risk/listener/GPCRegionCheckingListener;->onComplete(Lcom/gpc/sdk/error/GPCException;ZLjava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/risk/GPCRiskManagement$a;->b:Lcom/gpc/sdk/risk/bean/GPCCountryRegion;

    invoke-virtual {p1}, Lcom/gpc/sdk/risk/bean/GPCCountryRegion;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/risk/GPCRiskManagement$a;->a:Lcom/gpc/sdk/risk/listener/GPCRegionCheckingListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/gpc/sdk/risk/listener/GPCRegionCheckingListener;->onComplete(Lcom/gpc/sdk/error/GPCException;ZLjava/lang/String;)V

    return-void
.end method
