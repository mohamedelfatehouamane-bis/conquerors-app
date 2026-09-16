.class final Lcom/gpc/cropper/BitmapCroppingWorkerTask;
.super Landroid/os/AsyncTask;
.source "BitmapCroppingWorkerTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/cropper/BitmapCroppingWorkerTask$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/gpc/cropper/BitmapCroppingWorkerTask$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAspectRatioX:I

.field private final mAspectRatioY:I

.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mContext:Landroid/content/Context;

.field private final mCropImageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/gpc/cropper/CropImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final mCropPoints:[F

.field private final mDegreesRotated:I

.field private final mFixAspectRatio:Z

.field private final mFlipHorizontally:Z

.field private final mFlipVertically:Z

.field private final mOrgHeight:I

.field private final mOrgWidth:I

.field private final mReqHeight:I

.field private final mReqSizeOptions:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

.field private final mReqWidth:I

.field private final mSaveCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private final mSaveCompressQuality:I

.field private final mSaveUri:Landroid/net/Uri;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/gpc/cropper/CropImageView;Landroid/graphics/Bitmap;[FIZIIIIZZLcom/gpc/cropper/CropImageView$RequestSizeOptions;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V
    .locals 1

    .line 141
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 143
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mCropImageViewReference:Ljava/lang/ref/WeakReference;

    .line 144
    invoke-virtual {p1}, Lcom/gpc/cropper/CropImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mContext:Landroid/content/Context;

    .line 145
    iput-object p2, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 146
    iput-object p3, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mCropPoints:[F

    const/4 p1, 0x0

    .line 147
    iput-object p1, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mUri:Landroid/net/Uri;

    .line 148
    iput p4, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mDegreesRotated:I

    .line 149
    iput-boolean p5, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mFixAspectRatio:Z

    .line 150
    iput p6, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mAspectRatioX:I

    .line 151
    iput p7, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mAspectRatioY:I

    .line 152
    iput p8, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mReqWidth:I

    .line 153
    iput p9, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mReqHeight:I

    .line 154
    iput-boolean p10, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mFlipHorizontally:Z

    .line 155
    iput-boolean p11, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mFlipVertically:Z

    .line 156
    iput-object p12, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mReqSizeOptions:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    .line 157
    iput-object p13, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mSaveUri:Landroid/net/Uri;

    .line 158
    iput-object p14, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mSaveCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    move/from16 p1, p15

    .line 159
    iput p1, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mSaveCompressQuality:I

    const/4 p1, 0x0

    .line 160
    iput p1, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mOrgWidth:I

    .line 161
    iput p1, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mOrgHeight:I

    return-void
.end method

.method constructor <init>(Lcom/gpc/cropper/CropImageView;Landroid/net/Uri;[FIIIZIIIIZZLcom/gpc/cropper/CropImageView$RequestSizeOptions;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V
    .locals 1

    .line 181
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 183
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mCropImageViewReference:Ljava/lang/ref/WeakReference;

    .line 184
    invoke-virtual {p1}, Lcom/gpc/cropper/CropImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mContext:Landroid/content/Context;

    .line 185
    iput-object p2, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mUri:Landroid/net/Uri;

    .line 186
    iput-object p3, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mCropPoints:[F

    .line 187
    iput p4, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mDegreesRotated:I

    .line 188
    iput-boolean p7, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mFixAspectRatio:Z

    .line 189
    iput p8, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mAspectRatioX:I

    .line 190
    iput p9, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mAspectRatioY:I

    .line 191
    iput p5, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mOrgWidth:I

    .line 192
    iput p6, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mOrgHeight:I

    .line 193
    iput p10, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mReqWidth:I

    .line 194
    iput p11, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mReqHeight:I

    .line 195
    iput-boolean p12, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mFlipHorizontally:Z

    .line 196
    iput-boolean p13, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mFlipVertically:Z

    .line 197
    iput-object p14, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mReqSizeOptions:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    move-object/from16 p1, p15

    .line 198
    iput-object p1, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mSaveUri:Landroid/net/Uri;

    move-object/from16 p1, p16

    .line 199
    iput-object p1, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mSaveCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    move/from16 p1, p17

    .line 200
    iput p1, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mSaveCompressQuality:I

    const/4 p1, 0x0

    .line 201
    iput-object p1, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/gpc/cropper/BitmapCroppingWorkerTask$Result;
    .locals 17

    move-object/from16 v1, p0

    const/4 v2, 0x1

    .line 220
    :try_start_0
    invoke-virtual {v1}, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->isCancelled()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_4

    .line 223
    iget-object v5, v1, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mUri:Landroid/net/Uri;

    if-eqz v5, :cond_0

    .line 224
    iget-object v4, v1, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mCropPoints:[F

    iget v7, v1, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mDegreesRotated:I

    iget v8, v1, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mOrgWidth:I

    iget v9, v1, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mOrgHeight:I

    iget-boolean v10, v1, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mFixAspectRatio:Z

    iget v11, v1, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mAspectRatioX:I

    iget v12, v1, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mAspectRatioY:I

    iget v13, v1, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mReqWidth:I

    iget v14, v1, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mReqHeight:I

    iget-boolean v15, v1, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mFlipHorizontally:Z

    iget-boolean v0, v1, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mFlipVertically:Z

    move/from16 v16, v0

    .line 225
    invoke-static/range {v4 .. v16}, Lcom/gpc/cropper/BitmapUtils;->cropBitmap(Landroid/content/Context;Landroid/net/Uri;[FIIIZIIIIZZ)Lcom/gpc/cropper/BitmapUtils$BitmapSampled;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    .line 239
    iget-object v3, v1, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    .line 240
    iget-object v4, v1, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mCropPoints:[F

    iget v5, v1, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mDegreesRotated:I

    iget-boolean v6, v1, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mFixAspectRatio:Z

    iget v7, v1, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mAspectRatioX:I

    iget v8, v1, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mAspectRatioY:I

    iget-boolean v9, v1, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mFlipHorizontally:Z

    iget-boolean v10, v1, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mFlipVertically:Z

    .line 241
    invoke-static/range {v3 .. v10}, Lcom/gpc/cropper/BitmapUtils;->cropBitmapObjectHandleOOM(Landroid/graphics/Bitmap;[FIZIIZZ)Lcom/gpc/cropper/BitmapUtils$BitmapSampled;

    move-result-object v0

    .line 254
    :goto_0
    iget-object v3, v0, Lcom/gpc/cropper/BitmapUtils$BitmapSampled;->bitmap:Landroid/graphics/Bitmap;

    iget v4, v1, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mReqWidth:I

    iget v5, v1, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mReqHeight:I

    iget-object v6, v1, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mReqSizeOptions:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    .line 255
    invoke-static {v3, v4, v5, v6}, Lcom/gpc/cropper/BitmapUtils;->resizeBitmap(Landroid/graphics/Bitmap;IILcom/gpc/cropper/CropImageView$RequestSizeOptions;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 257
    iget-object v4, v1, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mSaveUri:Landroid/net/Uri;

    if-nez v4, :cond_1

    .line 258
    new-instance v4, Lcom/gpc/cropper/BitmapCroppingWorkerTask$Result;

    iget v0, v0, Lcom/gpc/cropper/BitmapUtils$BitmapSampled;->sampleSize:I

    invoke-direct {v4, v3, v0}, Lcom/gpc/cropper/BitmapCroppingWorkerTask$Result;-><init>(Landroid/graphics/Bitmap;I)V

    return-object v4

    .line 260
    :cond_1
    iget-object v5, v1, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mSaveCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget v7, v1, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mSaveCompressQuality:I

    invoke-static {v5, v3, v4, v6, v7}, Lcom/gpc/cropper/BitmapUtils;->writeBitmapToUri(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V

    if-eqz v3, :cond_2

    .line 263
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 265
    :cond_2
    new-instance v3, Lcom/gpc/cropper/BitmapCroppingWorkerTask$Result;

    iget-object v4, v1, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mSaveUri:Landroid/net/Uri;

    iget v0, v0, Lcom/gpc/cropper/BitmapUtils$BitmapSampled;->sampleSize:I

    invoke-direct {v3, v4, v0}, Lcom/gpc/cropper/BitmapCroppingWorkerTask$Result;-><init>(Landroid/net/Uri;I)V

    return-object v3

    .line 251
    :cond_3
    new-instance v3, Lcom/gpc/cropper/BitmapCroppingWorkerTask$Result;

    move-object v4, v0

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-direct {v3, v0, v2}, Lcom/gpc/cropper/BitmapCroppingWorkerTask$Result;-><init>(Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :cond_4
    move-object v0, v3

    return-object v0

    :catch_0
    move-exception v0

    .line 270
    new-instance v3, Lcom/gpc/cropper/BitmapCroppingWorkerTask$Result;

    iget-object v4, v1, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mSaveUri:Landroid/net/Uri;

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    invoke-direct {v3, v0, v2}, Lcom/gpc/cropper/BitmapCroppingWorkerTask$Result;-><init>(Ljava/lang/Exception;Z)V

    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->doInBackground([Ljava/lang/Void;)Lcom/gpc/cropper/BitmapCroppingWorkerTask$Result;

    move-result-object p1

    return-object p1
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected onPostExecute(Lcom/gpc/cropper/BitmapCroppingWorkerTask$Result;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 283
    invoke-virtual {p0}, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->mCropImageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/cropper/CropImageView;

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0, p1}, Lcom/gpc/cropper/CropImageView;->onImageCroppingAsyncComplete(Lcom/gpc/cropper/BitmapCroppingWorkerTask$Result;)V

    return-void

    .line 290
    :cond_0
    iget-object v0, p1, Lcom/gpc/cropper/BitmapCroppingWorkerTask$Result;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 292
    iget-object p1, p1, Lcom/gpc/cropper/BitmapCroppingWorkerTask$Result;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/gpc/cropper/BitmapCroppingWorkerTask$Result;

    invoke-virtual {p0, p1}, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->onPostExecute(Lcom/gpc/cropper/BitmapCroppingWorkerTask$Result;)V

    return-void
.end method
