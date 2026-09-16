.class public Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginResult;->c:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isAccountNewlyCreated()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginResult;->d:Z

    return v0
.end method

.method public isHasBound()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginResult;->a:Z

    return v0
.end method

.method public setAccountNewlyCreated(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginResult;->d:Z

    return-void
.end method

.method public setContext(Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginResult;->c:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;

    return-void
.end method

.method public setHasBound(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginResult;->a:Z

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginResult;->b:Ljava/lang/String;

    return-void
.end method
