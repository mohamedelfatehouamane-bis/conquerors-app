.class final Lcom/gpc/cropper/BitmapUtils$BitmapSampled;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/cropper/BitmapUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BitmapSampled"
.end annotation


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;

.field final sampleSize:I


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 898
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 899
    iput-object p1, p0, Lcom/gpc/cropper/BitmapUtils$BitmapSampled;->bitmap:Landroid/graphics/Bitmap;

    .line 900
    iput p2, p0, Lcom/gpc/cropper/BitmapUtils$BitmapSampled;->sampleSize:I

    return-void
.end method
