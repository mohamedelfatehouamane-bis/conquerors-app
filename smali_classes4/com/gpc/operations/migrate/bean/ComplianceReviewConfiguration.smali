.class public Lcom/gpc/operations/migrate/bean/ComplianceReviewConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private walletId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWalletId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/bean/ComplianceReviewConfiguration;->walletId:Ljava/lang/String;

    return-object v0
.end method

.method public setWalletId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/bean/ComplianceReviewConfiguration;->walletId:Ljava/lang/String;

    return-void
.end method
