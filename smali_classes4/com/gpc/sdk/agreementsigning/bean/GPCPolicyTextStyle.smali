.class public Lcom/gpc/sdk/agreementsigning/bean/GPCPolicyTextStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCPolicyTextStyle;->a:Z

    .line 3
    iput-boolean p2, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCPolicyTextStyle;->b:Z

    .line 4
    iput-object p3, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCPolicyTextStyle;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCPolicyTextStyle;->c:Ljava/lang/String;

    return-object v0
.end method

.method public isBold()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCPolicyTextStyle;->a:Z

    return v0
.end method

.method public isItalic()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCPolicyTextStyle;->b:Z

    return v0
.end method

.method public setBold(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCPolicyTextStyle;->a:Z

    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCPolicyTextStyle;->c:Ljava/lang/String;

    return-void
.end method

.method public setItalic(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCPolicyTextStyle;->b:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GPCPolicyTextStyle{bold="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCPolicyTextStyle;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", italic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCPolicyTextStyle;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", color=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCPolicyTextStyle;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
