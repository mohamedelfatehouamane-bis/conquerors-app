.class public Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;
.super Ljava/lang/Object;
.source "GPCAgreementHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igg/android/conquerors/GPCAgreementHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "V2Agreement"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement$LoadAgreementCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Agreement-v2"


# instance fields
.field private mAgreementSigningFile:Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

.field private mGPCAgreementSigningType:I

.field public mGameInstance:Lcom/igg/android/conquerors/col;

.field private mLoadAgreementCallback:Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement$LoadAgreementCallback;


# direct methods
.method static bridge synthetic -$$Nest$fputmAgreementSigningFile(Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;)V
    .locals 0

    iput-object p1, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->mAgreementSigningFile:Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestEUStatus(Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;)V
    .locals 0

    invoke-direct {p0}, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->requestEUStatus()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mretShowAssignedAgreement(Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->retShowAssignedAgreement(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowCheckAgreementsPendingSigningDialog(Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->showCheckAgreementsPendingSigningDialog(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/igg/android/conquerors/col;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->mLoadAgreementCallback:Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement$LoadAgreementCallback;

    const/4 v0, 0x1

    .line 83
    iput v0, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->mGPCAgreementSigningType:I

    .line 88
    iput-object p1, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->mGameInstance:Lcom/igg/android/conquerors/col;

    return-void
.end method

.method private checkShowDialogType(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 221
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->getType()I

    move-result v0

    iput v0, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->mGPCAgreementSigningType:I

    .line 223
    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->getType()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 226
    const-string v4, "GOOGLE_ANALYTICS_SDK"

    invoke-interface {p2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    .line 228
    :goto_1
    invoke-static {v0, v2, v4}, Lcom/igg/android/conquerors/GPCAgreementHelper;->-$$Nest$smupdateThirdPartySDK(ZZZ)V

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "mGPCAgreementSigningType"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->mGPCAgreementSigningType:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Agreement-v2"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget v0, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->mGPCAgreementSigningType:I

    if-ne v0, v1, :cond_3

    .line 233
    invoke-virtual {p0, p1, p2, p3}, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->showAgreementDialogEU(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;Ljava/util/List;Ljava/util/List;)V

    return-void

    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 236
    invoke-virtual {p0, p1, p2, p3}, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->showAgreementDialogKR(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;Ljava/util/List;Ljava/util/List;)V

    return-void

    .line 239
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->showAgreementDialogOther(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;Ljava/util/List;Ljava/util/List;)V

    .line 241
    invoke-static {v2, v3, v3}, Lcom/igg/android/conquerors/GPCAgreementHelper;->-$$Nest$smupdateThirdPartySDK(ZZZ)V

    return-void
.end method

.method private convertListToAry(Ljava/util/List;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 429
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 430
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 431
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 429
    new-array p1, p1, [Ljava/lang/String;

    return-object p1
.end method

.method private getAgreementAry(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;)[Ljava/lang/String;
    .locals 3

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 367
    const-string v1, "Agreement-v2"

    if-eqz p1, :cond_0

    .line 368
    const-string v2, "getAgreementAry mAgreementSigningFile is not null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->getAgreements()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 370
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 372
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;

    .line 373
    invoke-virtual {v1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    invoke-virtual {v1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    invoke-virtual {v1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->getLocalizedName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 380
    :cond_0
    const-string p1, "getAgreementAry mAgreementSigningFile is null"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x0

    .line 382
    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method private getAgreementAry(Ljava/util/List;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 388
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 390
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;

    .line 391
    invoke-virtual {v1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    invoke-virtual {v1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    invoke-virtual {v1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->getLocalizedName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 397
    :cond_0
    const-string p1, "Agreement-v2"

    const-string v1, "getAgreementAry mAgreementSigningFile is null"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x0

    .line 399
    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method private getEUUIAry(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;)[Ljava/lang/String;
    .locals 4

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 330
    const-string v1, "Agreement-v2"

    if-eqz p1, :cond_4

    .line 331
    const-string v2, "getUIAry mAgreementSigningFile is not null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->getLocalizedTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->getLocalizedCaption()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->getLocalizedActionAcceptionAll()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-eqz v2, :cond_0

    .line 335
    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->getLocalizedActionAcceptionAll()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->getLocalizedActionAcceptionAll()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 339
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    :goto_0
    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->getLocalizedActionRefuse()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 342
    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->getLocalizedActionRefuse()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->getLocalizedActionRefuse()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 345
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    :goto_1
    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->getLocalizedActionMoreInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 348
    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->getLocalizedActionMoreInfo()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->getLocalizedActionMoreInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 351
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    :goto_2
    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->getLocalizedActionSign()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 354
    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->getLocalizedActionSign()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->getLocalizedActionSign()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 357
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 360
    :cond_4
    const-string p1, "getUIAry mAgreementSigningFile is null"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const/4 p1, 0x0

    .line 362
    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method private getGeneralUIAry(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;)[Ljava/lang/String;
    .locals 3

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 313
    const-string v1, "Agreement-v2"

    if-eqz p1, :cond_1

    .line 314
    const-string v2, "getUIAry mAgreementSigningFile is not null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->getLocalizedTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->getLocalizedCaption()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->getLocalizedActionSign()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 318
    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->getLocalizedActionSign()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 320
    :cond_0
    const-string p1, ""

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 323
    :cond_1
    const-string p1, "getUIAry mAgreementSigningFile is null"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x0

    .line 325
    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method private getOptionAry(Ljava/util/List;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningOption;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 403
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 404
    const-string v2, "Agreement-v2"

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 405
    const-string v3, "getOptionAry mAgreementOptions is not null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 407
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 408
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningOption;

    .line 409
    invoke-virtual {v3}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningOption;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    invoke-virtual {v3}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningOption;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    invoke-virtual {v3}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningOption;->getVariables()Ljava/util/HashMap;

    move-result-object v3

    .line 412
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 413
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;

    .line 414
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    invoke-virtual {v5}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->getLocalizedName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    invoke-virtual {v5}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    invoke-virtual {v5}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 419
    :cond_0
    const-string v3, ""

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 422
    :cond_1
    const-string p1, "getOptionAry mAgreementOptions is null"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_2
    new-array p1, v1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method private loadAppConf()V
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->mLoadAgreementCallback:Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement$LoadAgreementCallback;

    if-eqz v0, :cond_0

    .line 446
    invoke-interface {v0}, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement$LoadAgreementCallback;->onLoadAppConf()V

    :cond_0
    return-void
.end method

.method private requestEUStatus()V
    .locals 2

    .line 150
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/Kungfu;->getPreparedAgreementSigningV2()Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningV2;

    move-result-object v0

    new-instance v1, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement$2;

    invoke-direct {v1, p0}, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement$2;-><init>(Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;)V

    invoke-interface {v0, v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningV2;->restoreAssignedAgreements(Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAssignedAgreementsListener;)V

    return-void
.end method

.method private retShowAssignedAgreement(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningOption;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 611
    iget-object v0, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->mAgreementSigningFile:Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    invoke-direct {p0, v0}, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->getEUUIAry(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;)[Ljava/lang/String;

    move-result-object v2

    .line 612
    iget-object v0, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->mAgreementSigningFile:Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    invoke-direct {p0, v0}, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->getAgreementAry(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;)[Ljava/lang/String;

    move-result-object v3

    .line 613
    invoke-direct {p0, p1}, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->getOptionAry(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v4

    .line 615
    invoke-direct {p0, p2}, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->convertListToAry(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v5

    .line 616
    invoke-direct {p0, p3}, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->convertListToAry(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v6

    .line 617
    iget-object p1, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->mGameInstance:Lcom/igg/android/conquerors/col;

    if-eqz p1, :cond_0

    .line 618
    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object v1

    invoke-virtual/range {v1 .. v6}, Lcom/jniCallback;->retShowAssignedAgreementV2([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private showCheckAgreementsPendingSigningDialog(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 182
    const-string v0, "Agreement-v2"

    if-nez p1, :cond_0

    .line 183
    const-string p1, "showCheckAgreementsPendingSigningDialog status == null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 186
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->getAgreementSigningStatusValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 189
    const-string v1, "[CMP-DEMO] \u7528\u6237\u8fd8\u672a\u64cd\u4f5c\u8fc7\u5f39\u7a97\uff0c\u663e\u793a\u5f39\u7a97"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[CMP-DEMO] \u7528\u6237\u8fd8\u672a\u64cd\u4f5c\u8fc7\u5f39\u7a97\uff0c\u7528\u6237\u63d0\u4ea4\u7684\u540c\u610f\u9879\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p3, :cond_2

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[CMP-DEMO] \u7528\u6237\u8fd8\u672a\u64cd\u4f5c\u8fc7\u5f39\u7a97\uff0c\u7528\u6237\u63d0\u4ea4\u7684\u672a\u540c\u610f\u9879:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->checkShowDialogType(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;Ljava/util/List;Ljava/util/List;)V

    return-void

    .line 201
    :cond_3
    invoke-static {}, Lcom/ThirdPartySDK;->getFirebaseAnalytics()Lcom/ThirdPartySDK$FirebaseAnalyticsSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ThirdPartySDK$FirebaseAnalyticsSDK;->finish()V

    .line 206
    invoke-direct {p0}, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->loadAppConf()V

    return-void
.end method


# virtual methods
.method public agreeAgreement()V
    .locals 2

    .line 501
    const-string v0, "Agreement-v2"

    const-string v1, "agreeAgreement: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/Kungfu;->getPreparedAgreementSigningV2()Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningV2;

    move-result-object v0

    new-instance v1, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement$3;

    invoke-direct {v1, p0}, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement$3;-><init>(Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;)V

    invoke-interface {v0, v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningV2;->sign(Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;)V

    const/4 v0, 0x0

    .line 513
    iput-object v0, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->mAgreementSigningFile:Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    return-void
.end method

.method public checkAgreementsPendingSigning(Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement$LoadAgreementCallback;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->mAgreementSigningFile:Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->mAgreementSigningFile:Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    .line 95
    :cond_0
    iput-object p1, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->mLoadAgreementCallback:Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement$LoadAgreementCallback;

    .line 97
    new-instance p1, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement$1;

    invoke-direct {p1, p0}, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement$1;-><init>(Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;)V

    .line 129
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/Kungfu;->getPreparedAgreementSigningV2()Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningV2;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningV2;->checkAgreementsPendingSigning(Lcom/gpc/sdk/agreementsigning/listener/GPCCheckAgreementsPendingSigningListener;)V

    .line 131
    const-string p1, "Agreement-v2"

    const-string v0, "checkAgreementsPendingSigning"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public presignedAgreement(I[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .line 457
    iget-object v0, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->mAgreementSigningFile:Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 460
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 461
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_1

    .line 462
    array-length v2, p2

    if-lez v2, :cond_1

    .line 463
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_1
    if-eqz p3, :cond_2

    .line 465
    array-length p2, p3

    if-lez p2, :cond_2

    .line 466
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 469
    :cond_2
    :try_start_0
    iget p2, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->mGPCAgreementSigningType:I

    const/4 p3, 0x3

    if-ne p2, p3, :cond_3

    .line 470
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/Kungfu;->getPreparedAgreementSigningV2()Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningV2;

    move-result-object p1

    iget-object p2, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->mAgreementSigningFile:Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    invoke-interface {p1, p2, v0, v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningV2;->presignedEUSpecialConditions(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    if-ne p2, v1, :cond_4

    .line 472
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/sdk/Kungfu;->getPreparedAgreementSigningV2()Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningV2;

    move-result-object p2

    iget-object v1, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->mAgreementSigningFile:Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    invoke-interface {p2, v1, p1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningV2;->presignedKRSpecialConditions(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;I)V

    goto :goto_0

    .line 474
    :cond_4
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/Kungfu;->getPreparedAgreementSigningV2()Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningV2;

    move-result-object p1

    iget-object p2, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->mAgreementSigningFile:Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    invoke-interface {p1, p2}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningV2;->presigned(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;)V

    .line 476
    :goto_0
    iget p1, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->mGPCAgreementSigningType:I

    const/4 p2, 0x1

    if-ne p1, p3, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    .line 479
    const-string p3, "GOOGLE_ANALYTICS_SDK"

    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    goto :goto_2

    :cond_6
    const/4 p3, 0x1

    .line 481
    :goto_2
    invoke-static {p1, p2, p3}, Lcom/igg/android/conquerors/GPCAgreementHelper;->-$$Nest$smupdateThirdPartySDK(ZZZ)V

    .line 485
    invoke-direct {p0}, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->loadAppConf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 487
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public requestAllAgreement()V
    .locals 2

    .line 521
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/Kungfu;->getPreparedAgreementSigningV2()Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningV2;

    move-result-object v0

    new-instance v1, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement$4;

    invoke-direct {v1, p0}, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement$4;-><init>(Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;)V

    invoke-interface {v0, v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningV2;->restoreAllAgreements(Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAllAgreementsListener;)V

    return-void
.end method

.method public requestAssignedAgreements()V
    .locals 2

    .line 542
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/Kungfu;->getPreparedAgreementSigningV2()Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningV2;

    move-result-object v0

    new-instance v1, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement$5;

    invoke-direct {v1, p0}, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement$5;-><init>(Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;)V

    invoke-interface {v0, v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningV2;->restoreAssignedAgreements(Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAssignedAgreementsListener;)V

    return-void
.end method

.method public retAgreementUrl(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;",
            ">;)V"
        }
    .end annotation

    .line 437
    invoke-direct {p0, p1}, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->getAgreementAry(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p1

    .line 438
    iget-object v0, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->mGameInstance:Lcom/igg/android/conquerors/col;

    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {v0}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jniCallback;->retAgreementUrl([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showAgreementDialogEU(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    .line 277
    :cond_0
    const-string v0, "Agreement-v2"

    const-string v1, "[CMP-DEMO] \u7528\u6237\u8fd8\u672a\u64cd\u4f5c\u8fc7\u5f39\u7a97\uff0c\u663e\u793a\u5f39\u7a97, \u6e38\u620f\u9700\u8981\u6839\u636e\u7528\u6237\u9009\u62e9\u521d\u59cb\u5316\u7b2c\u4e09\u65b9SDK"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->getAgreementSigningFile()Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    move-result-object v0

    iput-object v0, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->mAgreementSigningFile:Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    .line 281
    invoke-direct {p0, v0}, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->getEUUIAry(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;)[Ljava/lang/String;

    move-result-object v2

    .line 282
    iget-object v0, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->mAgreementSigningFile:Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    invoke-direct {p0, v0}, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->getAgreementAry(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;)[Ljava/lang/String;

    move-result-object v3

    .line 283
    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->getAgreementOptions()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->getOptionAry(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v4

    .line 284
    invoke-direct {p0, p2}, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->convertListToAry(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v5

    .line 285
    invoke-direct {p0, p3}, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->convertListToAry(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v6

    .line 286
    iget-object p1, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->mGameInstance:Lcom/igg/android/conquerors/col;

    if-eqz p1, :cond_1

    .line 287
    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object v1

    invoke-virtual/range {v1 .. v6}, Lcom/jniCallback;->retShowAgreementV2([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showAgreementDialogKR(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 253
    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->getAgreementSigningFile()Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    move-result-object p1

    iput-object p1, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->mAgreementSigningFile:Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    .line 255
    invoke-direct {p0, p1}, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->getGeneralUIAry(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;)[Ljava/lang/String;

    move-result-object v1

    .line 256
    iget-object p1, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->mAgreementSigningFile:Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    invoke-direct {p0, p1}, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->getAgreementAry(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;)[Ljava/lang/String;

    move-result-object v2

    const/4 p1, 0x0

    .line 257
    new-array v3, p1, [Ljava/lang/String;

    .line 258
    new-array v4, p1, [Ljava/lang/String;

    .line 259
    new-array v5, p1, [Ljava/lang/String;

    .line 260
    iget-object p1, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->mGameInstance:Lcom/igg/android/conquerors/col;

    if-eqz p1, :cond_0

    .line 261
    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Lcom/jniCallback;->retShowAgreementV2([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showAgreementDialogOther(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 299
    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->getAgreementSigningFile()Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    move-result-object p1

    iput-object p1, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->mAgreementSigningFile:Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    .line 301
    invoke-direct {p0, p1}, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->getGeneralUIAry(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;)[Ljava/lang/String;

    move-result-object v1

    .line 302
    iget-object p1, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->mAgreementSigningFile:Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    invoke-direct {p0, p1}, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->getAgreementAry(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;)[Ljava/lang/String;

    move-result-object v2

    const/4 p1, 0x0

    .line 303
    new-array v3, p1, [Ljava/lang/String;

    .line 304
    new-array v4, p1, [Ljava/lang/String;

    .line 305
    new-array v5, p1, [Ljava/lang/String;

    .line 306
    iget-object p1, p0, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->mGameInstance:Lcom/igg/android/conquerors/col;

    if-eqz p1, :cond_0

    .line 307
    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Lcom/jniCallback;->retShowAgreementV2([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showCheckAgreementsPendingSigningErrorDialog(Lcom/gpc/sdk/error/GPCException;)V
    .locals 2

    .line 135
    const-string p1, "[CMP-DEMO] \u68c0\u67e5\u662f\u5426\u6709\u5f85\u7b7e\u7f72\u534f\u8bae\u72b6\u6001\u63a5\u53e3\u5f02\u5e38\uff0c\u7b2c\u4e09\u65b9 SDK \u9ed8\u8ba4\u5168\u90e8\u540c\u610f\u3002\u7814\u53d1\u9700\u8981\u5728\u6b64\u8c03\u7528\u5404\u4e2a\u5e7f\u544a SDK \u63a5\u53e3\u3002"

    const-string v0, "Agreement-v2"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "[CMP-DEMO] \u9ed8\u8ba4\u540c\u610f\u9879\uff1a"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getLocalConfigManager()Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->getDps()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-direct {p0}, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->loadAppConf()V

    return-void
.end method

.method public updateUserAgreementConsent([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .line 566
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 567
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 568
    array-length v2, p1

    if-lez v2, :cond_0

    .line 569
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_0
    if-eqz p2, :cond_1

    .line 571
    array-length p1, p2

    if-lez p1, :cond_1

    .line 572
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 577
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/Kungfu;->getPreparedAgreementSigningV2()Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningV2;

    move-result-object p1

    new-instance p2, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement$6;

    invoke-direct {p2, p0, v0}, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement$6;-><init>(Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;Ljava/util/List;)V

    invoke-interface {p1, v0, v1, p2}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningV2;->updateUserConsent(Ljava/util/List;Ljava/util/List;Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 604
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
