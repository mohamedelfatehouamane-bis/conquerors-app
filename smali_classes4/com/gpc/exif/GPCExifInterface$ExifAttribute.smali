.class Lcom/gpc/exif/GPCExifInterface$ExifAttribute;
.super Ljava/lang/Object;
.source "GPCExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/exif/GPCExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExifAttribute"
.end annotation


# static fields
.field public static final BYTES_OFFSET_UNKNOWN:J = -0x1L


# instance fields
.field public final bytes:[B

.field public final bytesOffset:J

.field public final format:I

.field public final numberOfComponents:I


# direct methods
.method constructor <init>(IIJ[B)V
    .locals 0

    .line 3170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3171
    iput p1, p0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->format:I

    .line 3172
    iput p2, p0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->numberOfComponents:I

    .line 3173
    iput-wide p3, p0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->bytesOffset:J

    .line 3174
    iput-object p5, p0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->bytes:[B

    return-void
.end method

.method constructor <init>(II[B)V
    .locals 6

    const-wide/16 v3, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    .line 3166
    invoke-direct/range {v0 .. v5}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;-><init>(IIJ[B)V

    return-void
.end method

.method public static createByte(Ljava/lang/String;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;
    .locals 5

    .line 3221
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x31

    if-gt v2, v4, :cond_0

    .line 3222
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    sub-int/2addr p0, v3

    int-to-byte p0, p0

    new-array v2, v1, [B

    aput-byte p0, v2, v0

    .line 3223
    new-instance p0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    invoke-direct {p0, v1, v1, v2}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;-><init>(II[B)V

    return-object p0

    .line 3225
    :cond_0
    sget-object v0, Lcom/gpc/exif/GPCExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 3226
    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    array-length v2, p0

    invoke-direct {v0, v1, v2, p0}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v0
.end method

.method public static createDouble(DLjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;
    .locals 2

    const/4 v0, 0x1

    .line 3275
    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0, p2}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static createDouble([DLjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;
    .locals 5

    .line 3265
    sget-object v0, Lcom/gpc/exif/GPCExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/16 v1, 0xc

    aget v0, v0, v1

    array-length v2, p0

    mul-int v0, v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3267
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3268
    array-length p1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget-wide v3, p0, v2

    .line 3269
    invoke-virtual {v0, v3, v4}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3271
    :cond_0
    new-instance p1, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;-><init>(II[B)V

    return-object p1
.end method

.method public static createSLong(ILjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;
    .locals 0

    .line 3216
    filled-new-array {p0}, [I

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static createSLong([ILjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;
    .locals 4

    .line 3206
    sget-object v0, Lcom/gpc/exif/GPCExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    array-length v2, p0

    mul-int v0, v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3208
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3209
    array-length p1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget v3, p0, v2

    .line 3210
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3212
    :cond_0
    new-instance p1, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;-><init>(II[B)V

    return-object p1
.end method

.method public static createSRational(Lcom/gpc/exif/GPCExifInterface$Rational;Ljava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;
    .locals 2

    const/4 v0, 0x1

    .line 3261
    new-array v0, v0, [Lcom/gpc/exif/GPCExifInterface$Rational;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createSRational([Lcom/gpc/exif/GPCExifInterface$Rational;Ljava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static createSRational([Lcom/gpc/exif/GPCExifInterface$Rational;Ljava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;
    .locals 6

    .line 3250
    sget-object v0, Lcom/gpc/exif/GPCExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/16 v1, 0xa

    aget v0, v0, v1

    array-length v2, p0

    mul-int v0, v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3252
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3253
    array-length p1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget-object v3, p0, v2

    .line 3254
    iget-wide v4, v3, Lcom/gpc/exif/GPCExifInterface$Rational;->numerator:J

    long-to-int v5, v4

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3255
    iget-wide v3, v3, Lcom/gpc/exif/GPCExifInterface$Rational;->denominator:J

    long-to-int v4, v3

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3257
    :cond_0
    new-instance p1, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;-><init>(II[B)V

    return-object p1
.end method

.method public static createString(Ljava/lang/String;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;
    .locals 3

    .line 3230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/gpc/exif/GPCExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 3231
    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    const/4 v1, 0x2

    array-length v2, p0

    invoke-direct {v0, v1, v2, p0}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v0
.end method

.method public static createULong(JLjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;
    .locals 2

    const/4 v0, 0x1

    .line 3202
    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0, p2}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static createULong([JLjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;
    .locals 5

    .line 3192
    sget-object v0, Lcom/gpc/exif/GPCExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    array-length v2, p0

    mul-int v0, v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3194
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3195
    array-length p1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget-wide v3, p0, v2

    long-to-int v4, v3

    .line 3196
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3198
    :cond_0
    new-instance p1, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;-><init>(II[B)V

    return-object p1
.end method

.method public static createURational(Lcom/gpc/exif/GPCExifInterface$Rational;Ljava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;
    .locals 2

    const/4 v0, 0x1

    .line 3246
    new-array v0, v0, [Lcom/gpc/exif/GPCExifInterface$Rational;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createURational([Lcom/gpc/exif/GPCExifInterface$Rational;Ljava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static createURational([Lcom/gpc/exif/GPCExifInterface$Rational;Ljava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;
    .locals 6

    .line 3235
    sget-object v0, Lcom/gpc/exif/GPCExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    array-length v2, p0

    mul-int v0, v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3237
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3238
    array-length p1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget-object v3, p0, v2

    .line 3239
    iget-wide v4, v3, Lcom/gpc/exif/GPCExifInterface$Rational;->numerator:J

    long-to-int v5, v4

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3240
    iget-wide v3, v3, Lcom/gpc/exif/GPCExifInterface$Rational;->denominator:J

    long-to-int v4, v3

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3242
    :cond_0
    new-instance p1, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;-><init>(II[B)V

    return-object p1
.end method

.method public static createUShort(ILjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;
    .locals 0

    .line 3188
    filled-new-array {p0}, [I

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static createUShort([ILjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;
    .locals 4

    .line 3178
    sget-object v0, Lcom/gpc/exif/GPCExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    array-length v2, p0

    mul-int v0, v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3180
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3181
    array-length p1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget v3, p0, v2

    int-to-short v3, v3

    .line 3182
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3184
    :cond_0
    new-instance p1, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;-><init>(II[B)V

    return-object p1
.end method


# virtual methods
.method public getDoubleValue(Ljava/nio/ByteOrder;)D
    .locals 4

    .line 3407
    invoke-virtual {p0, p1}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 3411
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3412
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    .line 3414
    :cond_0
    instance-of v0, p1, [J

    const/4 v1, 0x0

    const-string v2, "There are more than one component"

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 3415
    check-cast p1, [J

    .line 3416
    array-length v0, p1

    if-ne v0, v3, :cond_1

    .line 3417
    aget-wide v0, p1, v1

    long-to-double v0, v0

    return-wide v0

    .line 3419
    :cond_1
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3421
    :cond_2
    instance-of v0, p1, [I

    if-eqz v0, :cond_4

    .line 3422
    check-cast p1, [I

    .line 3423
    array-length v0, p1

    if-ne v0, v3, :cond_3

    .line 3424
    aget p1, p1, v1

    int-to-double v0, p1

    return-wide v0

    .line 3426
    :cond_3
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3428
    :cond_4
    instance-of v0, p1, [D

    if-eqz v0, :cond_6

    .line 3429
    check-cast p1, [D

    .line 3430
    array-length v0, p1

    if-ne v0, v3, :cond_5

    .line 3431
    aget-wide v0, p1, v1

    return-wide v0

    .line 3433
    :cond_5
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3435
    :cond_6
    instance-of v0, p1, [Lcom/gpc/exif/GPCExifInterface$Rational;

    if-eqz v0, :cond_8

    .line 3436
    check-cast p1, [Lcom/gpc/exif/GPCExifInterface$Rational;

    .line 3437
    array-length v0, p1

    if-ne v0, v3, :cond_7

    .line 3438
    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/gpc/exif/GPCExifInterface$Rational;->calculate()D

    move-result-wide v0

    return-wide v0

    .line 3440
    :cond_7
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3442
    :cond_8
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "Couldn\'t find a double value"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3409
    :cond_9
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "NULL can\'t be converted to a double value"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getIntValue(Ljava/nio/ByteOrder;)I
    .locals 4

    .line 3446
    invoke-virtual {p0, p1}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 3450
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3451
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 3453
    :cond_0
    instance-of v0, p1, [J

    const/4 v1, 0x0

    const-string v2, "There are more than one component"

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 3454
    check-cast p1, [J

    .line 3455
    array-length v0, p1

    if-ne v0, v3, :cond_1

    .line 3456
    aget-wide v0, p1, v1

    long-to-int p1, v0

    return p1

    .line 3458
    :cond_1
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3460
    :cond_2
    instance-of v0, p1, [I

    if-eqz v0, :cond_4

    .line 3461
    check-cast p1, [I

    .line 3462
    array-length v0, p1

    if-ne v0, v3, :cond_3

    .line 3463
    aget p1, p1, v1

    return p1

    .line 3465
    :cond_3
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3467
    :cond_4
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "Couldn\'t find a integer value"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3448
    :cond_5
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "NULL can\'t be converted to a integer value"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;
    .locals 7

    .line 3471
    invoke-virtual {p0, p1}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 3475
    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 3476
    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 3479
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3480
    instance-of v2, p1, [J

    const-string v3, ","

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 3481
    check-cast p1, [J

    .line 3482
    :cond_2
    :goto_0
    array-length v0, p1

    if-ge v4, v0, :cond_3

    .line 3483
    aget-wide v5, p1, v4

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    .line 3484
    array-length v0, p1

    if-eq v4, v0, :cond_2

    .line 3485
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3488
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3490
    :cond_4
    instance-of v2, p1, [I

    if-eqz v2, :cond_7

    .line 3491
    check-cast p1, [I

    .line 3492
    :cond_5
    :goto_1
    array-length v0, p1

    if-ge v4, v0, :cond_6

    .line 3493
    aget v0, p1, v4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    .line 3494
    array-length v0, p1

    if-eq v4, v0, :cond_5

    .line 3495
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3498
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3500
    :cond_7
    instance-of v2, p1, [D

    if-eqz v2, :cond_a

    .line 3501
    check-cast p1, [D

    .line 3502
    :cond_8
    :goto_2
    array-length v0, p1

    if-ge v4, v0, :cond_9

    .line 3503
    aget-wide v5, p1, v4

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    .line 3504
    array-length v0, p1

    if-eq v4, v0, :cond_8

    .line 3505
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3508
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3510
    :cond_a
    instance-of v2, p1, [Lcom/gpc/exif/GPCExifInterface$Rational;

    if-eqz v2, :cond_d

    .line 3511
    check-cast p1, [Lcom/gpc/exif/GPCExifInterface$Rational;

    .line 3512
    :cond_b
    :goto_3
    array-length v0, p1

    if-ge v4, v0, :cond_c

    .line 3513
    aget-object v0, p1, v4

    iget-wide v5, v0, Lcom/gpc/exif/GPCExifInterface$Rational;->numerator:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    .line 3514
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3515
    aget-object v0, p1, v4

    iget-wide v5, v0, Lcom/gpc/exif/GPCExifInterface$Rational;->denominator:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    .line 3516
    array-length v0, p1

    if-eq v4, v0, :cond_b

    .line 3517
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 3520
    :cond_c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_d
    return-object v0
.end method

.method getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .locals 10

    .line 3285
    const-string v0, "IOException occurred while closing InputStream"

    const-string v1, "ExifInterface"

    const/4 v2, 0x0

    .line 3287
    :try_start_0
    new-instance v3, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;

    iget-object v4, p0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v3, v4}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3288
    :try_start_1
    invoke-virtual {v3, p1}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 3289
    iget p1, p0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->format:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3398
    :try_start_2
    invoke-virtual {v3}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    return-object v2

    .line 3383
    :pswitch_0
    :try_start_3
    iget p1, p0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [D

    .line 3384
    :goto_0
    iget v5, p0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v4, v5, :cond_0

    .line 3385
    invoke-virtual {v3}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readDouble()D

    move-result-wide v5

    aput-wide v5, p1, v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3398
    :cond_0
    :try_start_4
    invoke-virtual {v3}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object p1

    :catch_0
    move-exception v2

    .line 3400
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1

    .line 3376
    :pswitch_1
    :try_start_5
    iget p1, p0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [D

    .line 3377
    :goto_1
    iget v5, p0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v4, v5, :cond_1

    .line 3378
    invoke-virtual {v3}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readFloat()F

    move-result v5

    float-to-double v5, v5

    aput-wide v5, p1, v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_c
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3398
    :cond_1
    :try_start_6
    invoke-virtual {v3}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    return-object p1

    :catch_1
    move-exception v2

    .line 3400
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1

    .line 3367
    :pswitch_2
    :try_start_7
    iget p1, p0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [Lcom/gpc/exif/GPCExifInterface$Rational;

    .line 3368
    :goto_2
    iget v5, p0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v4, v5, :cond_2

    .line 3369
    invoke-virtual {v3}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v5

    int-to-long v5, v5

    .line 3370
    invoke-virtual {v3}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v7

    int-to-long v7, v7

    .line 3371
    new-instance v9, Lcom/gpc/exif/GPCExifInterface$Rational;

    invoke-direct {v9, v5, v6, v7, v8}, Lcom/gpc/exif/GPCExifInterface$Rational;-><init>(JJ)V

    aput-object v9, p1, v4
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 3398
    :cond_2
    :try_start_8
    invoke-virtual {v3}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    return-object p1

    :catch_2
    move-exception v2

    .line 3400
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1

    .line 3360
    :pswitch_3
    :try_start_9
    iget p1, p0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [I

    .line 3361
    :goto_3
    iget v5, p0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v4, v5, :cond_3

    .line 3362
    invoke-virtual {v3}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v5

    aput v5, p1, v4
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 3398
    :cond_3
    :try_start_a
    invoke-virtual {v3}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    return-object p1

    :catch_3
    move-exception v2

    .line 3400
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1

    .line 3353
    :pswitch_4
    :try_start_b
    iget p1, p0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [I

    .line 3354
    :goto_4
    iget v5, p0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v4, v5, :cond_4

    .line 3355
    invoke-virtual {v3}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v5

    aput v5, p1, v4
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 3398
    :cond_4
    :try_start_c
    invoke-virtual {v3}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    return-object p1

    :catch_4
    move-exception v2

    .line 3400
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1

    .line 3344
    :pswitch_5
    :try_start_d
    iget p1, p0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [Lcom/gpc/exif/GPCExifInterface$Rational;

    .line 3345
    :goto_5
    iget v5, p0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v4, v5, :cond_5

    .line 3346
    invoke-virtual {v3}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v5

    .line 3347
    invoke-virtual {v3}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v7

    .line 3348
    new-instance v9, Lcom/gpc/exif/GPCExifInterface$Rational;

    invoke-direct {v9, v5, v6, v7, v8}, Lcom/gpc/exif/GPCExifInterface$Rational;-><init>(JJ)V

    aput-object v9, p1, v4
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 3398
    :cond_5
    :try_start_e
    invoke-virtual {v3}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    return-object p1

    :catch_5
    move-exception v2

    .line 3400
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1

    .line 3337
    :pswitch_6
    :try_start_f
    iget p1, p0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [J

    .line 3338
    :goto_6
    iget v5, p0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v4, v5, :cond_6

    .line 3339
    invoke-virtual {v3}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v5

    aput-wide v5, p1, v4
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 3398
    :cond_6
    :try_start_10
    invoke-virtual {v3}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    return-object p1

    :catch_6
    move-exception v2

    .line 3400
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1

    .line 3330
    :pswitch_7
    :try_start_11
    iget p1, p0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [I

    .line 3331
    :goto_7
    iget v5, p0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v4, v5, :cond_7

    .line 3332
    invoke-virtual {v3}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v5

    aput v5, p1, v4
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_c
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 3398
    :cond_7
    :try_start_12
    invoke-virtual {v3}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7

    return-object p1

    :catch_7
    move-exception v2

    .line 3400
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1

    .line 3301
    :pswitch_8
    :try_start_13
    iget p1, p0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->numberOfComponents:I

    sget-object v5, Lcom/gpc/exif/GPCExifInterface;->EXIF_ASCII_PREFIX:[B

    array-length v5, v5

    if-lt p1, v5, :cond_a

    const/4 p1, 0x0

    .line 3303
    :goto_8
    sget-object v5, Lcom/gpc/exif/GPCExifInterface;->EXIF_ASCII_PREFIX:[B

    array-length v5, v5

    if-ge p1, v5, :cond_9

    .line 3304
    iget-object v5, p0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->bytes:[B

    aget-byte v5, v5, p1

    sget-object v6, Lcom/gpc/exif/GPCExifInterface;->EXIF_ASCII_PREFIX:[B

    aget-byte v6, v6, p1

    if-eq v5, v6, :cond_8

    goto :goto_9

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    .line 3310
    :cond_9
    sget-object p1, Lcom/gpc/exif/GPCExifInterface;->EXIF_ASCII_PREFIX:[B

    array-length v4, p1

    .line 3314
    :cond_a
    :goto_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3315
    :goto_a
    iget v5, p0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v4, v5, :cond_d

    .line 3316
    iget-object v5, p0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->bytes:[B

    aget-byte v5, v5, v4

    if-nez v5, :cond_b

    goto :goto_c

    :cond_b
    const/16 v6, 0x20

    if-lt v5, v6, :cond_c

    int-to-char v5, v5

    .line 3321
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_c
    const/16 v5, 0x3f

    .line 3323
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 3327
    :cond_d
    :goto_c
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 3398
    :try_start_14
    invoke-virtual {v3}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8

    return-object p1

    :catch_8
    move-exception v2

    .line 3400
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1

    .line 3293
    :pswitch_9
    :try_start_15
    iget-object p1, p0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->bytes:[B

    array-length v5, p1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_e

    aget-byte p1, p1, v4

    if-ltz p1, :cond_e

    if-gt p1, v6, :cond_e

    .line 3294
    new-instance p1, Ljava/lang/String;

    iget-object v5, p0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->bytes:[B

    aget-byte v5, v5, v4

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    new-array v6, v6, [C

    aput-char v5, v6, v4

    invoke-direct {p1, v6}, Ljava/lang/String;-><init>([C)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_c
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 3398
    :try_start_16
    invoke-virtual {v3}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_9

    return-object p1

    :catch_9
    move-exception v2

    .line 3400
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1

    .line 3296
    :cond_e
    :try_start_17
    new-instance p1, Ljava/lang/String;

    iget-object v4, p0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->bytes:[B

    sget-object v5, Lcom/gpc/exif/GPCExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {p1, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_c
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 3398
    :try_start_18
    invoke-virtual {v3}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_a

    return-object p1

    :catch_a
    move-exception v2

    .line 3400
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1

    :catch_b
    move-exception p1

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :catch_c
    move-exception p1

    goto :goto_d

    :catchall_0
    move-exception p1

    goto :goto_f

    :catch_d
    move-exception p1

    move-object v3, v2

    .line 3393
    :goto_d
    :try_start_19
    const-string v4, "IOException occurred during reading a value"

    invoke-static {v1, v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    if-eqz v3, :cond_f

    .line 3398
    :try_start_1a
    invoke-virtual {v3}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_e

    goto :goto_e

    :catch_e
    move-exception p1

    .line 3400
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_f
    :goto_e
    return-object v2

    :catchall_1
    move-exception p1

    move-object v2, v3

    :goto_f
    if-eqz v2, :cond_10

    .line 3398
    :try_start_1b
    invoke-virtual {v2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_f

    goto :goto_10

    :catch_f
    move-exception v2

    .line 3400
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3403
    :cond_10
    :goto_10
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public size()I
    .locals 2

    .line 3526
    sget-object v0, Lcom/gpc/exif/GPCExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    iget v1, p0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->format:I

    aget v0, v0, v1

    iget v1, p0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->numberOfComponents:I

    mul-int v0, v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 3280
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/gpc/exif/GPCExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v2, p0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->format:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->bytes:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
