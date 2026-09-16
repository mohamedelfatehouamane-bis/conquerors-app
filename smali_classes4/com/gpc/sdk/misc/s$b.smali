.class public Lcom/gpc/sdk/misc/s$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/misc/s;->getCurrentRegion(IILcom/gpc/sdk/risk/service/OnCurrentRegionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/risk/service/OnCurrentRegionListener;

.field public final synthetic b:Lcom/gpc/sdk/misc/s;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/misc/s;Lcom/gpc/sdk/risk/service/OnCurrentRegionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/misc/s$b;->b:Lcom/gpc/sdk/misc/s;

    iput-object p2, p0, Lcom/gpc/sdk/misc/s$b;->a:Lcom/gpc/sdk/risk/service/OnCurrentRegionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeneralRequestFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/gpc/sdk/misc/s$b;->a:Lcom/gpc/sdk/risk/service/OnCurrentRegionListener;

    sget-object p3, Lcom/gpc/sdk/misc/s;->d:Ljava/util/Map;

    const-string v1, "350104"

    invoke-static {p1, p3, v1}, Lcom/gpc/sdk/error/GPCException;->createException(Lcom/gpc/sdk/error/GPCException;Ljava/util/Map;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Lcom/gpc/sdk/risk/service/OnCurrentRegionListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8
    const-string p2, "region"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/gpc/sdk/misc/s$b;->a:Lcom/gpc/sdk/risk/service/OnCurrentRegionListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Lcom/gpc/sdk/risk/service/OnCurrentRegionListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 11
    const-string p2, "RiskServiceImpl"

    const-string p3, ""

    invoke-static {p2, p3, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    iget-object p1, p0, Lcom/gpc/sdk/misc/s$b;->a:Lcom/gpc/sdk/risk/service/OnCurrentRegionListener;

    const-string p2, "350105"

    invoke-static {p2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Lcom/gpc/sdk/risk/service/OnCurrentRegionListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V

    return-void
.end method
