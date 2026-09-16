.class public abstract Lcom/gpc/operations/base/picker/IntentBasePicker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/base/picker/IPicker;


# static fields
.field public static S_ALLOW_TOAST_FAILED:Z = true

.field private static final TAG:Ljava/lang/String; = "BaseMediaPicker"


# instance fields
.field protected final PIC_MAX_SIZE:J

.field protected final PIC_MAX_SIZE_M:J

.field protected activity:Landroid/app/Activity;

.field protected currentItemId:Ljava/lang/String;

.field protected currentLimitCount:I

.field protected currentMaxUploadSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x64

    .line 2
    iput-wide v0, p0, Lcom/gpc/operations/base/picker/IntentBasePicker;->PIC_MAX_SIZE_M:J

    const-wide/32 v0, 0x6400000

    .line 3
    iput-wide v0, p0, Lcom/gpc/operations/base/picker/IntentBasePicker;->PIC_MAX_SIZE:J

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcom/gpc/operations/base/picker/IntentBasePicker;->currentMaxUploadSize:J

    .line 13
    iput-object p1, p0, Lcom/gpc/operations/base/picker/IntentBasePicker;->activity:Landroid/app/Activity;

    return-void
.end method

.method public static synthetic access$000(Lcom/gpc/operations/base/picker/IntentBasePicker;JILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/gpc/operations/base/picker/IntentBasePicker;->pickupI(JILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createPhotoModel(Landroid/net/Uri;Lcom/gpc/operations/utils/UriHelper$FileInfo;)Lcom/gpc/photoselector/model/PhotoModel;
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/photoselector/model/PhotoModel;

    invoke-direct {v0}, Lcom/gpc/photoselector/model/PhotoModel;-><init>()V

    .line 2
    iget-wide v1, p2, Lcom/gpc/operations/utils/UriHelper$FileInfo;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/gpc/photoselector/model/PhotoModel;->setId(J)V

    .line 3
    iget-object v1, p2, Lcom/gpc/operations/utils/UriHelper$FileInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/gpc/operations/base/picker/IntentBasePicker;->getType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/photoselector/model/PhotoModel;->setType(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/photoselector/model/PhotoModel;->setUri(Ljava/lang/String;)V

    .line 5
    iget-object p1, p2, Lcom/gpc/operations/utils/UriHelper$FileInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/gpc/photoselector/model/PhotoModel;->setName(Ljava/lang/String;)V

    .line 6
    iget-wide p1, p2, Lcom/gpc/operations/utils/UriHelper$FileInfo;->fileSize:J

    invoke-virtual {v0, p1, p2}, Lcom/gpc/photoselector/model/PhotoModel;->setSize(J)V

    return-object v0
.end method

.method private pickupI(JILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/operations/base/picker/IntentBasePicker;->currentMaxUploadSize:J

    .line 2
    iput p3, p0, Lcom/gpc/operations/base/picker/IntentBasePicker;->currentLimitCount:I

    .line 3
    iput-object p4, p0, Lcom/gpc/operations/base/picker/IntentBasePicker;->currentItemId:Ljava/lang/String;

    const/4 p1, 0x1

    if-ne p1, p3, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/gpc/operations/base/picker/IntentBasePicker;->pickUpSingle()V

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/operations/base/picker/IntentBasePicker;->pickUpMultiple()V

    return-void
.end method


# virtual methods
.method public createPhotoModels(ILandroid/content/Intent;)Lcom/gpc/operations/base/picker/PickResult;
    .locals 11

    .line 1
    new-instance v0, Lcom/gpc/operations/base/picker/PickResult;

    invoke-direct {v0}, Lcom/gpc/operations/base/picker/PickResult;-><init>()V

    const/4 v1, -0x1

    const-string v2, "BaseMediaPicker"

    if-eq p1, v1, :cond_0

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "resultCode:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object p1, Lcom/gpc/operations/base/picker/PickResult$Status;->CANCEL:Lcom/gpc/operations/base/picker/PickResult$Status;

    invoke-virtual {v0, p1}, Lcom/gpc/operations/base/picker/PickResult;->setStatus(Lcom/gpc/operations/base/picker/PickResult$Status;)V

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    .line 9
    const-string p1, "data is null"

    invoke-static {v2, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget-object p1, Lcom/gpc/operations/base/picker/PickResult$Status;->CANCEL:Lcom/gpc/operations/base/picker/PickResult$Status;

    invoke-virtual {v0, p1}, Lcom/gpc/operations/base/picker/PickResult;->setStatus(Lcom/gpc/operations/base/picker/PickResult$Status;)V

    return-object v0

    .line 14
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "photoUri:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fileInfo:"

    if-eqz p1, :cond_4

    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, "pick up single pic:"

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object p2, p0, Lcom/gpc/operations/base/picker/IntentBasePicker;->activity:Landroid/app/Activity;

    invoke-static {p2, p1}, Lcom/gpc/operations/utils/UriHelper;->getFileInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/gpc/operations/utils/UriHelper$FileInfo;

    move-result-object p2

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/gpc/operations/utils/UriHelper$FileInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v1, p2, Lcom/gpc/operations/utils/UriHelper$FileInfo;->mimeType:Ljava/lang/String;

    iget-object v2, p2, Lcom/gpc/operations/utils/UriHelper$FileInfo;->extension:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/gpc/operations/base/picker/IntentBasePicker;->isFormatValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 22
    sget-object p1, Lcom/gpc/operations/base/picker/PickResult$Status;->FAILURE:Lcom/gpc/operations/base/picker/PickResult$Status;

    invoke-virtual {v0, p1}, Lcom/gpc/operations/base/picker/PickResult;->setStatus(Lcom/gpc/operations/base/picker/PickResult$Status;)V

    .line 23
    invoke-virtual {p0}, Lcom/gpc/operations/base/picker/IntentBasePicker;->showFileFormatIllegalError()V

    return-object v0

    .line 27
    :cond_2
    iget-wide v1, p2, Lcom/gpc/operations/utils/UriHelper$FileInfo;->fileSize:J

    iget-object v3, p2, Lcom/gpc/operations/utils/UriHelper$FileInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/gpc/operations/base/picker/IntentBasePicker;->getFileMaxSize(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-ltz v5, :cond_3

    .line 28
    sget-object p1, Lcom/gpc/operations/base/picker/PickResult$Status;->FAILURE:Lcom/gpc/operations/base/picker/PickResult$Status;

    invoke-virtual {v0, p1}, Lcom/gpc/operations/base/picker/PickResult;->setStatus(Lcom/gpc/operations/base/picker/PickResult$Status;)V

    .line 29
    invoke-virtual {p0}, Lcom/gpc/operations/base/picker/IntentBasePicker;->showFileTooLargeError()V

    return-object v0

    .line 33
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/gpc/operations/base/picker/IntentBasePicker;->createPhotoModel(Landroid/net/Uri;Lcom/gpc/operations/utils/UriHelper$FileInfo;)Lcom/gpc/photoselector/model/PhotoModel;

    move-result-object p1

    .line 35
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object p1, Lcom/gpc/operations/base/picker/PickResult$Status;->SUCCESS:Lcom/gpc/operations/base/picker/PickResult$Status;

    invoke-virtual {v0, p1}, Lcom/gpc/operations/base/picker/PickResult;->setStatus(Lcom/gpc/operations/base/picker/PickResult$Status;)V

    .line 38
    invoke-virtual {v0, p2}, Lcom/gpc/operations/base/picker/PickResult;->setFileBeans(Ljava/util/List;)V

    return-object v0

    .line 41
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "pick up mutil pic:"

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result p1

    iget v3, p0, Lcom/gpc/operations/base/picker/IntentBasePicker;->currentLimitCount:I

    if-le p1, v3, :cond_5

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Exceed maximum quantity, pick:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",wanted:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/gpc/operations/base/picker/IntentBasePicker;->currentLimitCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    sget-object p1, Lcom/gpc/operations/base/picker/PickResult$Status;->FAILURE:Lcom/gpc/operations/base/picker/PickResult$Status;

    invoke-virtual {v0, p1}, Lcom/gpc/operations/base/picker/PickResult;->setStatus(Lcom/gpc/operations/base/picker/PickResult$Status;)V

    .line 47
    invoke-virtual {p0}, Lcom/gpc/operations/base/picker/IntentBasePicker;->showCountMaxError()V

    return-object v0

    .line 51
    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 52
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 54
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "index:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", uri:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v5, p0, Lcom/gpc/operations/base/picker/IntentBasePicker;->activity:Landroid/app/Activity;

    invoke-static {v5, v4}, Lcom/gpc/operations/utils/UriHelper;->getFileInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/gpc/operations/utils/UriHelper$FileInfo;

    move-result-object v5

    .line 56
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/gpc/operations/utils/UriHelper$FileInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v7, v5, Lcom/gpc/operations/utils/UriHelper$FileInfo;->mimeType:Ljava/lang/String;

    iget-object v8, v5, Lcom/gpc/operations/utils/UriHelper$FileInfo;->extension:Ljava/lang/String;

    invoke-virtual {p0, v7, v8}, Lcom/gpc/operations/base/picker/IntentBasePicker;->isFormatValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", invalid mimeType:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v5, Lcom/gpc/operations/utils/UriHelper$FileInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object p1, Lcom/gpc/operations/base/picker/PickResult$Status;->FAILURE:Lcom/gpc/operations/base/picker/PickResult$Status;

    invoke-virtual {v0, p1}, Lcom/gpc/operations/base/picker/PickResult;->setStatus(Lcom/gpc/operations/base/picker/PickResult$Status;)V

    .line 60
    invoke-virtual {p0}, Lcom/gpc/operations/base/picker/IntentBasePicker;->showFileFormatIllegalError()V

    return-object v0

    .line 65
    :cond_6
    iget-wide v6, v5, Lcom/gpc/operations/utils/UriHelper$FileInfo;->fileSize:J

    iget-object v8, v5, Lcom/gpc/operations/utils/UriHelper$FileInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/gpc/operations/base/picker/IntentBasePicker;->getFileMaxSize(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-ltz v10, :cond_7

    .line 66
    sget-object p1, Lcom/gpc/operations/base/picker/PickResult$Status;->FAILURE:Lcom/gpc/operations/base/picker/PickResult$Status;

    invoke-virtual {v0, p1}, Lcom/gpc/operations/base/picker/PickResult;->setStatus(Lcom/gpc/operations/base/picker/PickResult$Status;)V

    .line 67
    invoke-virtual {p0}, Lcom/gpc/operations/base/picker/IntentBasePicker;->showFileTooLargeError()V

    return-object v0

    .line 71
    :cond_7
    invoke-direct {p0, v4, v5}, Lcom/gpc/operations/base/picker/IntentBasePicker;->createPhotoModel(Landroid/net/Uri;Lcom/gpc/operations/utils/UriHelper$FileInfo;)Lcom/gpc/photoselector/model/PhotoModel;

    move-result-object v4

    .line 72
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 74
    :cond_8
    sget-object p2, Lcom/gpc/operations/base/picker/PickResult$Status;->SUCCESS:Lcom/gpc/operations/base/picker/PickResult$Status;

    invoke-virtual {v0, p2}, Lcom/gpc/operations/base/picker/PickResult;->setStatus(Lcom/gpc/operations/base/picker/PickResult$Status;)V

    .line 75
    invoke-virtual {v0, p1}, Lcom/gpc/operations/base/picker/PickResult;->setFileBeans(Ljava/util/List;)V

    return-object v0

    .line 78
    :cond_9
    sget-object p1, Lcom/gpc/operations/base/picker/PickResult$Status;->CANCEL:Lcom/gpc/operations/base/picker/PickResult$Status;

    invoke-virtual {v0, p1}, Lcom/gpc/operations/base/picker/PickResult;->setStatus(Lcom/gpc/operations/base/picker/PickResult$Status;)V

    return-object v0
.end method

.method public abstract getFileMaxSize(Ljava/lang/String;)J
.end method

.method public abstract getType(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isFormatValid(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method public abstract pickUpMultiple()V
.end method

.method public abstract pickUpSingle()V
.end method

.method public pickup(JILjava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v7, ""

    const-string v0, "isAcceptingText :"

    const-string v2, "isActive view:"

    const-string v3, "isActive:"

    .line 1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "want to pickup count:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, "BaseMediaPicker"

    invoke-static {v8, v4}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v4, p0, Lcom/gpc/operations/base/picker/IntentBasePicker;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v9

    const/4 v4, 0x0

    .line 6
    :try_start_0
    iget-object v6, p0, Lcom/gpc/operations/base/picker/IntentBasePicker;->activity:Landroid/app/Activity;

    const-string v10, "input_method"

    invoke-virtual {v6, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v6, :cond_0

    .line 8
    invoke-virtual {v9}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v10

    invoke-virtual {v6, v10, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    invoke-static {v8, v7, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    if-eqz v9, :cond_1

    if-eqz v4, :cond_1

    .line 22
    :try_start_1
    new-instance v0, Lcom/gpc/operations/base/picker/IntentBasePicker$a;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/gpc/operations/base/picker/IntentBasePicker$a;-><init>(Lcom/gpc/operations/base/picker/IntentBasePicker;JILjava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v9, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 33
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/gpc/operations/base/picker/IntentBasePicker;->pickupI(JILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 36
    invoke-static {v8, v7, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public abstract showCountMaxError()V
.end method

.method public abstract showFileFormatIllegalError()V
.end method

.method public abstract showFileTooLargeError()V
.end method
