.class Lcom/gpc/exif/GPCExifInterface$Rational;
.super Ljava/lang/Object;
.source "GPCExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/exif/GPCExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Rational"
.end annotation


# instance fields
.field public final denominator:J

.field public final numerator:J


# direct methods
.method constructor <init>(D)V
    .locals 2

    const-wide v0, 0x40c3880000000000L    # 10000.0

    mul-double p1, p1, v0

    double-to-long p1, p1

    const-wide/16 v0, 0x2710

    .line 3130
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/gpc/exif/GPCExifInterface$Rational;-><init>(JJ)V

    return-void
.end method

.method constructor <init>(JJ)V
    .locals 3

    .line 3134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    .line 3137
    iput-wide v0, p0, Lcom/gpc/exif/GPCExifInterface$Rational;->numerator:J

    const-wide/16 p1, 0x1

    .line 3138
    iput-wide p1, p0, Lcom/gpc/exif/GPCExifInterface$Rational;->denominator:J

    return-void

    .line 3141
    :cond_0
    iput-wide p1, p0, Lcom/gpc/exif/GPCExifInterface$Rational;->numerator:J

    .line 3142
    iput-wide p3, p0, Lcom/gpc/exif/GPCExifInterface$Rational;->denominator:J

    return-void
.end method


# virtual methods
.method public calculate()D
    .locals 4

    .line 3151
    iget-wide v0, p0, Lcom/gpc/exif/GPCExifInterface$Rational;->numerator:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/gpc/exif/GPCExifInterface$Rational;->denominator:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 3147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/gpc/exif/GPCExifInterface$Rational;->numerator:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/gpc/exif/GPCExifInterface$Rational;->denominator:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
