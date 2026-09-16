.class public Lcom/gpc/sdk/misc/k$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/misc/k;->markMessage(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/push/service/MessageMarkingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/push/service/MessageMarkingListener;

.field public final synthetic b:Lcom/gpc/sdk/misc/k;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/misc/k;Lcom/gpc/sdk/push/service/MessageMarkingListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/misc/k$c;->b:Lcom/gpc/sdk/misc/k;

    iput-object p2, p0, Lcom/gpc/sdk/misc/k$c;->a:Lcom/gpc/sdk/push/service/MessageMarkingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeneralRequestFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1

    const-string p1, "responseString: "

    .line 1
    :try_start_0
    const-string p2, "DeviceServiceAGImpl"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p3}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->generator(Ljava/lang/String;)Lcom/gpc/sdk/bean/GPCGeneralResponse;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p1, p0, Lcom/gpc/sdk/misc/k$c;->a:Lcom/gpc/sdk/push/service/MessageMarkingListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/gpc/sdk/push/service/MessageMarkingListener;->onMessageMarkingFinished(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/gpc/sdk/misc/k$c;->a:Lcom/gpc/sdk/push/service/MessageMarkingListener;

    const-string p3, "211203"

    const-string v0, "10"

    .line 9
    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->getError()Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;->getCode()I

    move-result p1

    .line 10
    invoke-static {p3, v0, p1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 11
    invoke-interface {p2, p1}, Lcom/gpc/sdk/push/service/MessageMarkingListener;->onMessageMarkingFinished(Lcom/gpc/sdk/error/GPCException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 17
    const-string p2, ""

    invoke-static {p2, p2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    iget-object p1, p0, Lcom/gpc/sdk/misc/k$c;->a:Lcom/gpc/sdk/push/service/MessageMarkingListener;

    .line 19
    const-string p2, "20"

    const/16 p3, 0x12d

    const-string v0, "211202"

    invoke-static {v0, p2, p3}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    .line 20
    invoke-interface {p1, p2}, Lcom/gpc/sdk/push/service/MessageMarkingListener;->onMessageMarkingFinished(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method
