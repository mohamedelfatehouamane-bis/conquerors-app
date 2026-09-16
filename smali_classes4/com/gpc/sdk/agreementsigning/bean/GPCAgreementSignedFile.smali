.class public Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSignedFile;
.super Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementFile;
.source "SourceFile"


# instance fields
.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementFile;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocalizedActionRefuse()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSignedFile;->f:Ljava/lang/String;

    return-object v0
.end method

.method public setLocalizedActionRefuse(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSignedFile;->f:Ljava/lang/String;

    return-void
.end method
