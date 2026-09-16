.class public Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene$GPCPassportLoginCheckListener;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String; = "GPCPassportLoginScene"


# instance fields
.field public a:Lcom/gpc/sdk/account/passport/GPCPassportLoginManager;

.field public b:Lcom/gpc/sdk/account/GPCLogin;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/account/GPCLogin;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/gpc/sdk/account/passport/GPCPassportLoginManager;

    invoke-direct {v0}, Lcom/gpc/sdk/account/passport/GPCPassportLoginManager;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene;->a:Lcom/gpc/sdk/account/passport/GPCPassportLoginManager;

    .line 3
    iput-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene;->b:Lcom/gpc/sdk/account/GPCLogin;

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene;)Lcom/gpc/sdk/account/GPCLogin;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene;->b:Lcom/gpc/sdk/account/GPCLogin;

    return-object p0
.end method


# virtual methods
.method public checkCandidate(Landroid/app/Activity;Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene$GPCPassportLoginCheckListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene;->a:Lcom/gpc/sdk/account/passport/GPCPassportLoginManager;

    new-instance v1, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene$a;

    invoke-direct {v1, p0, p2}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene$a;-><init>(Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene;Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene$GPCPassportLoginCheckListener;)V

    const/16 p2, 0x4a3a

    invoke-virtual {v0, p2, p1, v1}, Lcom/gpc/sdk/account/passport/GPCPassportLoginManager;->login(ILandroid/app/Activity;Lcom/gpc/sdk/account/passport/listener/GPCPassportLoginManagerRequestTokenListener;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene;->a:Lcom/gpc/sdk/account/passport/GPCPassportLoginManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gpc/sdk/account/passport/GPCPassportLoginManager;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public setBehavior(Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;)Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene;->a:Lcom/gpc/sdk/account/passport/GPCPassportLoginManager;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/account/passport/GPCPassportLoginManager;->setBehavior(Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;)V

    return-object p0
.end method
