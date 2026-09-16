.class final Lcom/gpc/cropper/BitmapCroppingWorkerTask$Result;
.super Ljava/lang/Object;
.source "BitmapCroppingWorkerTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/cropper/BitmapCroppingWorkerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Result"
.end annotation


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;

.field final error:Ljava/lang/Exception;

.field final isSave:Z

.field final sampleSize:I

.field public final uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput-object p1, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask$Result;->bitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 331
    iput-object p1, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask$Result;->uri:Landroid/net/Uri;

    .line 332
    iput-object p1, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask$Result;->error:Ljava/lang/Exception;

    const/4 p1, 0x0

    .line 333
    iput-boolean p1, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask$Result;->isSave:Z

    .line 334
    iput p2, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask$Result;->sampleSize:I

    return-void
.end method

.method constructor <init>(Landroid/net/Uri;I)V
    .locals 1

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 338
    iput-object v0, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask$Result;->bitmap:Landroid/graphics/Bitmap;

    .line 339
    iput-object p1, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask$Result;->uri:Landroid/net/Uri;

    .line 340
    iput-object v0, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask$Result;->error:Ljava/lang/Exception;

    const/4 p1, 0x1

    .line 341
    iput-boolean p1, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask$Result;->isSave:Z

    .line 342
    iput p2, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask$Result;->sampleSize:I

    return-void
.end method

.method constructor <init>(Ljava/lang/Exception;Z)V
    .locals 1

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 346
    iput-object v0, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask$Result;->bitmap:Landroid/graphics/Bitmap;

    .line 347
    iput-object v0, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask$Result;->uri:Landroid/net/Uri;

    .line 348
    iput-object p1, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask$Result;->error:Ljava/lang/Exception;

    .line 349
    iput-boolean p2, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask$Result;->isSave:Z

    const/4 p1, 0x1

    .line 350
    iput p1, p0, Lcom/gpc/cropper/BitmapCroppingWorkerTask$Result;->sampleSize:I

    return-void
.end method
