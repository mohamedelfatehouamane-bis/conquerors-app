.class public Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;
.super Ljava/lang/Object;
.source "GPCAgreementHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igg/android/conquerors/GPCAgreementHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "V1Agreement"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Agreement-v1"


# instance fields
.field private mAgreementSigningFile:Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

.field public mGameInstance:Lcom/igg/android/conquerors/col;

.field private mStatusRequestListener:Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAgreementSigningFile(Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;)Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;
    .locals 0

    iget-object p0, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;->mAgreementSigningFile:Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAgreementSigningFile(Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;)V
    .locals 0

    iput-object p1, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;->mAgreementSigningFile:Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    return-void
.end method

.method public constructor <init>(Lcom/igg/android/conquerors/col;)V
    .locals 0

    .line 632
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 633
    iput-object p1, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;->mGameInstance:Lcom/igg/android/conquerors/col;

    return-void
.end method

.method private initStatusRequest(Lcom/igg/android/conquerors/col;)V
    .locals 1

    .line 637
    new-instance v0, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement$1;

    invoke-direct {v0, p0, p1}, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement$1;-><init>(Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;Lcom/igg/android/conquerors/col;)V

    iput-object v0, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;->mStatusRequestListener:Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;

    return-void
.end method


# virtual methods
.method public agreeAgreement()V
    .locals 3

    .line 721
    :try_start_0
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/Kungfu;->getPreparedAgreementSigning()Lcom/gpc/sdk/agreementsigning/GPCAgreementSigning;

    move-result-object v0

    iget-object v1, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;->mAgreementSigningFile:Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    new-instance v2, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement$3;

    invoke-direct {v2, p0}, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement$3;-><init>(Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;)V

    invoke-interface {v0, v1, v2}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigning;->sign(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 733
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public clearAgrSigning()V
    .locals 1

    const/4 v0, 0x0

    .line 709
    iput-object v0, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;->mAgreementSigningFile:Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    return-void
.end method

.method public requestAgreement(Lcom/igg/android/conquerors/col;)V
    .locals 2

    .line 680
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/Kungfu;->getPreparedAgreementSigning()Lcom/gpc/sdk/agreementsigning/GPCAgreementSigning;

    move-result-object v0

    new-instance v1, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement$2;

    invoke-direct {v1, p0, p1}, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement$2;-><init>(Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;Lcom/igg/android/conquerors/col;)V

    invoke-interface {v0, v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigning;->requestAssignedAgreements(Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestListener;)V

    return-void
.end method

.method public showAgreement(ILcom/igg/android/conquerors/col;)V
    .locals 0

    .line 714
    invoke-direct {p0, p2}, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;->initStatusRequest(Lcom/igg/android/conquerors/col;)V

    .line 716
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/Kungfu;->getPreparedAgreementSigning()Lcom/gpc/sdk/agreementsigning/GPCAgreementSigning;

    move-result-object p1

    iget-object p2, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;->mStatusRequestListener:Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;

    invoke-interface {p1, p2}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigning;->requestStatus(Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;)V

    return-void
.end method
