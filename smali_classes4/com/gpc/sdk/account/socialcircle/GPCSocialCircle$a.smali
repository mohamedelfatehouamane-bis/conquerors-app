.class public Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;->registerFriends(Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;Ljava/util/ArrayList;Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;

.field public final synthetic c:Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleListener;

.field public final synthetic d:Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;Ljava/util/ArrayList;Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle$a;->d:Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;

    iput-object p2, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle$a;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle$a;->b:Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;

    iput-object p4, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle$a;->c:Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeneralRequestFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1

    const-string p2, "10"

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isNone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    const-string p3, "error"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p3, "code"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle$a;->d:Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;

    iget-object p3, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle$a;->a:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle$a;->b:Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;

    invoke-static {p1, p3, v0}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;->a(Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;Ljava/util/ArrayList;Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;)V

    .line 8
    iget-object p1, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle$a;->c:Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p3

    invoke-interface {p1, p3}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleListener;->onRegisteringFinished(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle$a;->c:Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleListener;

    const-string p3, "112001"

    const/16 v0, 0x66

    invoke-static {p3, p2, v0}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p3

    invoke-interface {p1, p3}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleListener;->onRegisteringFinished(Lcom/gpc/sdk/error/GPCException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 13
    :catch_0
    iget-object p1, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle$a;->c:Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleListener;

    const-string p3, "112003"

    const/16 v0, 0x67

    invoke-static {p3, p2, v0}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleListener;->onRegisteringFinished(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 16
    :cond_1
    iget-object p2, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle$a;->c:Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleListener;

    iget-object p3, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle$a;->d:Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;

    invoke-static {p3, p1}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;->a(Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleListener;->onRegisteringFinished(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method
