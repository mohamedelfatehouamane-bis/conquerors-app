.class Lcom/gpc/exif/GPCExifInterface$ExifTag;
.super Ljava/lang/Object;
.source "GPCExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/exif/GPCExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExifTag"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final number:I

.field public final primaryFormat:I

.field public final secondaryFormat:I


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 3538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3539
    iput-object p1, p0, Lcom/gpc/exif/GPCExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 3540
    iput p2, p0, Lcom/gpc/exif/GPCExifInterface$ExifTag;->number:I

    .line 3541
    iput p3, p0, Lcom/gpc/exif/GPCExifInterface$ExifTag;->primaryFormat:I

    const/4 p1, -0x1

    .line 3542
    iput p1, p0, Lcom/gpc/exif/GPCExifInterface$ExifTag;->secondaryFormat:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;III)V
    .locals 0

    .line 3546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3547
    iput-object p1, p0, Lcom/gpc/exif/GPCExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 3548
    iput p2, p0, Lcom/gpc/exif/GPCExifInterface$ExifTag;->number:I

    .line 3549
    iput p3, p0, Lcom/gpc/exif/GPCExifInterface$ExifTag;->primaryFormat:I

    .line 3550
    iput p4, p0, Lcom/gpc/exif/GPCExifInterface$ExifTag;->secondaryFormat:I

    return-void
.end method


# virtual methods
.method isFormatCompatible(I)Z
    .locals 4

    .line 3555
    iget v0, p0, Lcom/gpc/exif/GPCExifInterface$ExifTag;->primaryFormat:I

    const/4 v1, 0x1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_8

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eq v0, p1, :cond_8

    .line 3557
    iget v2, p0, Lcom/gpc/exif/GPCExifInterface$ExifTag;->secondaryFormat:I

    if-ne v2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    if-ne v2, v3, :cond_3

    :cond_2
    const/4 v3, 0x3

    if-ne p1, v3, :cond_3

    return v1

    :cond_3
    const/16 v3, 0x9

    if-eq v0, v3, :cond_4

    if-ne v2, v3, :cond_5

    :cond_4
    const/16 v3, 0x8

    if-ne p1, v3, :cond_5

    return v1

    :cond_5
    const/16 v3, 0xc

    if-eq v0, v3, :cond_6

    if-ne v2, v3, :cond_7

    :cond_6
    const/16 v0, 0xb

    if-ne p1, v0, :cond_7

    return v1

    :cond_7
    const/4 p1, 0x0

    return p1

    :cond_8
    :goto_0
    return v1
.end method
