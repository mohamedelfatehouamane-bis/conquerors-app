.class public final Lcom/gpc/operations/base/picker/PickerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "PickerManager"


# instance fields
.field private final imagePicker:Lcom/gpc/operations/base/picker/IPicker;

.field private final isIntentModel:Z

.field private final mediaPicker:Lcom/gpc/operations/base/picker/IPicker;

.field private final pickers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/operations/base/picker/IPicker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLandroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpc/operations/base/picker/PickerManager;->pickers:Ljava/util/List;

    .line 5
    invoke-static {}, Lcom/gpc/operations/utils/OPSToastUtils;->sharedInstance()Lcom/gpc/operations/utils/OPSToastUtils;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/gpc/operations/utils/OPSToastUtils;->init(Landroid/app/Activity;)V

    .line 6
    iput-boolean p1, p0, Lcom/gpc/operations/base/picker/PickerManager;->isIntentModel:Z

    if-eqz p1, :cond_0

    .line 8
    new-instance p1, Lcom/gpc/operations/base/picker/IntentImagePicker;

    invoke-direct {p1, p2}, Lcom/gpc/operations/base/picker/IntentImagePicker;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/gpc/operations/base/picker/PickerManager;->imagePicker:Lcom/gpc/operations/base/picker/IPicker;

    .line 9
    new-instance p1, Lcom/gpc/operations/base/picker/IntentMediaPicker;

    invoke-direct {p1, p2}, Lcom/gpc/operations/base/picker/IntentMediaPicker;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/gpc/operations/base/picker/PickerManager;->mediaPicker:Lcom/gpc/operations/base/picker/IPicker;

    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Lcom/gpc/operations/base/picker/CustomImagePicker;

    invoke-direct {p1, p2}, Lcom/gpc/operations/base/picker/CustomImagePicker;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/gpc/operations/base/picker/PickerManager;->imagePicker:Lcom/gpc/operations/base/picker/IPicker;

    .line 12
    new-instance p1, Lcom/gpc/operations/base/picker/CustomMediaPicker;

    invoke-direct {p1, p2}, Lcom/gpc/operations/base/picker/CustomMediaPicker;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/gpc/operations/base/picker/PickerManager;->mediaPicker:Lcom/gpc/operations/base/picker/IPicker;

    .line 14
    :goto_0
    iget-object p1, p0, Lcom/gpc/operations/base/picker/PickerManager;->imagePicker:Lcom/gpc/operations/base/picker/IPicker;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object p1, p0, Lcom/gpc/operations/base/picker/PickerManager;->mediaPicker:Lcom/gpc/operations/base/picker/IPicker;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Lcom/gpc/operations/base/picker/PickResult;
    .locals 4

    const-string v0, "PickerManager"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/gpc/operations/base/picker/PickerManager;->pickers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/operations/base/picker/IPicker;

    .line 4
    invoke-interface {v2, p1, p2, p3}, Lcom/gpc/operations/base/picker/IPicker;->onActivityResult(IILandroid/content/Intent;)Lcom/gpc/operations/base/picker/PickResult;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "picker:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p1

    .line 11
    const-string p2, ""

    invoke-static {v0, p2, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/picker/PickerManager;->pickers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/operations/base/picker/IPicker;

    .line 5
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/gpc/operations/base/picker/IPicker;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    const-string v2, "PickerManager"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public pickupImage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "openImagePicker isIntentModel:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/gpc/operations/base/picker/PickerManager;->isIntentModel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PickerManager"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/gpc/operations/base/picker/PickerManager;->imagePicker:Lcom/gpc/operations/base/picker/IPicker;

    const-wide/32 v3, 0x6400000

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-interface/range {v2 .. v7}, Lcom/gpc/operations/base/picker/IPicker;->pickup(JILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 5
    const-string p2, ""

    invoke-static {v1, p2, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public pickupMedia(JILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "openMediaPicker isIntentModel:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/gpc/operations/base/picker/PickerManager;->isIntentModel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PickerManager"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/gpc/operations/base/picker/PickerManager;->mediaPicker:Lcom/gpc/operations/base/picker/IPicker;

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/gpc/operations/base/picker/IPicker;->pickup(JILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 5
    const-string p2, ""

    invoke-static {v1, p2, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
