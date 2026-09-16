.class public Lcom/gpc/sdk/account/GPCLogin$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/account/GPCLogin;->checkDeviceHasBind(Lcom/gpc/sdk/account/GPCLogin$GPCCheckAccountBindStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/account/GPCLogin$GPCCheckAccountBindStateListener;

.field public final synthetic b:Lcom/gpc/sdk/account/GPCLogin;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/account/GPCLogin;Lcom/gpc/sdk/account/GPCLogin$GPCCheckAccountBindStateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/account/GPCLogin$g;->b:Lcom/gpc/sdk/account/GPCLogin;

    iput-object p2, p0, Lcom/gpc/sdk/account/GPCLogin$g;->a:Lcom/gpc/sdk/account/GPCLogin$GPCCheckAccountBindStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$ResponseExtraData;)V
    .locals 9

    const-string p3, ""

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(binding/guest)rawResponse:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCLogin"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/account/GPCLogin$g;->a:Lcom/gpc/sdk/account/GPCLogin$GPCCheckAccountBindStateListener;

    if-nez v0, :cond_0

    .line 3
    const-string p1, "unset CheckAccountBindStateListener!"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 7
    iget-object p2, p0, Lcom/gpc/sdk/account/GPCLogin$g;->a:Lcom/gpc/sdk/account/GPCLogin$GPCCheckAccountBindStateListener;

    sget-object p3, Lcom/gpc/sdk/error/GPCErrorCodeMaps;->CHECK_DEVICE_BIND_STATE_CODE_MAP:Ljava/util/Map;

    .line 8
    const-string v0, "110601"

    invoke-static {p1, p3, v0}, Lcom/gpc/sdk/error/GPCException;->createException(Lcom/gpc/sdk/error/GPCException;Ljava/util/Map;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 9
    invoke-interface {p2, p1, v2, v3, v3}, Lcom/gpc/sdk/account/GPCLogin$GPCCheckAccountBindStateListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;ZZ)V

    return-void

    .line 17
    :cond_1
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 18
    const-string p2, "error"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "code"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_3

    .line 20
    const-string p2, "data"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "user_id"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    .line 21
    iget-object v0, p0, Lcom/gpc/sdk/account/GPCLogin$g;->a:Lcom/gpc/sdk/account/GPCLogin$GPCCheckAccountBindStateListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    cmp-long v8, p1, v6

    if-eqz v8, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, v4, v5, p1, v3}, Lcom/gpc/sdk/account/GPCLogin$GPCCheckAccountBindStateListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;ZZ)V

    return-void

    :cond_3
    const/16 p1, 0x393

    if-ne p2, p1, :cond_4

    .line 24
    const-string p1, "GUEST_ID illegality!"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->deviceIdModule()Lcom/gpc/sdk/utils/modules/DeviceIdModule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/utils/modules/DeviceIdModule;->resetGuestIdWithUUID()V

    .line 26
    iget-object p1, p0, Lcom/gpc/sdk/account/GPCLogin$g;->b:Lcom/gpc/sdk/account/GPCLogin;

    iget-object p2, p0, Lcom/gpc/sdk/account/GPCLogin$g;->a:Lcom/gpc/sdk/account/GPCLogin$GPCCheckAccountBindStateListener;

    invoke-virtual {p1, p2}, Lcom/gpc/sdk/account/GPCLogin;->checkDeviceHasBind(Lcom/gpc/sdk/account/GPCLogin$GPCCheckAccountBindStateListener;)V

    return-void

    :cond_4
    const/16 p1, 0x394

    if-ne p2, p1, :cond_5

    .line 29
    const-string p1, "UDID illegality!"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->deviceIdModule()Lcom/gpc/sdk/utils/modules/DeviceIdModule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/utils/modules/DeviceIdModule;->resetDeviceRegisterIdWithUUID()V

    .line 31
    iget-object p1, p0, Lcom/gpc/sdk/account/GPCLogin$g;->b:Lcom/gpc/sdk/account/GPCLogin;

    iget-object p2, p0, Lcom/gpc/sdk/account/GPCLogin$g;->a:Lcom/gpc/sdk/account/GPCLogin$GPCCheckAccountBindStateListener;

    invoke-virtual {p1, p2}, Lcom/gpc/sdk/account/GPCLogin;->checkDeviceHasBind(Lcom/gpc/sdk/account/GPCLogin$GPCCheckAccountBindStateListener;)V

    return-void

    .line 33
    :cond_5
    iget-object p1, p0, Lcom/gpc/sdk/account/GPCLogin$g;->a:Lcom/gpc/sdk/account/GPCLogin$GPCCheckAccountBindStateListener;

    const-string v0, "110604"

    const-string v4, "20"

    .line 34
    invoke-static {v0, v4}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 35
    invoke-static {p2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    .line 36
    invoke-interface {p1, p2, v2, v3, v3}, Lcom/gpc/sdk/account/GPCLogin$GPCCheckAccountBindStateListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 42
    invoke-static {v1, p3, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    iget-object p1, p0, Lcom/gpc/sdk/account/GPCLogin$g;->a:Lcom/gpc/sdk/account/GPCLogin$GPCCheckAccountBindStateListener;

    .line 44
    const-string p2, "110605"

    const-string p3, "10"

    invoke-static {p2, p3}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    .line 46
    const-string p3, "5001"

    invoke-static {p3}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    .line 47
    invoke-interface {p1, p2, v2, v3, v3}, Lcom/gpc/sdk/account/GPCLogin$GPCCheckAccountBindStateListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;ZZ)V

    return-void
.end method
