.class public abstract Lcom/gpc/sdk/payment/service/d$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/payment/service/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "RFListenerWrapper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(I)V
.end method

.method public abstract a(Lcom/gpc/sdk/bean/GPCGeneralResponse;)V
.end method

.method public abstract a(Lorg/json/JSONObject;)V
.end method

.method public onFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$ResponseExtraData;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result p3

    const-string v0, ""

    const-string v1, "RFListenerWrapper"

    if-nez p3, :cond_1

    .line 3
    :try_start_0
    invoke-static {p2}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->generator(Ljava/lang/String;)Lcom/gpc/sdk/bean/GPCGeneralResponse;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    new-instance p2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/gpc/sdk/payment/service/d$d;->a(Lorg/json/JSONObject;)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/service/d$d;->a(Lcom/gpc/sdk/bean/GPCGeneralResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 10
    invoke-static {v1, v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 p1, 0x1389

    .line 11
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/service/d$d;->a(I)V

    goto :goto_1

    .line 17
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getCodeInteger()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 19
    invoke-static {v1, v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 22
    :goto_0
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/service/d$d;->a(I)V

    :goto_1
    return-void
.end method
