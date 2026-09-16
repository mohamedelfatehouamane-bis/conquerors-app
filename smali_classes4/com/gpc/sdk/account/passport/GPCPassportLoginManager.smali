.class public Lcom/gpc/sdk/account/passport/GPCPassportLoginManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUTH_FAILED_CODE:I = 0x3ea

.field public static final CANCEL_CODE:I = 0x3e9

.field public static final KEY_EXCEPTION_CODE:Ljava/lang/String; = "KEY_EXCEPTION_CODE"

.field public static final KEY_IS_NEW_USER:Ljava/lang/String; = "GPC_PASSPORT_IS_NEW_USER"

.field public static final KEY_TOKEN:Ljava/lang/String; = "PASSPORT_TOKEN"

.field public static final REQUEST_CODE_BIND:I = 0x4a3b

.field public static final REQUEST_CODE_LOGIN:I = 0x4a3a

.field public static final RESULT_CODE_CANCEL:I = 0x4203

.field public static final RESULT_CODE_FAILED:I = 0x4202

.field public static final RESULT_CODE_SUCEESS:I = 0x4201

.field public static final VERSION:I = 0x1

.field public static final e:Ljava/lang/String; = "PassportLoginManager"


# instance fields
.field public a:Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;

.field public b:Lcom/gpc/sdk/account/passport/listener/GPCPassportLoginManagerRequestTokenListener;

.field public c:I

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;->GPCPassportLoginBehaviorBrowser:Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;

    iput-object v0, p0, Lcom/gpc/sdk/account/passport/GPCPassportLoginManager;->a:Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;

    .line 5
    const-string v0, "#ff222222"

    iput-object v0, p0, Lcom/gpc/sdk/account/passport/GPCPassportLoginManager;->d:Ljava/lang/String;

    return-void
.end method

.method public static parseIntSafety(Ljava/lang/String;)I
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 3
    const-string v0, "PassportLoginManager"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public login(ILandroid/app/Activity;Lcom/gpc/sdk/account/passport/listener/GPCPassportLoginManagerRequestTokenListener;)V
    .locals 4

    .line 1
    iput-object p3, p0, Lcom/gpc/sdk/account/passport/GPCPassportLoginManager;->b:Lcom/gpc/sdk/account/passport/listener/GPCPassportLoginManagerRequestTokenListener;

    .line 2
    iput p1, p0, Lcom/gpc/sdk/account/passport/GPCPassportLoginManager;->c:I

    .line 3
    sget-object p3, Lcom/gpc/sdk/account/passport/bean/GPCScenario;->PassportScenarioLogin:Lcom/gpc/sdk/account/passport/bean/GPCScenario;

    const/16 v0, 0x4a3a

    const-string v1, "PassportLoginManager"

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x4a3b

    if-ne v0, p1, :cond_1

    .line 7
    sget-object p3, Lcom/gpc/sdk/account/passport/bean/GPCScenario;->PassportScenarioBinding:Lcom/gpc/sdk/account/passport/bean/GPCScenario;

    goto :goto_0

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "unknown requestCode:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :goto_0
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->inComplianceReview()Z

    move-result v0

    .line 12
    iget-object v2, p0, Lcom/gpc/sdk/account/passport/GPCPassportLoginManager;->a:Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;

    sget-object v3, Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;->GPCPassportLoginBehaviorBrowser:Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;

    if-ne v2, v3, :cond_2

    .line 13
    new-instance v1, Lcom/gpc/sdk/account/passport/view/GPCPassportParamsDefaultProxy;

    invoke-virtual {p3}, Lcom/gpc/sdk/account/passport/bean/GPCScenario;->getScenario()I

    move-result p3

    iget-object v2, p0, Lcom/gpc/sdk/account/passport/GPCPassportLoginManager;->d:Ljava/lang/String;

    invoke-direct {v1, p3, v0, v2}, Lcom/gpc/sdk/account/passport/view/GPCPassportParamsDefaultProxy;-><init>(IZLjava/lang/String;)V

    .line 15
    invoke-static {p2, p1, v1}, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;->startActivityForResult(Landroid/app/Activity;ILcom/gpc/sdk/account/passport/view/IGPCPassportParamsProxy;)V

    return-void

    .line 16
    :cond_2
    sget-object p1, Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;->GPCPassportLoginBehaviorNative:Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;

    if-ne v2, p1, :cond_3

    return-void

    .line 19
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "unknow behavior:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/gpc/sdk/account/passport/GPCPassportLoginManager;->a:Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestCode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PassportLoginManager"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_b

    .line 2
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 5
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    .line 6
    iget v0, p0, Lcom/gpc/sdk/account/passport/GPCPassportLoginManager;->c:I

    if-eq p1, v0, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 p1, 0x4201

    const/4 v0, 0x0

    if-ne p1, p2, :cond_2

    .line 10
    const-string p1, "PASSPORT_TOKEN"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    const-string p2, "GPC_PASSPORT_IS_NEW_USER"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 12
    new-instance p3, Lcom/gpc/sdk/account/passport/bean/GPCPassportTokenResult;

    invoke-direct {p3}, Lcom/gpc/sdk/account/passport/bean/GPCPassportTokenResult;-><init>()V

    .line 13
    invoke-virtual {p3, p1}, Lcom/gpc/sdk/account/passport/bean/GPCPassportTokenResult;->setToken(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p3, p2}, Lcom/gpc/sdk/account/passport/bean/GPCPassportTokenResult;->setAccountNewlyCreated(Z)V

    .line 15
    iget-object p1, p0, Lcom/gpc/sdk/account/passport/GPCPassportLoginManager;->b:Lcom/gpc/sdk/account/passport/listener/GPCPassportLoginManagerRequestTokenListener;

    if-eqz p1, :cond_a

    .line 16
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Lcom/gpc/sdk/account/passport/listener/GPCPassportLoginManagerRequestTokenListener;->onLoginGPCPassportResult(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/account/passport/bean/GPCPassportTokenResult;)V

    goto/16 :goto_0

    :cond_2
    const/16 p1, 0x4202

    const-string v1, "114103"

    const-string v2, "114101"

    if-ne p1, p2, :cond_8

    .line 19
    const-string p1, "KEY_EXCEPTION_CODE"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-static {p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    .line 21
    invoke-static {p1}, Lcom/gpc/sdk/account/passport/GPCPassportLoginManager;->parseIntSafety(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3

    .line 23
    iget-object p1, p0, Lcom/gpc/sdk/account/passport/GPCPassportLoginManager;->b:Lcom/gpc/sdk/account/passport/listener/GPCPassportLoginManagerRequestTokenListener;

    if-eqz p1, :cond_b

    .line 24
    invoke-static {v2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Lcom/gpc/sdk/account/passport/listener/GPCPassportLoginManagerRequestTokenListener;->onLoginGPCPassportResult(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/account/passport/bean/GPCPassportTokenResult;)V

    return-void

    :cond_3
    const/16 p3, 0x384

    const/16 v2, 0x3e8

    if-ge p3, p1, :cond_4

    if-ge p1, v2, :cond_4

    .line 30
    iget-object p1, p0, Lcom/gpc/sdk/account/passport/GPCPassportLoginManager;->b:Lcom/gpc/sdk/account/passport/listener/GPCPassportLoginManagerRequestTokenListener;

    if-eqz p1, :cond_a

    .line 31
    const-string p3, "114102"

    invoke-static {p3}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Lcom/gpc/sdk/account/passport/listener/GPCPassportLoginManagerRequestTokenListener;->onLoginGPCPassportResult(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/account/passport/bean/GPCPassportTokenResult;)V

    goto :goto_0

    :cond_4
    const-string p3, "114105"

    if-le p1, v2, :cond_7

    const/16 v2, 0x3e9

    if-ne p1, v2, :cond_5

    .line 37
    iget-object p1, p0, Lcom/gpc/sdk/account/passport/GPCPassportLoginManager;->b:Lcom/gpc/sdk/account/passport/listener/GPCPassportLoginManagerRequestTokenListener;

    if-eqz p1, :cond_b

    .line 38
    invoke-static {v1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Lcom/gpc/sdk/account/passport/listener/GPCPassportLoginManagerRequestTokenListener;->onLoginGPCPassportResult(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/account/passport/bean/GPCPassportTokenResult;)V

    return-void

    :cond_5
    const/16 v1, 0x3ea

    if-ne p1, v1, :cond_6

    .line 42
    const-string p3, "114104"

    .line 44
    :cond_6
    iget-object p1, p0, Lcom/gpc/sdk/account/passport/GPCPassportLoginManager;->b:Lcom/gpc/sdk/account/passport/listener/GPCPassportLoginManagerRequestTokenListener;

    if-eqz p1, :cond_a

    .line 45
    invoke-static {p3}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Lcom/gpc/sdk/account/passport/listener/GPCPassportLoginManagerRequestTokenListener;->onLoginGPCPassportResult(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/account/passport/bean/GPCPassportTokenResult;)V

    goto :goto_0

    .line 48
    :cond_7
    iget-object p1, p0, Lcom/gpc/sdk/account/passport/GPCPassportLoginManager;->b:Lcom/gpc/sdk/account/passport/listener/GPCPassportLoginManagerRequestTokenListener;

    if-eqz p1, :cond_a

    .line 49
    invoke-static {p3}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Lcom/gpc/sdk/account/passport/listener/GPCPassportLoginManagerRequestTokenListener;->onLoginGPCPassportResult(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/account/passport/bean/GPCPassportTokenResult;)V

    goto :goto_0

    :cond_8
    const/16 p1, 0x4203

    if-ne p1, p2, :cond_9

    .line 54
    iget-object p1, p0, Lcom/gpc/sdk/account/passport/GPCPassportLoginManager;->b:Lcom/gpc/sdk/account/passport/listener/GPCPassportLoginManagerRequestTokenListener;

    if-eqz p1, :cond_a

    .line 55
    invoke-static {v1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-static {v1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Lcom/gpc/sdk/account/passport/listener/GPCPassportLoginManagerRequestTokenListener;->onLoginGPCPassportResult(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/account/passport/bean/GPCPassportTokenResult;)V

    goto :goto_0

    .line 58
    :cond_9
    iget-object p1, p0, Lcom/gpc/sdk/account/passport/GPCPassportLoginManager;->b:Lcom/gpc/sdk/account/passport/listener/GPCPassportLoginManagerRequestTokenListener;

    if-eqz p1, :cond_a

    .line 59
    invoke-static {v2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-static {v2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Lcom/gpc/sdk/account/passport/listener/GPCPassportLoginManagerRequestTokenListener;->onLoginGPCPassportResult(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/account/passport/bean/GPCPassportTokenResult;)V

    .line 62
    :cond_a
    :goto_0
    iput-object v0, p0, Lcom/gpc/sdk/account/passport/GPCPassportLoginManager;->b:Lcom/gpc/sdk/account/passport/listener/GPCPassportLoginManagerRequestTokenListener;

    :cond_b
    :goto_1
    return-void
.end method

.method public setBehavior(Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/account/passport/GPCPassportLoginManager;->a:Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;

    return-void
.end method

.method public setHeaderBackground(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/account/passport/GPCPassportLoginManager;->d:Ljava/lang/String;

    return-void
.end method
