.class public Lcom/gpc/sdk/risk/GPCRiskManagement$b;
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
.field public final synthetic a:Lcom/gpc/sdk/risk/GPCRiskManagement;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/risk/GPCRiskManagement;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/risk/GPCRiskManagement$b;->a:Lcom/gpc/sdk/risk/GPCRiskManagement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isNone()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[getCachedRegion] request to update cached region:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GPCRiskManagement"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/gpc/sdk/risk/GPCRiskManagement$b;->a:Lcom/gpc/sdk/risk/GPCRiskManagement;

    invoke-static {p1}, Lcom/gpc/sdk/risk/GPCRiskManagement;->a(Lcom/gpc/sdk/risk/GPCRiskManagement;)Lcom/gpc/util/LocalStorage;

    move-result-object p1

    const-string v0, "region_current"

    invoke-virtual {p1, v0, p2}, Lcom/gpc/util/LocalStorage;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
