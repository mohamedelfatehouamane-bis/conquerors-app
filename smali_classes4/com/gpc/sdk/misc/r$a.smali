.class public Lcom/gpc/sdk/misc/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$HeadersRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/misc/r;->requestState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/realname/service/VerificationStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/realname/service/VerificationStateListener;

.field public final synthetic b:Lcom/gpc/sdk/misc/r;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/misc/r;Lcom/gpc/sdk/realname/service/VerificationStateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/misc/r$a;->b:Lcom/gpc/sdk/misc/r;

    iput-object p2, p0, Lcom/gpc/sdk/misc/r$a;->a:Lcom/gpc/sdk/realname/service/VerificationStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeadersRequestFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/service/network/http/response/HTTPResponseLowerCaseHeaders;Ljava/lang/String;)V
    .locals 11

    const-string p2, "expires_at"

    const-string v0, "duration"

    const-string v1, "today_is_legal_holiday"

    const-string v2, "cache"

    const-string v3, "extra"

    const-string v4, "pi"

    const-string v5, "juveniles_level"

    const-string v6, "is_adult"

    .line 1
    iget-object v7, p0, Lcom/gpc/sdk/misc/r$a;->a:Lcom/gpc/sdk/realname/service/VerificationStateListener;

    if-eqz v7, :cond_f

    .line 2
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    .line 3
    iget-object p2, p0, Lcom/gpc/sdk/misc/r$a;->a:Lcom/gpc/sdk/realname/service/VerificationStateListener;

    iget-object p3, p0, Lcom/gpc/sdk/misc/r$a;->b:Lcom/gpc/sdk/misc/r;

    invoke-virtual {p3, p1}, Lcom/gpc/sdk/misc/r;->a(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {p2, p1, v8}, Lcom/gpc/sdk/realname/service/VerificationStateListener;->onResult(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;)V

    return-void

    .line 8
    :cond_0
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 9
    new-instance p3, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;

    invoke-direct {p3}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;-><init>()V

    .line 10
    const-string v7, "error"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v9, "code"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_e

    .line 13
    const-string v7, "data"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 15
    const-string v7, "state"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const/4 v9, -0x2

    const/4 v10, 0x1

    if-eq v7, v9, :cond_5

    const/4 v9, -0x1

    if-eq v7, v9, :cond_4

    if-eqz v7, :cond_3

    if-eq v7, v10, :cond_2

    const/4 v9, 0x2

    if-eq v7, v9, :cond_1

    .line 38
    sget-object v7, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;->GPCRealNameVerificationUnknown:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    goto :goto_0

    .line 39
    :cond_1
    sget-object v7, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;->GPCRealNameVerificationDenied:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    goto :goto_0

    .line 40
    :cond_2
    sget-object v7, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;->GPCRealNameVerificationAuthorized:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    goto :goto_0

    .line 41
    :cond_3
    sget-object v7, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;->GPCRealNameVerificationSumbitted:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    goto :goto_0

    .line 53
    :cond_4
    sget-object v7, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;->GPCRealNameVerificationUnauthorized:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    goto :goto_0

    .line 56
    :cond_5
    sget-object v7, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;->GPCRealNameVerificationExempted:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    .line 63
    :goto_0
    invoke-virtual {p3, v7}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->setState(Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;)V

    .line 65
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    const/4 v9, 0x0

    if-eqz v7, :cond_7

    .line 66
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_6

    .line 69
    invoke-virtual {p3, v10}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->setMinor(Z)V

    goto :goto_1

    .line 71
    :cond_6
    invoke-virtual {p3, v9}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->setMinor(Z)V

    .line 76
    :cond_7
    :goto_1
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 77
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p3, v5}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->setJuvenilesLevel(I)V

    .line 82
    :cond_8
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 83
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->setPi(Ljava/lang/String;)V

    .line 87
    :cond_9
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 88
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 89
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 90
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_a

    .line 92
    invoke-virtual {p3, v9}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->setHoliday(Z)V

    goto :goto_2

    .line 94
    :cond_a
    invoke-virtual {p3, v10}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->setHoliday(Z)V

    .line 100
    :cond_b
    :goto_2
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 101
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 102
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 103
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 104
    invoke-virtual {p3, v0, v1}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->setDuration(J)V

    .line 107
    :cond_c
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 108
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    .line 109
    invoke-virtual {p3, p1, p2}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->setExpiresAt(J)V

    .line 113
    :cond_d
    iget-object p1, p0, Lcom/gpc/sdk/misc/r$a;->a:Lcom/gpc/sdk/realname/service/VerificationStateListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Lcom/gpc/sdk/realname/service/VerificationStateListener;->onResult(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;)V

    return-void

    .line 115
    :cond_e
    const-string p1, "290101"

    const-string p2, "10"

    invoke-static {p1, p2, v7}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 116
    iget-object p2, p0, Lcom/gpc/sdk/misc/r$a;->a:Lcom/gpc/sdk/realname/service/VerificationStateListener;

    invoke-interface {p2, p1, v8}, Lcom/gpc/sdk/realname/service/VerificationStateListener;->onResult(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 119
    const-string p2, "RealNameVerificationServiceAGImpl"

    const-string p3, ""

    invoke-static {p2, p3, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    const-string p1, "301"

    invoke-static {p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 121
    iget-object p2, p0, Lcom/gpc/sdk/misc/r$a;->a:Lcom/gpc/sdk/realname/service/VerificationStateListener;

    const-string p3, "290104"

    const-string v0, "20"

    invoke-static {p3, v0}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {p2, p1, v8}, Lcom/gpc/sdk/realname/service/VerificationStateListener;->onResult(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;)V

    :cond_f
    return-void
.end method
