.class public Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/account/GPCLogin$GPCCheckAccountBindStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene$a;->onLoginGPCPassportResult(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/account/passport/bean/GPCPassportTokenResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/account/passport/bean/GPCPassportTokenResult;

.field public final synthetic b:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene$a;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene$a;Lcom/gpc/sdk/account/passport/bean/GPCPassportTokenResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene$a$a;->b:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene$a;

    iput-object p2, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene$a$a;->a:Lcom/gpc/sdk/account/passport/bean/GPCPassportTokenResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;ZZ)V
    .locals 2

    .line 1
    new-instance p4, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginResult;

    invoke-direct {p4}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginResult;-><init>()V

    .line 2
    invoke-virtual {p4, p2}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginResult;->setUserId(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p4, p3}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginResult;->setHasBound(Z)V

    .line 4
    iget-object p2, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene$a$a;->a:Lcom/gpc/sdk/account/passport/bean/GPCPassportTokenResult;

    invoke-virtual {p2}, Lcom/gpc/sdk/account/passport/bean/GPCPassportTokenResult;->isAccountNewlyCreated()Z

    move-result p2

    invoke-virtual {p4, p2}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginResult;->setAccountNewlyCreated(Z)V

    .line 5
    new-instance p2, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;

    iget-object p3, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene$a$a;->a:Lcom/gpc/sdk/account/passport/bean/GPCPassportTokenResult;

    invoke-virtual {p3}, Lcom/gpc/sdk/account/passport/bean/GPCPassportTokenResult;->getToken()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene$a$a;->b:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene$a;

    iget-object v0, v0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene$a;->b:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene;

    invoke-static {v0}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene;->a(Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene;)Lcom/gpc/sdk/account/GPCLogin;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene$a$a;->a:Lcom/gpc/sdk/account/passport/bean/GPCPassportTokenResult;

    invoke-virtual {v1}, Lcom/gpc/sdk/account/passport/bean/GPCPassportTokenResult;->isAccountNewlyCreated()Z

    move-result v1

    invoke-direct {p2, p3, v0, v1}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;-><init>(Ljava/lang/String;Lcom/gpc/sdk/account/GPCLogin;Z)V

    .line 6
    invoke-virtual {p4, p2}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginResult;->setContext(Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;)V

    .line 7
    iget-object p2, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene$a$a;->b:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene$a;

    iget-object p2, p2, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene$a;->a:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene$GPCPassportLoginCheckListener;

    invoke-interface {p2, p1, p4}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene$GPCPassportLoginCheckListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginResult;)V

    return-void
.end method
