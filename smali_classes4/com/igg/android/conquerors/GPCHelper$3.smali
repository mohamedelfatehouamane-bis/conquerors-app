.class Lcom/igg/android/conquerors/GPCHelper$3;
.super Ljava/lang/Object;
.source "GPCHelper.java"

# interfaces
.implements Lcom/gpc/resourcestorage/listener/ResourceDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/android/conquerors/GPCHelper;->DownloadAvatar(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$resourceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 260
    iput-object p1, p0, Lcom/igg/android/conquerors/GPCHelper$3;->val$resourceId:Ljava/lang/String;

    iput-object p2, p0, Lcom/igg/android/conquerors/GPCHelper$3;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/gpc/resourcestorage/OPSResourceTask;Lcom/gpc/operations/migrate/error/GPCException;)V
    .locals 6

    .line 295
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onFailure: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/gpc/operations/migrate/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GPCHelper-"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 297
    invoke-virtual {p2}, Lcom/gpc/operations/migrate/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 298
    invoke-virtual {p2}, Lcom/gpc/operations/migrate/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object p1

    .line 299
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    move v5, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v5, 0x0

    .line 301
    :goto_0
    invoke-static {}, Lcom/igg/android/conquerors/GPCHelper;->-$$Nest$sfgetmGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object v0

    iget-object v2, p0, Lcom/igg/android/conquerors/GPCHelper$3;->val$resourceId:Ljava/lang/String;

    iget-object v3, p0, Lcom/igg/android/conquerors/GPCHelper$3;->val$key:Ljava/lang/String;

    const-string v4, ""

    const/4 v1, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/jniCallback;->retDownloadAvatarResource(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public onProgress(Lcom/gpc/resourcestorage/OPSResourceTask;)V
    .locals 6

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onProgress: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/resourcestorage/OPSResourceTask;->getLocalPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GPCHelper-"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-static {}, Lcom/igg/android/conquerors/GPCHelper;->-$$Nest$sfgetmGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object v0

    iget-object v2, p0, Lcom/igg/android/conquerors/GPCHelper$3;->val$resourceId:Ljava/lang/String;

    iget-object v3, p0, Lcom/igg/android/conquerors/GPCHelper$3;->val$key:Ljava/lang/String;

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/jniCallback;->retDownloadAvatarResource(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public onSuccess(Lcom/gpc/resourcestorage/OPSResourceTask;Lcom/gpc/resourcestorage/OPSResource;)V
    .locals 10

    .line 274
    invoke-virtual {p1}, Lcom/gpc/resourcestorage/OPSResourceTask;->getStatus()Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    move-result-object p2

    sget-object v0, Lcom/gpc/resourcestorage/bean/OPSResourceStatus;->Success:Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    const-string v1, "\u672c\u5730\u8def\u5f84\uff1a"

    const-string v2, "\n"

    const/4 v3, 0x0

    if-ne p2, v0, :cond_0

    .line 275
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\u4e0b\u8f7d\u56fe\u7247\u6210\u529f\uff0c\u5ba1\u6838\u72b6\u6001\u7801\u4e3a: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/resourcestorage/OPSResourceTask;->getStatus()Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/resourcestorage/bean/OPSResourceStatus;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gpc/resourcestorage/OPSResourceTask;->getLocalPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 278
    invoke-virtual {p1}, Lcom/gpc/resourcestorage/OPSResourceTask;->getLocalPath()Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v8, p1

    const/4 v9, 0x0

    goto :goto_1

    .line 279
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/resourcestorage/OPSResourceTask;->getStatus()Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    move-result-object p2

    sget-object v0, Lcom/gpc/resourcestorage/bean/OPSResourceStatus;->UnderReview:Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    if-ne p2, v0, :cond_1

    .line 280
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\u4e0b\u8f7d\u56fe\u7247\u6210\u529f\uff0c\u5f53\u524d\u4e3a\u5ba1\u6838\u4e2d\uff0c\u72b6\u6001\u7801\u4e3a: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/resourcestorage/OPSResourceTask;->getStatus()Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/resourcestorage/bean/OPSResourceStatus;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gpc/resourcestorage/OPSResourceTask;->getLocalPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 283
    invoke-virtual {p1}, Lcom/gpc/resourcestorage/OPSResourceTask;->getLocalPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 285
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\u4e0b\u8f7d\u56fe\u7247\u8fdd\u89c4\uff0c\u5ba1\u6838\u72b6\u6001\u7801\u4e3a: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/resourcestorage/OPSResourceTask;->getStatus()Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/resourcestorage/bean/OPSResourceStatus;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 286
    invoke-virtual {p1}, Lcom/gpc/resourcestorage/OPSResourceTask;->getStatus()Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/resourcestorage/bean/OPSResourceStatus;->ordinal()I

    move-result v3

    const-string p1, ""

    move-object v8, p1

    move v9, v3

    .line 288
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onSuccess: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GPCHelper-"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-static {}, Lcom/igg/android/conquerors/GPCHelper;->-$$Nest$sfgetmGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object v4

    iget-object v6, p0, Lcom/igg/android/conquerors/GPCHelper$3;->val$resourceId:Ljava/lang/String;

    iget-object v7, p0, Lcom/igg/android/conquerors/GPCHelper$3;->val$key:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/jniCallback;->retDownloadAvatarResource(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
