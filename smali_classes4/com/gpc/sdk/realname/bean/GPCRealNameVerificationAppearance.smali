.class public Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationAppearance;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationAppearance;->a:I

    return-void
.end method


# virtual methods
.method public getBackBtnIcon()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationAppearance;->a:I

    return v0
.end method

.method public getHeaderBackgroundColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationAppearance;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setBackBtnIcon(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationAppearance;->a:I

    return-void
.end method

.method public setHeaderBackgroundColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationAppearance;->b:Ljava/lang/String;

    return-void
.end method
