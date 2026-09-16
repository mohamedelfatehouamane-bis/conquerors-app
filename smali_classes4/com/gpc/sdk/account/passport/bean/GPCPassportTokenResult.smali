.class public Lcom/gpc/sdk/account/passport/bean/GPCPassportTokenResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/passport/bean/GPCPassportTokenResult;->a:Ljava/lang/String;

    return-object v0
.end method

.method public isAccountNewlyCreated()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/account/passport/bean/GPCPassportTokenResult;->b:Z

    return v0
.end method

.method public setAccountNewlyCreated(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/account/passport/bean/GPCPassportTokenResult;->b:Z

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/account/passport/bean/GPCPassportTokenResult;->a:Ljava/lang/String;

    return-void
.end method
