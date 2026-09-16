.class public Lcom/gpc/operations/base/BaseAppearance;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected backBtnIcon:I

.field protected exitBtnIcon:I

.field protected headerBackgroundColor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/gpc/operations/base/BaseAppearance;->backBtnIcon:I

    .line 5
    iput v0, p0, Lcom/gpc/operations/base/BaseAppearance;->exitBtnIcon:I

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/gpc/operations/base/BaseAppearance;->headerBackgroundColor:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBackBtnIcon()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/operations/base/BaseAppearance;->backBtnIcon:I

    return v0
.end method

.method public getExitBtnIcon()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/operations/base/BaseAppearance;->exitBtnIcon:I

    return v0
.end method

.method public getHeaderBackgroundColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/BaseAppearance;->headerBackgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public setBackBtnIcon(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/operations/base/BaseAppearance;->backBtnIcon:I

    return-void
.end method

.method public setExitBtnIcon(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/operations/base/BaseAppearance;->exitBtnIcon:I

    return-void
.end method

.method public setHeaderBackgroundColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/base/BaseAppearance;->headerBackgroundColor:Ljava/lang/String;

    return-void
.end method
