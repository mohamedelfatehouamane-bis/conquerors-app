.class public Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/account/GPCLoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;->login(Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext$GPCPassportLoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext$GPCPassportLoginListener;

.field public final synthetic b:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext$GPCPassportLoginListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext$a;->b:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;

    iput-object p2, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext$a;->a:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext$GPCPassportLoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/account/GPCSession;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "gpcLogin.loginWithThirdPartyAccount:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext$a;->b:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;

    invoke-static {v1}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;->a(Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCPassportLoginContext"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext$a;->b:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;

    invoke-static {v0}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;->a(Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/gpc/sdk/account/GPCSession;->setAccountNewlyCreated(Z)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext$a;->a:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext$GPCPassportLoginListener;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0, p1, p2}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext$GPCPassportLoginListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/account/GPCSession;)V

    :cond_1
    return-void
.end method
