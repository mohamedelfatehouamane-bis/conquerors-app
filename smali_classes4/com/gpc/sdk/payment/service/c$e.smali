.class public abstract Lcom/gpc/sdk/payment/service/c$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/payment/service/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "e"
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

.method public abstract a(ILorg/json/JSONObject;)V
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
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    const-string p2, "error"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "code"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/service/c$e;->a(Lorg/json/JSONObject;)V

    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/gpc/sdk/payment/service/c$e;->a(ILorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 11
    invoke-static {v1, v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 p1, 0x1389

    .line 12
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/service/c$e;->a(I)V

    goto :goto_1

    .line 18
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getCodeInteger()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 20
    invoke-static {v1, v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 23
    :goto_0
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/service/c$e;->a(I)V

    :goto_1
    return-void
.end method
