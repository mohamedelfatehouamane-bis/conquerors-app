.class public Lcom/gpc/sdk/misc/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/misc/c;->restoreAllAgreements(Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAllAgreementsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAllAgreementsListener;

.field public final synthetic b:Lcom/gpc/sdk/misc/c;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/misc/c;Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAllAgreementsListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/misc/c$d;->b:Lcom/gpc/sdk/misc/c;

    iput-object p2, p0, Lcom/gpc/sdk/misc/c$d;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAllAgreementsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    const-string v0, "policies"

    const-string v1, "data"

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gpc/sdk/account/GPCSessionManager;->restoreAsCurrent()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 3
    invoke-virtual {v3}, Lcom/gpc/sdk/account/GPCSession;->isValid()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    iget-object v4, p0, Lcom/gpc/sdk/misc/c$d;->b:Lcom/gpc/sdk/misc/c;

    invoke-static {v4}, Lcom/gpc/sdk/misc/c;->c(Lcom/gpc/sdk/misc/c;)Lcom/gpc/sdk/misc/a;

    move-result-object v4

    invoke-virtual {v3}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/gpc/sdk/misc/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 10
    iget-object v3, p0, Lcom/gpc/sdk/misc/c$d;->b:Lcom/gpc/sdk/misc/c;

    invoke-static {v3}, Lcom/gpc/sdk/misc/c;->c(Lcom/gpc/sdk/misc/c;)Lcom/gpc/sdk/misc/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gpc/sdk/misc/a;->c()Ljava/lang/String;

    move-result-object v3

    .line 12
    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 14
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 16
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 17
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 18
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 19
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->createFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 21
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 26
    :cond_3
    iget-object v0, p0, Lcom/gpc/sdk/misc/c$d;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAllAgreementsListener;

    invoke-interface {v0, v2}, Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAllAgreementsListener;->onSuccess(Ljava/util/List;)V

    return-void

    .line 27
    :cond_4
    :goto_1
    const-string v0, "320802"

    invoke-static {v0}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/gpc/sdk/misc/c$d;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAllAgreementsListener;

    invoke-interface {v1, v0}, Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAllAgreementsListener;->onFailure(Lcom/gpc/sdk/error/GPCException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 51
    const-string v1, "AgreementSigningServiceImplV2"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    iget-object v0, p0, Lcom/gpc/sdk/misc/c$d;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAllAgreementsListener;

    const-string v1, "320801"

    invoke-static {v1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAllAgreementsListener;->onFailure(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method
