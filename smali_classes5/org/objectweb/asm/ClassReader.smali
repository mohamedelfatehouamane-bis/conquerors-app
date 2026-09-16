.class public Lorg/objectweb/asm/ClassReader;
.super Ljava/lang/Object;
.source "ClassReader.java"


# static fields
.field static final EXPAND_ASM_INSNS:I = 0x100

.field public static final EXPAND_FRAMES:I = 0x8

.field private static final INPUT_STREAM_DATA_CHUNK_SIZE:I = 0x1000

.field private static final MAX_BUFFER_SIZE:I = 0x100000

.field public static final SKIP_CODE:I = 0x1

.field public static final SKIP_DEBUG:I = 0x2

.field public static final SKIP_FRAMES:I = 0x4


# instance fields
.field public final b:[B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final bootstrapMethodOffsets:[I

.field final classFileBuffer:[B

.field private final constantDynamicValues:[Lorg/objectweb/asm/ConstantDynamic;

.field private final constantUtf8Values:[Ljava/lang/String;

.field private final cpInfoOffsets:[I

.field public final header:I

.field private final maxStringLength:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 287
    invoke-static {p1, v0}, Lorg/objectweb/asm/ClassReader;->readStream(Ljava/io/InputStream;Z)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/objectweb/asm/ClassReader;-><init>([B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    .line 300
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".class"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    const/4 v0, 0x1

    .line 299
    invoke-static {p1, v0}, Lorg/objectweb/asm/ClassReader;->readStream(Ljava/io/InputStream;Z)[B

    move-result-object p1

    .line 298
    invoke-direct {p0, p1}, Lorg/objectweb/asm/ClassReader;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    const/4 v0, 0x0

    .line 166
    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/objectweb/asm/ClassReader;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    const/4 p3, 0x1

    .line 180
    invoke-direct {p0, p1, p2, p3}, Lorg/objectweb/asm/ClassReader;-><init>([BIZ)V

    return-void
.end method

.method constructor <init>([BIZ)V
    .locals 10

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p1, p0, Lorg/objectweb/asm/ClassReader;->classFileBuffer:[B

    .line 194
    iput-object p1, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    if-eqz p3, :cond_1

    add-int/lit8 p3, p2, 0x6

    .line 197
    invoke-virtual {p0, p3}, Lorg/objectweb/asm/ClassReader;->readShort(I)S

    move-result v0

    const/16 v1, 0x3e

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported class file major version "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0, p3}, Lorg/objectweb/asm/ClassReader;->readShort(I)S

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    add-int/lit8 p3, p2, 0x8

    .line 203
    invoke-virtual {p0, p3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result p3

    .line 204
    new-array v0, p3, [I

    iput-object v0, p0, Lorg/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    .line 205
    new-array v0, p3, [Ljava/lang/String;

    iput-object v0, p0, Lorg/objectweb/asm/ClassReader;->constantUtf8Values:[Ljava/lang/String;

    add-int/lit8 p2, p2, 0xa

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_1
    if-ge v4, p3, :cond_3

    .line 217
    iget-object v5, p0, Lorg/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, p2, 0x1

    aput v7, v5, v4

    .line 219
    aget-byte v5, p1, p2

    const/4 v8, 0x3

    const/4 v9, 0x5

    packed-switch v5, :pswitch_data_0

    .line 262
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_1
    move v4, v6

    goto :goto_2

    :pswitch_2
    move v4, v6

    const/4 v2, 0x1

    :goto_2
    const/4 v3, 0x1

    goto :goto_3

    :pswitch_3
    const/4 v8, 0x4

    goto :goto_4

    :pswitch_4
    add-int/lit8 v4, v4, 0x2

    const/16 v8, 0x9

    goto :goto_5

    :pswitch_5
    move v4, v6

    :goto_3
    const/4 v8, 0x5

    goto :goto_5

    .line 243
    :pswitch_6
    invoke-virtual {p0, v7}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    add-int/2addr v8, v4

    if-le v8, v0, :cond_2

    move v4, v6

    move v0, v8

    goto :goto_5

    :cond_2
    :goto_4
    :pswitch_7
    move v4, v6

    :goto_5
    add-int/2addr p2, v8

    goto :goto_1

    .line 266
    :cond_3
    iput v0, p0, Lorg/objectweb/asm/ClassReader;->maxStringLength:I

    .line 268
    iput p2, p0, Lorg/objectweb/asm/ClassReader;->header:I

    const/4 p1, 0x0

    if-eqz v2, :cond_4

    .line 271
    new-array p2, p3, [Lorg/objectweb/asm/ConstantDynamic;

    goto :goto_6

    :cond_4
    move-object p2, p1

    :goto_6
    iput-object p2, p0, Lorg/objectweb/asm/ClassReader;->constantDynamicValues:[Lorg/objectweb/asm/ConstantDynamic;

    if-eqz v3, :cond_5

    .line 275
    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassReader;->readBootstrapMethodsAttribute(I)[I

    move-result-object p1

    :cond_5
    iput-object p1, p0, Lorg/objectweb/asm/ClassReader;->bootstrapMethodOffsets:[I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private static calculateBufferSize(Ljava/io/InputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    const/16 v0, 0x100

    if-ge p0, v0, :cond_0

    const/16 p0, 0x1000

    return p0

    :cond_0
    const/high16 v0, 0x100000

    .line 348
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private computeImplicitFrame(Lorg/objectweb/asm/Context;)V
    .locals 10

    .line 3198
    iget-object v0, p1, Lorg/objectweb/asm/Context;->currentMethodDescriptor:Ljava/lang/String;

    .line 3199
    iget-object v1, p1, Lorg/objectweb/asm/Context;->currentFrameLocalTypes:[Ljava/lang/Object;

    .line 3201
    iget v2, p1, Lorg/objectweb/asm/Context;->currentMethodAccessFlags:I

    and-int/lit8 v2, v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 3202
    const-string v2, "<init>"

    iget-object v5, p1, Lorg/objectweb/asm/Context;->currentMethodName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3203
    sget-object v2, Lorg/objectweb/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    aput-object v2, v1, v4

    goto :goto_0

    .line 3205
    :cond_0
    iget v2, p0, Lorg/objectweb/asm/ClassReader;->header:I

    add-int/lit8 v2, v2, 0x2

    iget-object v5, p1, Lorg/objectweb/asm/Context;->charBuffer:[C

    invoke-virtual {p0, v2, v5}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    :goto_0
    const/4 v4, 0x1

    :cond_1
    const/4 v2, 0x1

    :goto_1
    add-int/lit8 v5, v2, 0x1

    .line 3213
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x46

    if-eq v6, v7, :cond_9

    const/16 v7, 0x3b

    const/16 v8, 0x4c

    if-eq v6, v8, :cond_7

    const/16 v9, 0x53

    if-eq v6, v9, :cond_6

    const/16 v9, 0x49

    if-eq v6, v9, :cond_6

    const/16 v9, 0x4a

    if-eq v6, v9, :cond_5

    const/16 v9, 0x5a

    if-eq v6, v9, :cond_6

    const/16 v9, 0x5b

    if-eq v6, v9, :cond_2

    packed-switch v6, :pswitch_data_0

    .line 3253
    iput v4, p1, Lorg/objectweb/asm/Context;->currentFrameLocalCount:I

    return-void

    :pswitch_0
    add-int/lit8 v2, v4, 0x1

    .line 3228
    sget-object v6, Lorg/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    aput-object v6, v1, v4

    goto :goto_4

    .line 3231
    :cond_2
    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3234
    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_4

    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 3236
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v7, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v4, 0x1

    add-int/2addr v5, v3

    .line 3241
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    move v2, v5

    move v4, v6

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v4, 0x1

    .line 3225
    sget-object v6, Lorg/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    aput-object v6, v1, v4

    goto :goto_4

    :cond_6
    :pswitch_1
    add-int/lit8 v2, v4, 0x1

    .line 3219
    sget-object v6, Lorg/objectweb/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    aput-object v6, v1, v4

    :goto_4
    move v4, v2

    move v2, v5

    goto :goto_1

    :cond_7
    move v2, v5

    .line 3245
    :goto_5
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v7, :cond_8

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v2, 0x1

    .line 3249
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    move v4, v6

    move v2, v7

    goto :goto_1

    :cond_9
    add-int/lit8 v2, v4, 0x1

    .line 3222
    sget-object v6, Lorg/objectweb/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    aput-object v6, v1, v4

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createDebugLabel(I[Lorg/objectweb/asm/Label;)V
    .locals 1

    .line 2709
    aget-object v0, p2, p1

    if-nez v0, :cond_0

    .line 2710
    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move-result-object p1

    iget-short p2, p1, Lorg/objectweb/asm/Label;->flags:S

    or-int/lit8 p2, p2, 0x1

    int-to-short p2, p2

    iput-short p2, p1, Lorg/objectweb/asm/Label;->flags:S

    :cond_0
    return-void
.end method

.method private createLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;
    .locals 0

    .line 2695
    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move-result-object p1

    .line 2696
    iget-short p2, p1, Lorg/objectweb/asm/Label;->flags:S

    and-int/lit8 p2, p2, -0x2

    int-to-short p2, p2

    iput-short p2, p1, Lorg/objectweb/asm/Label;->flags:S

    return-object p1
.end method

.method private getTypeAnnotationBytecodeOffset([II)I
    .locals 2

    if-eqz p1, :cond_1

    .line 2837
    array-length v0, p1

    if-ge p2, v0, :cond_1

    aget v0, p1, p2

    .line 2839
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readByte(I)I

    move-result v0

    const/16 v1, 0x43

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2842
    :cond_0
    aget p1, p1, p2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method private readAttribute([Lorg/objectweb/asm/Attribute;Ljava/lang/String;II[CI[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Attribute;
    .locals 9

    .line 3529
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 3530
    iget-object v3, v2, Lorg/objectweb/asm/Attribute;->type:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, p0

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    move-object/from16 v8, p7

    .line 3531
    invoke-virtual/range {v2 .. v8}, Lorg/objectweb/asm/Attribute;->read(Lorg/objectweb/asm/ClassReader;II[CI[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Attribute;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3535
    :cond_1
    new-instance v0, Lorg/objectweb/asm/Attribute;

    invoke-direct {v0, p2}, Lorg/objectweb/asm/Attribute;-><init>(Ljava/lang/String;)V

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v6}, Lorg/objectweb/asm/Attribute;->read(Lorg/objectweb/asm/ClassReader;II[CI[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Attribute;

    move-result-object p1

    return-object p1
.end method

.method private readBootstrapMethodsAttribute(I)[I
    .locals 6

    .line 3475
    new-array p1, p1, [C

    .line 3476
    invoke-virtual {p0}, Lorg/objectweb/asm/ClassReader;->getFirstAttributeOffset()I

    move-result v0

    add-int/lit8 v1, v0, -0x2

    .line 3477
    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    :goto_0
    if-lez v1, :cond_2

    .line 3479
    invoke-virtual {p0, v0, p1}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v0, 0x2

    .line 3480
    invoke-virtual {p0, v3}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/lit8 v4, v0, 0x6

    .line 3482
    const-string v5, "BootstrapMethods"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3484
    invoke-virtual {p0, v4}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result p1

    new-array v1, p1, [I

    add-int/lit8 v0, v0, 0x8

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_0

    .line 3488
    aput v0, v1, v2

    add-int/lit8 v3, v0, 0x2

    .line 3492
    invoke-virtual {p0, v3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x4

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    return-object v1

    :cond_1
    add-int v0, v4, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3498
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private readCode(Lorg/objectweb/asm/MethodVisitor;Lorg/objectweb/asm/Context;I)V
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v6, p3

    .line 1539
    iget-object v10, v0, Lorg/objectweb/asm/ClassReader;->classFileBuffer:[B

    .line 1540
    iget-object v5, v9, Lorg/objectweb/asm/Context;->charBuffer:[C

    .line 1541
    invoke-virtual {v0, v6}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v11

    add-int/lit8 v1, v6, 0x2

    .line 1542
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v12

    add-int/lit8 v1, v6, 0x4

    .line 1543
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v13

    add-int/lit8 v14, v6, 0x8

    .line 1545
    iget-object v1, v0, Lorg/objectweb/asm/ClassReader;->classFileBuffer:[B

    array-length v1, v1

    sub-int/2addr v1, v14

    if-gt v13, v1, :cond_3f

    add-int v15, v14, v13

    add-int/lit8 v1, v13, 0x1

    .line 1552
    new-array v7, v1, [Lorg/objectweb/asm/Label;

    iput-object v7, v9, Lorg/objectweb/asm/Context;->currentMethodLabels:[Lorg/objectweb/asm/Label;

    move v1, v14

    :cond_0
    :goto_0
    const/16 v2, 0x84

    const/4 v3, 0x1

    if-ge v1, v15, :cond_3

    sub-int v16, v1, v14

    const/16 v17, 0x8

    .line 1555
    aget-byte v4, v10, v1

    and-int/lit16 v4, v4, 0xff

    packed-switch v4, :pswitch_data_0

    .line 1843
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :pswitch_0
    add-int/lit8 v2, v1, 0x1

    .line 1745
    invoke-virtual {v0, v2}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    add-int v2, v16, v2

    invoke-direct {v0, v2, v7}, Lorg/objectweb/asm/ClassReader;->createLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    goto/16 :goto_4

    :pswitch_1
    add-int/lit8 v2, v1, 0x1

    .line 1751
    invoke-virtual {v0, v2}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v2

    add-int v2, v16, v2

    invoke-direct {v0, v2, v7}, Lorg/objectweb/asm/ClassReader;->createLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    goto :goto_1

    :cond_1
    :pswitch_2
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :pswitch_3
    add-int/lit8 v3, v1, 0x1

    .line 1755
    aget-byte v3, v10, v3

    and-int/lit16 v3, v3, 0xff

    if-eq v3, v2, :cond_2

    const/16 v2, 0xa9

    if-eq v3, v2, :cond_1

    packed-switch v3, :pswitch_data_1

    packed-switch v3, :pswitch_data_2

    .line 1773
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_2
    add-int/lit8 v1, v1, 0x6

    goto :goto_0

    :goto_1
    :pswitch_4
    add-int/lit8 v1, v1, 0x5

    goto :goto_0

    :pswitch_5
    and-int/lit8 v2, v16, 0x3

    rsub-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    .line 1793
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v2

    add-int v2, v16, v2

    invoke-direct {v0, v2, v7}, Lorg/objectweb/asm/ClassReader;->createLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    add-int/lit8 v2, v1, 0x4

    .line 1794
    invoke-virtual {v0, v2}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v2

    add-int/lit8 v1, v1, 0x8

    :goto_2
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_0

    add-int/lit8 v2, v1, 0x4

    .line 1798
    invoke-virtual {v0, v2}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v2

    add-int v2, v16, v2

    invoke-direct {v0, v2, v7}, Lorg/objectweb/asm/ClassReader;->createLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    add-int/lit8 v1, v1, 0x8

    move v2, v3

    goto :goto_2

    :pswitch_6
    and-int/lit8 v2, v16, 0x3

    rsub-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    .line 1780
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v2

    add-int v2, v16, v2

    invoke-direct {v0, v2, v7}, Lorg/objectweb/asm/ClassReader;->createLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    add-int/lit8 v2, v1, 0x8

    .line 1781
    invoke-virtual {v0, v2}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v2

    add-int/lit8 v4, v1, 0x4

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v4

    sub-int/2addr v2, v4

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0xc

    :goto_3
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_0

    .line 1785
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v2

    add-int v2, v16, v2

    invoke-direct {v0, v2, v7}, Lorg/objectweb/asm/ClassReader;->createLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    add-int/lit8 v1, v1, 0x4

    move v2, v3

    goto :goto_3

    :pswitch_7
    add-int/lit8 v2, v1, 0x1

    .line 1724
    invoke-virtual {v0, v2}, Lorg/objectweb/asm/ClassReader;->readShort(I)S

    move-result v2

    add-int v2, v16, v2

    invoke-direct {v0, v2, v7}, Lorg/objectweb/asm/ClassReader;->createLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    :goto_4
    :pswitch_8
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :pswitch_9
    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_0

    :pswitch_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    const/16 v17, 0x8

    .line 1849
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    add-int/lit8 v1, v1, 0x2

    :goto_5
    add-int/lit8 v16, v4, -0x1

    if-lez v4, :cond_4

    .line 1852
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    invoke-direct {v0, v4, v7}, Lorg/objectweb/asm/ClassReader;->createLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move-result-object v4

    add-int/lit8 v2, v1, 0x2

    .line 1853
    invoke-virtual {v0, v2}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    invoke-direct {v0, v2, v7}, Lorg/objectweb/asm/ClassReader;->createLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move-result-object v2

    add-int/lit8 v3, v1, 0x4

    .line 1854
    invoke-virtual {v0, v3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    invoke-direct {v0, v3, v7}, Lorg/objectweb/asm/ClassReader;->createLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move-result-object v3

    .line 1855
    iget-object v6, v0, Lorg/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    move-object/from16 v20, v6

    add-int/lit8 v6, v1, 0x6

    invoke-virtual {v0, v6}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    aget v6, v20, v6

    invoke-virtual {v0, v6, v5}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v1, v1, 0x8

    .line 1857
    invoke-virtual {v8, v4, v2, v3, v6}, Lorg/objectweb/asm/MethodVisitor;->visitTryCatchBlock(Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Ljava/lang/String;)V

    move/from16 v6, p3

    move/from16 v4, v16

    const/16 v2, 0x84

    const/4 v3, 0x1

    goto :goto_5

    .line 1885
    :cond_4
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    add-int/lit8 v1, v1, 0x2

    const/4 v6, 0x0

    const/16 v16, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    :goto_6
    add-int/lit8 v20, v2, -0x1

    if-lez v2, :cond_e

    .line 1889
    invoke-virtual {v0, v1, v5}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v1, 0x2

    .line 1890
    invoke-virtual {v0, v3}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v3

    move/from16 v27, v3

    add-int/lit8 v3, v1, 0x6

    .line 1892
    const-string v4, "LocalVariableTable"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1893
    iget v2, v9, Lorg/objectweb/asm/Context;->parsingOptions:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_c

    .line 1897
    invoke-virtual {v0, v3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    add-int/lit8 v1, v1, 0x8

    :goto_7
    add-int/lit8 v4, v2, -0x1

    if-lez v2, :cond_5

    .line 1900
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 1901
    invoke-direct {v0, v2, v7}, Lorg/objectweb/asm/ClassReader;->createDebugLabel(I[Lorg/objectweb/asm/Label;)V

    move/from16 v25, v1

    add-int/lit8 v1, v25, 0x2

    .line 1902
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/2addr v2, v1

    .line 1903
    invoke-direct {v0, v2, v7}, Lorg/objectweb/asm/ClassReader;->createDebugLabel(I[Lorg/objectweb/asm/Label;)V

    add-int/lit8 v1, v25, 0xa

    move v2, v4

    goto :goto_7

    :cond_5
    move/from16 v25, v3

    goto/16 :goto_9

    .line 1908
    :cond_6
    const-string v4, "LocalVariableTypeTable"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move/from16 v26, v3

    goto/16 :goto_9

    .line 1912
    :cond_7
    const-string v4, "LineNumberTable"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1913
    iget v2, v9, Lorg/objectweb/asm/Context;->parsingOptions:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_c

    .line 1916
    invoke-virtual {v0, v3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    add-int/lit8 v1, v1, 0x8

    :goto_8
    add-int/lit8 v4, v2, -0x1

    if-lez v2, :cond_c

    .line 1919
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    move/from16 v28, v1

    add-int/lit8 v1, v28, 0x2

    .line 1920
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v28, v28, 0x4

    .line 1922
    invoke-direct {v0, v2, v7}, Lorg/objectweb/asm/ClassReader;->createDebugLabel(I[Lorg/objectweb/asm/Label;)V

    .line 1923
    aget-object v2, v7, v2

    invoke-virtual {v2, v1}, Lorg/objectweb/asm/Label;->addLineNumber(I)V

    move v2, v4

    move/from16 v1, v28

    goto :goto_8

    .line 1926
    :cond_8
    const-string v4, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    .line 1928
    invoke-direct {v0, v8, v9, v3, v4}, Lorg/objectweb/asm/ClassReader;->readTypeAnnotations(Lorg/objectweb/asm/MethodVisitor;Lorg/objectweb/asm/Context;IZ)[I

    move-result-object v1

    move-object v6, v0

    move-object/from16 v29, v1

    move-object v0, v7

    const/16 v8, 0x8

    const/16 v19, 0x1

    goto/16 :goto_b

    .line 1935
    :cond_9
    const-string v4, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    .line 1937
    invoke-direct {v0, v8, v9, v3, v4}, Lorg/objectweb/asm/ClassReader;->readTypeAnnotations(Lorg/objectweb/asm/MethodVisitor;Lorg/objectweb/asm/Context;IZ)[I

    move-result-object v1

    move-object/from16 v21, v1

    goto :goto_9

    .line 1939
    :cond_a
    const-string v4, "StackMapTable"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1940
    iget v2, v9, Lorg/objectweb/asm/Context;->parsingOptions:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_c

    add-int/lit8 v1, v1, 0x8

    add-int v2, v3, v27

    move/from16 v16, v1

    move/from16 v22, v2

    goto :goto_9

    .line 1953
    :cond_b
    const-string v4, "StackMap"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1954
    iget v2, v9, Lorg/objectweb/asm/Context;->parsingOptions:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_c

    add-int/lit8 v1, v1, 0x8

    add-int v2, v3, v27

    move/from16 v16, v1

    move/from16 v22, v2

    move-object/from16 v29, v6

    const/16 v8, 0x8

    const/16 v19, 0x1

    const/16 v24, 0x0

    goto :goto_a

    :cond_c
    :goto_9
    move-object/from16 v29, v6

    const/16 v8, 0x8

    const/16 v19, 0x1

    :goto_a
    move-object v6, v0

    move-object v0, v7

    goto :goto_b

    .line 1964
    :cond_d
    iget-object v1, v9, Lorg/objectweb/asm/Context;->attributePrototypes:[Lorg/objectweb/asm/Attribute;

    move-object/from16 v29, v6

    move/from16 v4, v27

    const/16 v8, 0x8

    const/16 v19, 0x1

    move/from16 v6, p3

    .line 1965
    invoke-direct/range {v0 .. v7}, Lorg/objectweb/asm/ClassReader;->readAttribute([Lorg/objectweb/asm/Attribute;Ljava/lang/String;II[CI[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Attribute;

    move-result-object v1

    move-object v6, v0

    move-object v0, v7

    move-object/from16 v7, v23

    .line 1973
    iput-object v7, v1, Lorg/objectweb/asm/Attribute;->nextAttribute:Lorg/objectweb/asm/Attribute;

    move-object/from16 v23, v1

    :goto_b
    add-int v1, v3, v27

    move-object/from16 v8, p1

    move-object v7, v0

    move-object v0, v6

    move/from16 v2, v20

    move-object/from16 v6, v29

    const/16 v17, 0x8

    goto/16 :goto_6

    :cond_e
    move-object/from16 v29, v6

    const/16 v8, 0x8

    const/16 v19, 0x1

    move-object v6, v0

    move-object v0, v7

    move-object/from16 v7, v23

    .line 1981
    iget v1, v9, Lorg/objectweb/asm/Context;->parsingOptions:I

    and-int/2addr v1, v8

    if-eqz v1, :cond_f

    const/4 v3, 0x1

    goto :goto_c

    :cond_f
    const/4 v3, 0x0

    :goto_c
    const/4 v1, -0x1

    if-eqz v16, :cond_13

    .line 1986
    iput v1, v9, Lorg/objectweb/asm/Context;->currentFrameOffset:I

    const/4 v4, 0x0

    .line 1987
    iput v4, v9, Lorg/objectweb/asm/Context;->currentFrameType:I

    .line 1988
    iput v4, v9, Lorg/objectweb/asm/Context;->currentFrameLocalCount:I

    .line 1989
    iput v4, v9, Lorg/objectweb/asm/Context;->currentFrameLocalCountDelta:I

    .line 1990
    new-array v2, v12, [Ljava/lang/Object;

    iput-object v2, v9, Lorg/objectweb/asm/Context;->currentFrameLocalTypes:[Ljava/lang/Object;

    .line 1991
    iput v4, v9, Lorg/objectweb/asm/Context;->currentFrameStackCount:I

    .line 1992
    new-array v2, v11, [Ljava/lang/Object;

    iput-object v2, v9, Lorg/objectweb/asm/Context;->currentFrameStackTypes:[Ljava/lang/Object;

    if-eqz v3, :cond_10

    .line 1994
    invoke-direct {v6, v9}, Lorg/objectweb/asm/ClassReader;->computeImplicitFrame(Lorg/objectweb/asm/Context;)V

    :cond_10
    move/from16 v2, v16

    :goto_d
    move/from16 v4, v22

    add-int/lit8 v1, v4, -0x2

    if-ge v2, v1, :cond_14

    .line 2004
    aget-byte v1, v10, v2

    if-ne v1, v8, :cond_11

    add-int/lit8 v1, v2, 0x1

    .line 2005
    invoke-virtual {v6, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    if-ltz v1, :cond_11

    if-ge v1, v13, :cond_11

    add-int v17, v14, v1

    const/16 v18, 0x8

    .line 2006
    aget-byte v8, v10, v17

    and-int/lit16 v8, v8, 0xff

    move/from16 v17, v2

    const/16 v2, 0xbb

    if-ne v8, v2, :cond_12

    .line 2010
    invoke-direct {v6, v1, v0}, Lorg/objectweb/asm/ClassReader;->createLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    goto :goto_e

    :cond_11
    move/from16 v17, v2

    const/16 v18, 0x8

    :cond_12
    :goto_e
    add-int/lit8 v2, v17, 0x1

    move/from16 v22, v4

    const/4 v1, -0x1

    const/16 v8, 0x8

    goto :goto_d

    :cond_13
    move/from16 v4, v22

    :cond_14
    const/16 v18, 0x8

    if-eqz v3, :cond_15

    .line 2015
    iget v1, v9, Lorg/objectweb/asm/Context;->parsingOptions:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_15

    move/from16 v22, v4

    const/4 v4, 0x0

    move-object v1, v5

    const/4 v5, 0x0

    move-object v2, v1

    const/4 v1, -0x1

    move v8, v3

    const/4 v3, 0x0

    move-object/from16 v17, v7

    move v7, v8

    move-object/from16 v20, v10

    move/from16 v10, v22

    move-object v8, v2

    move v2, v12

    move/from16 v22, v13

    const/4 v13, -0x1

    move-object v12, v0

    move-object/from16 v0, p1

    .line 2022
    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_f

    :cond_15
    move-object v8, v5

    move-object/from16 v17, v7

    move-object/from16 v20, v10

    move v2, v12

    move/from16 v22, v13

    const/4 v13, -0x1

    move-object v12, v0

    move v7, v3

    move v10, v4

    move-object/from16 v0, p1

    :goto_f
    move-object/from16 v1, v29

    const/4 v4, 0x0

    .line 2033
    invoke-direct {v6, v1, v4}, Lorg/objectweb/asm/ClassReader;->getTypeAnnotationBytecodeOffset([II)I

    move-result v3

    move-object/from16 v5, v21

    .line 2039
    invoke-direct {v6, v5, v4}, Lorg/objectweb/asm/ClassReader;->getTypeAnnotationBytecodeOffset([II)I

    move-result v21

    .line 2048
    iget v4, v9, Lorg/objectweb/asm/Context;->parsingOptions:I

    and-int/lit16 v4, v4, 0x100

    if-nez v4, :cond_16

    const/16 v4, 0x21

    const/16 v23, 0x21

    goto :goto_10

    :cond_16
    const/16 v23, 0x0

    :goto_10
    move/from16 v4, v16

    move/from16 v16, v3

    move v3, v4

    move v13, v14

    move/from16 v28, v21

    const/4 v4, 0x0

    const/16 v21, 0x0

    const/16 v27, 0x0

    :goto_11
    if-ge v13, v15, :cond_31

    move/from16 v29, v13

    sub-int v13, v29, v14

    move-object/from16 v31, v1

    .line 2055
    aget-object v1, v12, v13

    move/from16 v32, v2

    if-eqz v1, :cond_18

    .line 2057
    iget v2, v9, Lorg/objectweb/asm/Context;->parsingOptions:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_12

    :cond_17
    const/4 v2, 0x0

    :goto_12
    invoke-virtual {v1, v0, v2}, Lorg/objectweb/asm/Label;->accept(Lorg/objectweb/asm/MethodVisitor;Z)V

    :cond_18
    :goto_13
    if-eqz v3, :cond_1e

    .line 2061
    iget v1, v9, Lorg/objectweb/asm/Context;->currentFrameOffset:I

    if-eq v1, v13, :cond_19

    iget v1, v9, Lorg/objectweb/asm/Context;->currentFrameOffset:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1e

    goto :goto_14

    :cond_19
    const/4 v2, -0x1

    .line 2066
    :goto_14
    iget v1, v9, Lorg/objectweb/asm/Context;->currentFrameOffset:I

    if-eq v1, v2, :cond_1c

    if-eqz v24, :cond_1b

    if-eqz v7, :cond_1a

    goto :goto_15

    .line 2075
    :cond_1a
    iget v1, v9, Lorg/objectweb/asm/Context;->currentFrameType:I

    const/4 v4, -0x1

    iget v2, v9, Lorg/objectweb/asm/Context;->currentFrameLocalCountDelta:I

    move/from16 v33, v3

    iget-object v3, v9, Lorg/objectweb/asm/Context;->currentFrameLocalTypes:[Ljava/lang/Object;

    const/16 v34, -0x1

    iget v4, v9, Lorg/objectweb/asm/Context;->currentFrameStackCount:I

    move-object/from16 v35, v5

    iget-object v5, v9, Lorg/objectweb/asm/Context;->currentFrameStackTypes:[Ljava/lang/Object;

    move-object/from16 v36, v31

    move/from16 v31, v11

    move/from16 v11, v24

    move/from16 v24, v15

    move-object/from16 v15, v36

    move/from16 v36, v14

    move/from16 v14, v33

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_16

    :cond_1b
    :goto_15
    move-object/from16 v34, v31

    move/from16 v31, v11

    move/from16 v11, v24

    move/from16 v24, v15

    move-object/from16 v15, v34

    move-object/from16 v35, v5

    move/from16 v36, v14

    const/16 v34, -0x1

    move v14, v3

    .line 2068
    iget v2, v9, Lorg/objectweb/asm/Context;->currentFrameLocalCount:I

    iget-object v3, v9, Lorg/objectweb/asm/Context;->currentFrameLocalTypes:[Ljava/lang/Object;

    iget v4, v9, Lorg/objectweb/asm/Context;->currentFrameStackCount:I

    iget-object v5, v9, Lorg/objectweb/asm/Context;->currentFrameStackTypes:[Ljava/lang/Object;

    const/4 v1, -0x1

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :goto_16
    const/4 v4, 0x0

    goto :goto_17

    :cond_1c
    move-object/from16 v34, v31

    move/from16 v31, v11

    move/from16 v11, v24

    move/from16 v24, v15

    move-object/from16 v15, v34

    move-object/from16 v35, v5

    move/from16 v36, v14

    const/16 v34, -0x1

    move v14, v3

    :goto_17
    if-ge v14, v10, :cond_1d

    .line 2088
    invoke-direct {v6, v14, v11, v7, v9}, Lorg/objectweb/asm/ClassReader;->readStackMapFrame(IZZLorg/objectweb/asm/Context;)I

    move-result v3

    move/from16 v0, v24

    move/from16 v24, v11

    move/from16 v11, v31

    move-object/from16 v31, v15

    move v15, v0

    move-object/from16 v0, p1

    move-object/from16 v5, v35

    move/from16 v14, v36

    goto/16 :goto_13

    :cond_1d
    move/from16 v0, v24

    move/from16 v24, v11

    move/from16 v11, v31

    move-object/from16 v31, v15

    move v15, v0

    move-object/from16 v0, p1

    move-object/from16 v5, v35

    move/from16 v14, v36

    const/4 v3, 0x0

    goto/16 :goto_13

    :cond_1e
    move-object/from16 v34, v31

    move/from16 v31, v11

    move/from16 v11, v24

    move/from16 v24, v15

    move-object/from16 v15, v34

    move-object/from16 v35, v5

    move/from16 v36, v14

    const/16 v34, -0x1

    move v14, v3

    if-eqz v4, :cond_20

    .line 2097
    iget v0, v9, Lorg/objectweb/asm/Context;->parsingOptions:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v1, 0x100

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    .line 2098
    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_18

    :cond_1f
    move-object/from16 v0, p1

    :goto_18
    const/16 v33, 0x0

    goto :goto_19

    :cond_20
    move-object/from16 v0, p1

    move/from16 v33, v4

    .line 2104
    :goto_19
    aget-byte v1, v20, v29

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xc8

    packed-switch v1, :pswitch_data_3

    .line 2497
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    add-int/lit8 v1, v29, 0x1

    .line 2344
    invoke-virtual {v6, v1}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v1

    add-int/2addr v1, v13

    aget-object v1, v12, v1

    .line 2343
    invoke-virtual {v0, v2, v1}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    add-int/lit8 v1, v29, 0x5

    move/from16 p3, v7

    move/from16 v37, v10

    move/from16 v2, v16

    move/from16 v3, v21

    const/4 v4, 0x1

    goto/16 :goto_21

    :pswitch_c
    const/16 v3, 0xda

    if-ge v1, v3, :cond_21

    add-int/lit8 v1, v1, -0x31

    goto :goto_1a

    :cond_21
    add-int/lit8 v1, v1, -0x14

    :goto_1a
    add-int/lit8 v3, v29, 0x1

    .line 2322
    invoke-virtual {v6, v3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/2addr v3, v13

    aget-object v3, v12, v3

    const/16 v4, 0xa7

    if-eq v1, v4, :cond_24

    const/16 v5, 0xa8

    if-ne v1, v5, :cond_22

    goto :goto_1c

    :cond_22
    if-ge v1, v4, :cond_23

    add-int/lit8 v1, v1, 0x1

    xor-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1b

    :cond_23
    xor-int/lit8 v1, v1, 0x1

    :goto_1b
    add-int/lit8 v4, v13, 0x3

    .line 2331
    invoke-direct {v6, v4, v12}, Lorg/objectweb/asm/ClassReader;->createLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move-result-object v4

    .line 2332
    invoke-virtual {v0, v1, v4}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    .line 2333
    invoke-virtual {v0, v2, v3}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    const/4 v3, 0x1

    goto :goto_1d

    :cond_24
    :goto_1c
    add-int/lit8 v1, v1, 0x21

    .line 2325
    invoke-virtual {v0, v1, v3}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    move/from16 v3, v33

    :goto_1d
    add-int/lit8 v1, v29, 0x3

    move v4, v3

    move/from16 p3, v7

    move/from16 v37, v10

    move/from16 v2, v16

    move/from16 v3, v21

    goto :goto_21

    :pswitch_d
    sub-int v1, v1, v23

    add-int/lit8 v2, v29, 0x1

    .line 2290
    invoke-virtual {v6, v2}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v2

    add-int/2addr v2, v13

    aget-object v2, v12, v2

    .line 2288
    invoke-virtual {v0, v1, v2}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    add-int/lit8 v1, v29, 0x5

    goto :goto_1f

    :pswitch_e
    add-int/lit8 v1, v29, 0x1

    .line 2493
    invoke-virtual {v6, v1, v8}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v29, 0x3

    aget-byte v2, v20, v2

    and-int/lit16 v2, v2, 0xff

    .line 2492
    invoke-virtual {v0, v1, v2}, Lorg/objectweb/asm/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    :goto_1e
    add-int/lit8 v1, v29, 0x4

    goto :goto_1f

    :pswitch_f
    add-int/lit8 v1, v29, 0x1

    .line 2352
    aget-byte v1, v20, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x84

    if-ne v1, v2, :cond_25

    add-int/lit8 v1, v29, 0x2

    .line 2355
    invoke-virtual {v6, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v3, v29, 0x4

    invoke-virtual {v6, v3}, Lorg/objectweb/asm/ClassReader;->readShort(I)S

    move-result v3

    .line 2354
    invoke-virtual {v0, v1, v3}, Lorg/objectweb/asm/MethodVisitor;->visitIincInsn(II)V

    add-int/lit8 v1, v29, 0x6

    goto :goto_1f

    :cond_25
    add-int/lit8 v3, v29, 0x2

    .line 2358
    invoke-virtual {v6, v3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_1e

    :pswitch_10
    const/16 v2, 0x84

    add-int/lit8 v3, v29, 0x1

    .line 2483
    invoke-virtual {v6, v3, v8}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    add-int/lit8 v1, v29, 0x3

    :goto_1f
    move/from16 p3, v7

    move/from16 v37, v10

    :goto_20
    move/from16 v2, v16

    move/from16 v3, v21

    move/from16 v4, v33

    :goto_21
    const/16 v30, 0x84

    goto/16 :goto_2b

    :pswitch_11
    const/16 v2, 0x84

    .line 2459
    iget-object v1, v6, Lorg/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v3, v29, 0x1

    invoke-virtual {v6, v3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    aget v1, v1, v3

    .line 2460
    iget-object v3, v6, Lorg/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {v6, v4}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    aget v3, v3, v4

    .line 2461
    invoke-virtual {v6, v3, v8}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x2

    .line 2462
    invoke-virtual {v6, v3, v8}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    .line 2463
    iget-object v5, v6, Lorg/objectweb/asm/ClassReader;->bootstrapMethodOffsets:[I

    invoke-virtual {v6, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v1, v5, v1

    .line 2465
    invoke-virtual {v6, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    invoke-virtual {v6, v5, v8}, Lorg/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/objectweb/asm/Handle;

    add-int/lit8 v2, v1, 0x2

    .line 2467
    invoke-virtual {v6, v2}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    move/from16 p3, v1

    new-array v1, v2, [Ljava/lang/Object;

    add-int/lit8 v37, p3, 0x4

    move/from16 p3, v37

    move/from16 v37, v10

    move/from16 v10, p3

    move/from16 p3, v7

    const/4 v7, 0x0

    :goto_22
    if-ge v7, v2, :cond_26

    move/from16 v38, v2

    .line 2471
    invoke-virtual {v6, v10}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    invoke-virtual {v6, v2, v8}, Lorg/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v7

    add-int/lit8 v10, v10, 0x2

    add-int/lit8 v7, v7, 0x1

    move/from16 v2, v38

    goto :goto_22

    .line 2474
    :cond_26
    invoke-virtual {v0, v4, v3, v5, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V

    add-int/lit8 v1, v29, 0x5

    goto :goto_20

    :pswitch_12
    move/from16 p3, v7

    move/from16 v37, v10

    .line 2438
    iget-object v2, v6, Lorg/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v3, v29, 0x1

    invoke-virtual {v6, v3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    aget v2, v2, v3

    .line 2439
    iget-object v3, v6, Lorg/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v4, v2, 0x2

    invoke-virtual {v6, v4}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    aget v3, v3, v4

    move v4, v2

    .line 2440
    invoke-virtual {v6, v4, v8}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v2

    move v5, v3

    .line 2441
    invoke-virtual {v6, v5, v8}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v5, v5, 0x2

    .line 2442
    invoke-virtual {v6, v5, v8}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0xb6

    if-ge v1, v7, :cond_27

    .line 2444
    invoke-virtual {v0, v1, v2, v3, v5}, Lorg/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v30, 0x84

    goto :goto_24

    :cond_27
    add-int/lit8 v4, v4, -0x1

    .line 2446
    aget-byte v4, v20, v4

    const/16 v7, 0xb

    if-ne v4, v7, :cond_28

    move-object v4, v5

    const/4 v5, 0x1

    goto :goto_23

    :cond_28
    move-object v4, v5

    const/4 v5, 0x0

    :goto_23
    const/16 v30, 0x84

    .line 2448
    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_24
    const/16 v2, 0xb9

    if-ne v1, v2, :cond_2b

    add-int/lit8 v1, v29, 0x5

    goto/16 :goto_2a

    :pswitch_13
    move/from16 p3, v7

    move/from16 v37, v10

    const/16 v30, 0x84

    and-int/lit8 v1, v13, 0x3

    rsub-int/lit8 v1, v1, 0x4

    add-int v1, v29, v1

    .line 2384
    invoke-virtual {v6, v1}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v2

    add-int/2addr v2, v13

    aget-object v2, v12, v2

    add-int/lit8 v3, v1, 0x4

    .line 2385
    invoke-virtual {v6, v3}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/lit8 v1, v1, 0x8

    .line 2387
    new-array v4, v3, [I

    .line 2388
    new-array v5, v3, [Lorg/objectweb/asm/Label;

    const/4 v7, 0x0

    :goto_25
    if-ge v7, v3, :cond_29

    .line 2390
    invoke-virtual {v6, v1}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v10

    aput v10, v4, v7

    add-int/lit8 v10, v1, 0x4

    .line 2391
    invoke-virtual {v6, v10}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v10

    add-int/2addr v10, v13

    aget-object v10, v12, v10

    aput-object v10, v5, v7

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    .line 2394
    :cond_29
    invoke-virtual {v0, v2, v4, v5}, Lorg/objectweb/asm/MethodVisitor;->visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V

    goto/16 :goto_2a

    :pswitch_14
    move/from16 p3, v7

    move/from16 v37, v10

    const/16 v30, 0x84

    and-int/lit8 v1, v13, 0x3

    rsub-int/lit8 v1, v1, 0x4

    add-int v1, v29, v1

    .line 2367
    invoke-virtual {v6, v1}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v2

    add-int/2addr v2, v13

    aget-object v2, v12, v2

    add-int/lit8 v3, v1, 0x4

    .line 2368
    invoke-virtual {v6, v3}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/lit8 v4, v1, 0x8

    .line 2369
    invoke-virtual {v6, v4}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v4

    add-int/lit8 v1, v1, 0xc

    sub-int v5, v4, v3

    add-int/lit8 v5, v5, 0x1

    .line 2371
    new-array v7, v5, [Lorg/objectweb/asm/Label;

    const/4 v10, 0x0

    :goto_26
    if-ge v10, v5, :cond_2a

    .line 2373
    invoke-virtual {v6, v1}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v29

    add-int v29, v13, v29

    aget-object v29, v12, v29

    aput-object v29, v7, v10

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v10, v10, 0x1

    goto :goto_26

    .line 2376
    :cond_2a
    invoke-virtual {v0, v3, v4, v2, v7}, Lorg/objectweb/asm/MethodVisitor;->visitTableSwitchInsn(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V

    goto/16 :goto_2a

    :pswitch_15
    move/from16 p3, v7

    move/from16 v37, v10

    const/16 v30, 0x84

    add-int/lit8 v2, v29, 0x1

    .line 2283
    invoke-virtual {v6, v2}, Lorg/objectweb/asm/ClassReader;->readShort(I)S

    move-result v2

    add-int/2addr v2, v13

    aget-object v2, v12, v2

    .line 2282
    invoke-virtual {v0, v1, v2}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    goto/16 :goto_27

    :pswitch_16
    move/from16 p3, v7

    move/from16 v37, v10

    const/16 v30, 0x84

    add-int/lit8 v1, v29, 0x1

    .line 2487
    aget-byte v1, v20, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, v29, 0x2

    aget-byte v2, v20, v2

    invoke-virtual {v0, v1, v2}, Lorg/objectweb/asm/MethodVisitor;->visitIincInsn(II)V

    goto/16 :goto_27

    :pswitch_17
    move/from16 p3, v7

    move/from16 v37, v10

    const/16 v30, 0x84

    add-int/lit8 v1, v1, -0x3b

    shr-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x36

    and-int/lit8 v1, v1, 0x3

    .line 2261
    invoke-virtual {v0, v2, v1}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_29

    :pswitch_18
    move/from16 p3, v7

    move/from16 v37, v10

    const/16 v30, 0x84

    add-int/lit8 v1, v1, -0x1a

    shr-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x15

    and-int/lit8 v1, v1, 0x3

    .line 2237
    invoke-virtual {v0, v2, v1}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_29

    :pswitch_19
    move/from16 p3, v7

    move/from16 v37, v10

    const/16 v30, 0x84

    add-int/lit8 v2, v29, 0x1

    .line 2408
    aget-byte v2, v20, v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v1, v2}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_28

    :pswitch_1a
    move/from16 p3, v7

    move/from16 v37, v10

    const/16 v30, 0x84

    add-int/lit8 v1, v29, 0x1

    .line 2426
    invoke-virtual {v6, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    invoke-virtual {v6, v1, v8}, Lorg/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_27

    :pswitch_1b
    move/from16 p3, v7

    move/from16 v37, v10

    const/16 v30, 0x84

    add-int/lit8 v1, v29, 0x1

    .line 2421
    aget-byte v1, v20, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v6, v1, v8}, Lorg/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_28

    :pswitch_1c
    move/from16 p3, v7

    move/from16 v37, v10

    const/16 v30, 0x84

    add-int/lit8 v2, v29, 0x1

    .line 2417
    invoke-virtual {v6, v2}, Lorg/objectweb/asm/ClassReader;->readShort(I)S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/objectweb/asm/MethodVisitor;->visitIntInsn(II)V

    :cond_2b
    :goto_27
    add-int/lit8 v1, v29, 0x3

    goto :goto_2a

    :pswitch_1d
    move/from16 p3, v7

    move/from16 v37, v10

    const/16 v30, 0x84

    add-int/lit8 v2, v29, 0x1

    .line 2413
    aget-byte v2, v20, v2

    invoke-virtual {v0, v1, v2}, Lorg/objectweb/asm/MethodVisitor;->visitIntInsn(II)V

    :goto_28
    add-int/lit8 v1, v29, 0x2

    goto :goto_2a

    :pswitch_1e
    move/from16 p3, v7

    move/from16 v37, v10

    const/16 v30, 0x84

    .line 2213
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    :goto_29
    add-int/lit8 v1, v29, 0x1

    :goto_2a
    move/from16 v2, v16

    move/from16 v3, v21

    move/from16 v4, v33

    :goto_2b
    if-eqz v15, :cond_2d

    .line 2501
    array-length v5, v15

    if-ge v3, v5, :cond_2d

    if-gt v2, v13, :cond_2d

    if-ne v2, v13, :cond_2c

    .line 2506
    aget v2, v15, v3

    .line 2507
    invoke-direct {v6, v9, v2}, Lorg/objectweb/asm/ClassReader;->readTypeAnnotationTarget(Lorg/objectweb/asm/Context;I)I

    move-result v2

    .line 2510
    invoke-virtual {v6, v2, v8}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v2, v2, 0x2

    .line 2513
    iget v7, v9, Lorg/objectweb/asm/Context;->currentTypeAnnotationTarget:I

    iget-object v10, v9, Lorg/objectweb/asm/Context;->currentTypeAnnotationTargetPath:Lorg/objectweb/asm/TypePath;

    move/from16 v16, v1

    const/4 v1, 0x1

    .line 2514
    invoke-virtual {v0, v7, v10, v5, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsnAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v5

    .line 2513
    invoke-direct {v6, v5, v2, v1, v8}, Lorg/objectweb/asm/ClassReader;->readElementValues(Lorg/objectweb/asm/AnnotationVisitor;IZ[C)I

    goto :goto_2c

    :cond_2c
    move/from16 v16, v1

    :goto_2c
    add-int/lit8 v3, v3, 0x1

    .line 2524
    invoke-direct {v6, v15, v3}, Lorg/objectweb/asm/ClassReader;->getTypeAnnotationBytecodeOffset([II)I

    move-result v2

    move/from16 v1, v16

    const/16 v19, 0x1

    goto :goto_2b

    :cond_2d
    move/from16 v16, v1

    move/from16 v1, v27

    move/from16 v5, v28

    :goto_2d
    if-eqz v35, :cond_30

    move-object/from16 v10, v35

    .line 2529
    array-length v7, v10

    if-ge v1, v7, :cond_2f

    if-gt v5, v13, :cond_2f

    if-ne v5, v13, :cond_2e

    .line 2534
    aget v5, v10, v1

    .line 2535
    invoke-direct {v6, v9, v5}, Lorg/objectweb/asm/ClassReader;->readTypeAnnotationTarget(Lorg/objectweb/asm/Context;I)I

    move-result v5

    .line 2538
    invoke-virtual {v6, v5, v8}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v5, v5, 0x2

    move/from16 v21, v1

    .line 2541
    iget v1, v9, Lorg/objectweb/asm/Context;->currentTypeAnnotationTarget:I

    move/from16 v27, v2

    iget-object v2, v9, Lorg/objectweb/asm/Context;->currentTypeAnnotationTargetPath:Lorg/objectweb/asm/TypePath;

    move/from16 v28, v11

    const/4 v11, 0x0

    .line 2542
    invoke-virtual {v0, v1, v2, v7, v11}, Lorg/objectweb/asm/MethodVisitor;->visitInsnAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    const/4 v2, 0x1

    .line 2541
    invoke-direct {v6, v1, v5, v2, v8}, Lorg/objectweb/asm/ClassReader;->readElementValues(Lorg/objectweb/asm/AnnotationVisitor;IZ[C)I

    goto :goto_2e

    :cond_2e
    move/from16 v21, v1

    move/from16 v27, v2

    move/from16 v28, v11

    const/4 v11, 0x0

    :goto_2e
    add-int/lit8 v1, v21, 0x1

    .line 2552
    invoke-direct {v6, v10, v1}, Lorg/objectweb/asm/ClassReader;->getTypeAnnotationBytecodeOffset([II)I

    move-result v5

    move-object/from16 v35, v10

    move/from16 v2, v27

    move/from16 v11, v28

    goto :goto_2d

    :cond_2f
    move/from16 v21, v1

    move/from16 v27, v2

    move/from16 v28, v11

    goto :goto_2f

    :cond_30
    move/from16 v21, v1

    move/from16 v27, v2

    move/from16 v28, v11

    move-object/from16 v10, v35

    :goto_2f
    const/4 v11, 0x0

    move/from16 v7, p3

    move-object v1, v15

    move/from16 v13, v16

    move/from16 v15, v24

    move/from16 v16, v27

    move/from16 v24, v28

    move/from16 v11, v31

    move/from16 v2, v32

    const/16 v19, 0x1

    move/from16 v28, v5

    move-object v5, v10

    move/from16 v27, v21

    move/from16 v10, v37

    move/from16 v21, v3

    move v3, v14

    move/from16 v14, v36

    goto/16 :goto_11

    :cond_31
    move-object v15, v1

    move/from16 v32, v2

    move-object v10, v5

    move/from16 v31, v11

    const/4 v11, 0x0

    .line 2556
    aget-object v1, v12, v22

    if-eqz v1, :cond_32

    .line 2557
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitLabel(Lorg/objectweb/asm/Label;)V

    :cond_32
    move/from16 v4, v25

    if-eqz v4, :cond_37

    .line 2561
    iget v1, v9, Lorg/objectweb/asm/Context;->parsingOptions:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_37

    move/from16 v1, v26

    if-eqz v1, :cond_34

    .line 2565
    invoke-virtual {v6, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    new-array v3, v2, [I

    add-int/lit8 v26, v1, 0x2

    move/from16 v1, v26

    :goto_30
    if-lez v2, :cond_33

    add-int/lit8 v5, v2, -0x1

    add-int/lit8 v7, v1, 0x6

    .line 2570
    aput v7, v3, v5

    add-int/lit8 v5, v2, -0x2

    add-int/lit8 v7, v1, 0x8

    .line 2571
    invoke-virtual {v6, v7}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    aput v7, v3, v5

    add-int/lit8 v2, v2, -0x3

    .line 2572
    invoke-virtual {v6, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    aput v5, v3, v2

    add-int/lit8 v1, v1, 0xa

    goto :goto_30

    :cond_33
    move-object v7, v3

    goto :goto_31

    :cond_34
    const/4 v7, 0x0

    .line 2576
    :goto_31
    invoke-virtual {v6, v4}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v25, v4, 0x2

    move/from16 v2, v25

    :goto_32
    add-int/lit8 v13, v1, -0x1

    if-lez v1, :cond_37

    .line 2579
    invoke-virtual {v6, v2}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v3, v2, 0x2

    .line 2580
    invoke-virtual {v6, v3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v4, v2, 0x4

    .line 2581
    invoke-virtual {v6, v4, v8}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v2, 0x6

    .line 2582
    invoke-virtual {v6, v5, v8}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v14, v2, 0x8

    .line 2583
    invoke-virtual {v6, v14}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v14

    add-int/lit8 v16, v2, 0xa

    if-eqz v7, :cond_36

    const/4 v2, 0x0

    .line 2587
    :goto_33
    array-length v11, v7

    if-ge v2, v11, :cond_36

    .line 2588
    aget v11, v7, v2

    if-ne v11, v1, :cond_35

    add-int/lit8 v11, v2, 0x1

    aget v11, v7, v11

    if-ne v11, v14, :cond_35

    add-int/lit8 v2, v2, 0x2

    .line 2589
    aget v2, v7, v2

    invoke-virtual {v6, v2, v8}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    move v11, v3

    move-object v3, v2

    move v2, v11

    goto :goto_34

    :cond_35
    add-int/lit8 v2, v2, 0x3

    goto :goto_33

    :cond_36
    move v2, v3

    const/4 v3, 0x0

    :goto_34
    move v11, v1

    move-object v1, v4

    .line 2594
    aget-object v4, v12, v11

    add-int/2addr v2, v11

    aget-object v2, v12, v2

    move-object v11, v5

    move-object v5, v2

    move-object v2, v11

    move-object v11, v6

    move v6, v14

    invoke-virtual/range {v0 .. v6}, Lorg/objectweb/asm/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;I)V

    move-object/from16 v0, p1

    move-object v6, v11

    move v1, v13

    move/from16 v2, v16

    const/4 v11, 0x0

    goto :goto_32

    :cond_37
    move-object v11, v6

    const/16 v12, 0x41

    const/16 v13, 0x40

    if-eqz v15, :cond_3a

    .line 2601
    array-length v14, v15

    const/4 v0, 0x0

    :goto_35
    if-ge v0, v14, :cond_3a

    aget v1, v15, v0

    .line 2602
    invoke-virtual {v11, v1}, Lorg/objectweb/asm/ClassReader;->readByte(I)I

    move-result v2

    if-eq v2, v13, :cond_39

    if-ne v2, v12, :cond_38

    goto :goto_36

    :cond_38
    move/from16 v16, v0

    goto :goto_37

    .line 2606
    :cond_39
    :goto_36
    invoke-direct {v11, v9, v1}, Lorg/objectweb/asm/ClassReader;->readTypeAnnotationTarget(Lorg/objectweb/asm/Context;I)I

    move-result v1

    .line 2608
    invoke-virtual {v11, v1, v8}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v1, v1, 0x2

    move v2, v1

    .line 2611
    iget v1, v9, Lorg/objectweb/asm/Context;->currentTypeAnnotationTarget:I

    move v3, v2

    iget-object v2, v9, Lorg/objectweb/asm/Context;->currentTypeAnnotationTargetPath:Lorg/objectweb/asm/TypePath;

    move v4, v3

    iget-object v3, v9, Lorg/objectweb/asm/Context;->currentLocalVariableAnnotationRangeStarts:[Lorg/objectweb/asm/Label;

    move v5, v4

    iget-object v4, v9, Lorg/objectweb/asm/Context;->currentLocalVariableAnnotationRangeEnds:[Lorg/objectweb/asm/Label;

    move v7, v5

    iget-object v5, v9, Lorg/objectweb/asm/Context;->currentLocalVariableAnnotationRangeIndices:[I

    move/from16 v16, v7

    const/4 v7, 0x1

    move/from16 v12, v16

    move/from16 v16, v0

    move-object/from16 v0, p1

    .line 2612
    invoke-virtual/range {v0 .. v7}, Lorg/objectweb/asm/MethodVisitor;->visitLocalVariableAnnotation(ILorg/objectweb/asm/TypePath;[Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;[ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    const/4 v2, 0x1

    .line 2611
    invoke-direct {v11, v1, v12, v2, v8}, Lorg/objectweb/asm/ClassReader;->readElementValues(Lorg/objectweb/asm/AnnotationVisitor;IZ[C)I

    :goto_37
    add-int/lit8 v0, v16, 0x1

    const/16 v12, 0x41

    goto :goto_35

    :cond_3a
    if-eqz v10, :cond_3d

    .line 2629
    array-length v12, v10

    const/4 v14, 0x0

    :goto_38
    if-ge v14, v12, :cond_3d

    aget v0, v10, v14

    .line 2630
    invoke-virtual {v11, v0}, Lorg/objectweb/asm/ClassReader;->readByte(I)I

    move-result v1

    const/16 v15, 0x41

    if-eq v1, v13, :cond_3c

    if-ne v1, v15, :cond_3b

    goto :goto_39

    :cond_3b
    move-object/from16 v0, p1

    const/4 v2, 0x1

    goto :goto_3a

    .line 2634
    :cond_3c
    :goto_39
    invoke-direct {v11, v9, v0}, Lorg/objectweb/asm/ClassReader;->readTypeAnnotationTarget(Lorg/objectweb/asm/Context;I)I

    move-result v0

    .line 2636
    invoke-virtual {v11, v0, v8}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v0, v0, 0x2

    .line 2639
    iget v1, v9, Lorg/objectweb/asm/Context;->currentTypeAnnotationTarget:I

    iget-object v2, v9, Lorg/objectweb/asm/Context;->currentTypeAnnotationTargetPath:Lorg/objectweb/asm/TypePath;

    iget-object v3, v9, Lorg/objectweb/asm/Context;->currentLocalVariableAnnotationRangeStarts:[Lorg/objectweb/asm/Label;

    iget-object v4, v9, Lorg/objectweb/asm/Context;->currentLocalVariableAnnotationRangeEnds:[Lorg/objectweb/asm/Label;

    iget-object v5, v9, Lorg/objectweb/asm/Context;->currentLocalVariableAnnotationRangeIndices:[I

    const/4 v7, 0x0

    move v13, v0

    move-object/from16 v0, p1

    .line 2640
    invoke-virtual/range {v0 .. v7}, Lorg/objectweb/asm/MethodVisitor;->visitLocalVariableAnnotation(ILorg/objectweb/asm/TypePath;[Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;[ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    const/4 v2, 0x1

    .line 2639
    invoke-direct {v11, v1, v13, v2, v8}, Lorg/objectweb/asm/ClassReader;->readElementValues(Lorg/objectweb/asm/AnnotationVisitor;IZ[C)I

    :goto_3a
    add-int/lit8 v14, v14, 0x1

    const/16 v13, 0x40

    goto :goto_38

    :cond_3d
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    :goto_3b
    if-eqz v1, :cond_3e

    .line 2658
    iget-object v2, v1, Lorg/objectweb/asm/Attribute;->nextAttribute:Lorg/objectweb/asm/Attribute;

    const/4 v3, 0x0

    .line 2659
    iput-object v3, v1, Lorg/objectweb/asm/Attribute;->nextAttribute:Lorg/objectweb/asm/Attribute;

    .line 2660
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitAttribute(Lorg/objectweb/asm/Attribute;)V

    move-object v1, v2

    goto :goto_3b

    :cond_3e
    move/from16 v1, v31

    move/from16 v2, v32

    .line 2665
    invoke-virtual {v0, v1, v2}, Lorg/objectweb/asm/MethodVisitor;->visitMaxs(II)V

    return-void

    :cond_3f
    move-object v11, v0

    .line 1546
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_9
        :pswitch_6
        :pswitch_5
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_3
        :pswitch_2
        :pswitch_7
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x36
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_1a
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_16
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_19
        :pswitch_14
        :pswitch_13
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_1d
        :pswitch_10
        :pswitch_1e
        :pswitch_1e
        :pswitch_10
        :pswitch_10
        :pswitch_1e
        :pswitch_1e
        :pswitch_f
        :pswitch_e
        :pswitch_15
        :pswitch_15
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method private readConstantDynamic(I[C)Lorg/objectweb/asm/ConstantDynamic;
    .locals 8

    .line 3785
    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->constantDynamicValues:[Lorg/objectweb/asm/ConstantDynamic;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    return-object v0

    .line 3789
    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    aget v1, v0, p1

    add-int/lit8 v2, v1, 0x2

    .line 3790
    invoke-virtual {p0, v2}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aget v0, v0, v2

    .line 3791
    invoke-virtual {p0, v0, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x2

    .line 3792
    invoke-virtual {p0, v0, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    .line 3793
    iget-object v3, p0, Lorg/objectweb/asm/ClassReader;->bootstrapMethodOffsets:[I

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v1, v3, v1

    .line 3794
    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    invoke-virtual {p0, v3, p2}, Lorg/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/objectweb/asm/Handle;

    add-int/lit8 v4, v1, 0x2

    .line 3795
    invoke-virtual {p0, v4}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    new-array v5, v4, [Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    .line 3798
    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    invoke-virtual {p0, v7, p2}, Lorg/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3801
    :cond_1
    iget-object p2, p0, Lorg/objectweb/asm/ClassReader;->constantDynamicValues:[Lorg/objectweb/asm/ConstantDynamic;

    new-instance v1, Lorg/objectweb/asm/ConstantDynamic;

    invoke-direct {v1, v2, v0, v3, v5}, Lorg/objectweb/asm/ConstantDynamic;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V

    aput-object v1, p2, p1

    return-object v1
.end method

.method private readElementValue(Lorg/objectweb/asm/AnnotationVisitor;ILjava/lang/String;[C)I
    .locals 10

    const/16 v0, 0x5b

    const/16 v1, 0x65

    const/16 v2, 0x40

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_3

    .line 3025
    iget-object p1, p0, Lorg/objectweb/asm/ClassReader;->classFileBuffer:[B

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    const/4 p3, 0x0

    if-eq p1, v2, :cond_2

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    add-int/lit8 p2, p2, 0x3

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x5

    return p2

    :cond_1
    add-int/2addr p2, v4

    .line 3031
    invoke-direct {p0, p3, p2, v3, p4}, Lorg/objectweb/asm/ClassReader;->readElementValues(Lorg/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result p1

    return p1

    :cond_2
    add-int/lit8 p2, p2, 0x3

    .line 3029
    invoke-direct {p0, p3, p2, v4, p4}, Lorg/objectweb/asm/ClassReader;->readElementValues(Lorg/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result p1

    return p1

    .line 3036
    :cond_3
    iget-object v5, p0, Lorg/objectweb/asm/ClassReader;->classFileBuffer:[B

    add-int/lit8 v6, p2, 0x1

    aget-byte v5, v5, p2

    and-int/lit16 v5, v5, 0xff

    if-eq v5, v2, :cond_1b

    const/16 v2, 0x46

    if-eq v5, v2, :cond_1a

    const/16 v7, 0x53

    if-eq v5, v7, :cond_19

    const/16 v8, 0x63

    if-eq v5, v8, :cond_18

    if-eq v5, v1, :cond_17

    const/16 v1, 0x73

    if-eq v5, v1, :cond_16

    const/16 v1, 0x49

    if-eq v5, v1, :cond_1a

    const/16 v8, 0x4a

    if-eq v5, v8, :cond_1a

    const/16 v9, 0x5a

    if-eq v5, v9, :cond_14

    if-eq v5, v0, :cond_4

    packed-switch v5, :pswitch_data_0

    .line 3182
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 3043
    :pswitch_0
    iget-object p4, p0, Lorg/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    .line 3044
    invoke-virtual {p0, v6}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    aget p4, p4, v0

    invoke-virtual {p0, p4}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result p4

    int-to-char p4, p4

    invoke-static {p4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p4

    .line 3043
    invoke-virtual {p1, p3, p4}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x3

    return p2

    .line 3038
    :pswitch_1
    iget-object p4, p0, Lorg/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    .line 3039
    invoke-virtual {p0, v6}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    aget p4, p4, v0

    invoke-virtual {p0, p4}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result p4

    int-to-byte p4, p4

    invoke-static {p4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p4

    .line 3038
    invoke-virtual {p1, p3, p4}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x3

    return p2

    .line 3093
    :cond_4
    invoke-virtual {p0, v6}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v5, p2, 0x3

    if-nez v0, :cond_5

    .line 3097
    invoke-virtual {p1, p3}, Lorg/objectweb/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object p1

    add-int/2addr p2, v4

    .line 3096
    invoke-direct {p0, p1, p2, v3, p4}, Lorg/objectweb/asm/ClassReader;->readElementValues(Lorg/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result p1

    return p1

    .line 3102
    :cond_5
    iget-object v6, p0, Lorg/objectweb/asm/ClassReader;->classFileBuffer:[B

    aget-byte v6, v6, v5

    and-int/lit16 v6, v6, 0xff

    if-eq v6, v2, :cond_12

    if-eq v6, v7, :cond_10

    if-eq v6, v9, :cond_d

    if-eq v6, v1, :cond_b

    if-eq v6, v8, :cond_9

    packed-switch v6, :pswitch_data_1

    .line 3174
    invoke-virtual {p1, p3}, Lorg/objectweb/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object p1

    add-int/2addr p2, v4

    .line 3173
    invoke-direct {p0, p1, p2, v3, p4}, Lorg/objectweb/asm/ClassReader;->readElementValues(Lorg/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result p1

    return p1

    .line 3162
    :pswitch_2
    new-array p2, v0, [D

    :goto_0
    if-ge v3, v0, :cond_6

    .line 3164
    iget-object p4, p0, Lorg/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v1, v5, 0x1

    .line 3166
    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget p4, p4, v1

    invoke-virtual {p0, p4}, Lorg/objectweb/asm/ClassReader;->readLong(I)J

    move-result-wide v1

    .line 3165
    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    aput-wide v1, p2, v3

    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3169
    :cond_6
    invoke-virtual {p1, p3, p2}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    return v5

    .line 3128
    :pswitch_3
    new-array p2, v0, [C

    :goto_1
    if-ge v3, v0, :cond_7

    .line 3130
    iget-object p4, p0, Lorg/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v1, v5, 0x1

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget p4, p4, v1

    invoke-virtual {p0, p4}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result p4

    int-to-char p4, p4

    aput-char p4, p2, v3

    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3133
    :cond_7
    invoke-virtual {p1, p3, p2}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    return v5

    .line 3104
    :pswitch_4
    new-array p2, v0, [B

    :goto_2
    if-ge v3, v0, :cond_8

    .line 3106
    iget-object p4, p0, Lorg/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v1, v5, 0x1

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget p4, p4, v1

    invoke-virtual {p0, p4}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result p4

    int-to-byte p4, p4

    aput-byte p4, p2, v3

    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3109
    :cond_8
    invoke-virtual {p1, p3, p2}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    return v5

    .line 3144
    :cond_9
    new-array p2, v0, [J

    :goto_3
    if-ge v3, v0, :cond_a

    .line 3146
    iget-object p4, p0, Lorg/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v1, v5, 0x1

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget p4, p4, v1

    invoke-virtual {p0, p4}, Lorg/objectweb/asm/ClassReader;->readLong(I)J

    move-result-wide v1

    aput-wide v1, p2, v3

    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 3149
    :cond_a
    invoke-virtual {p1, p3, p2}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    return v5

    .line 3136
    :cond_b
    new-array p2, v0, [I

    :goto_4
    if-ge v3, v0, :cond_c

    .line 3138
    iget-object p4, p0, Lorg/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v1, v5, 0x1

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget p4, p4, v1

    invoke-virtual {p0, p4}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result p4

    aput p4, p2, v3

    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 3141
    :cond_c
    invoke-virtual {p1, p3, p2}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    return v5

    .line 3112
    :cond_d
    new-array p2, v0, [Z

    const/4 p4, 0x0

    :goto_5
    if-ge p4, v0, :cond_f

    .line 3114
    iget-object v1, p0, Lorg/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v2, v5, 0x1

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_6

    :cond_e
    const/4 v1, 0x0

    :goto_6
    aput-boolean v1, p2, p4

    add-int/lit8 v5, v5, 0x3

    add-int/lit8 p4, p4, 0x1

    goto :goto_5

    .line 3117
    :cond_f
    invoke-virtual {p1, p3, p2}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    return v5

    .line 3120
    :cond_10
    new-array p2, v0, [S

    :goto_7
    if-ge v3, v0, :cond_11

    .line 3122
    iget-object p4, p0, Lorg/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v1, v5, 0x1

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget p4, p4, v1

    invoke-virtual {p0, p4}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result p4

    int-to-short p4, p4

    aput-short p4, p2, v3

    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 3125
    :cond_11
    invoke-virtual {p1, p3, p2}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    return v5

    .line 3152
    :cond_12
    new-array p2, v0, [F

    :goto_8
    if-ge v3, v0, :cond_13

    .line 3154
    iget-object p4, p0, Lorg/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v1, v5, 0x1

    .line 3156
    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget p4, p4, v1

    invoke-virtual {p0, p4}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result p4

    .line 3155
    invoke-static {p4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p4

    aput p4, p2, v3

    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 3159
    :cond_13
    invoke-virtual {p1, p3, p2}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    return v5

    .line 3064
    :cond_14
    iget-object p4, p0, Lorg/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    invoke-virtual {p0, v6}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    aget p4, p4, v0

    invoke-virtual {p0, p4}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result p4

    if-nez p4, :cond_15

    .line 3065
    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_9

    .line 3066
    :cond_15
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 3062
    :goto_9
    invoke-virtual {p1, p3, p4}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x3

    return p2

    .line 3070
    :cond_16
    invoke-virtual {p0, v6, p4}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x3

    return p2

    .line 3076
    :cond_17
    invoke-virtual {p0, v6, p4}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, p2, 0x3

    .line 3077
    invoke-virtual {p0, v1, p4}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p4

    .line 3074
    invoke-virtual {p1, p3, v0, p4}, Lorg/objectweb/asm/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x5

    return p2

    .line 3081
    :cond_18
    invoke-virtual {p0, v6, p4}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x3

    return p2

    .line 3056
    :cond_19
    iget-object p4, p0, Lorg/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    .line 3057
    invoke-virtual {p0, v6}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    aget p4, p4, v0

    invoke-virtual {p0, p4}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result p4

    int-to-short p4, p4

    invoke-static {p4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p4

    .line 3056
    invoke-virtual {p1, p3, p4}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x3

    return p2

    .line 3052
    :cond_1a
    :pswitch_5
    invoke-virtual {p0, v6}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    invoke-virtual {p0, v0, p4}, Lorg/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object p4

    .line 3051
    invoke-virtual {p1, p3, p4}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x3

    return p2

    .line 3087
    :cond_1b
    invoke-virtual {p0, v6, p4}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lorg/objectweb/asm/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object p1

    add-int/lit8 p2, p2, 0x3

    .line 3086
    invoke-direct {p0, p1, p2, v4, p4}, Lorg/objectweb/asm/ClassReader;->readElementValues(Lorg/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private readElementValues(Lorg/objectweb/asm/AnnotationVisitor;IZ[C)I
    .locals 1

    .line 2986
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 p2, p2, 0x2

    if-eqz p3, :cond_0

    :goto_0
    add-int/lit8 p3, v0, -0x1

    if-lez v0, :cond_1

    .line 2991
    invoke-virtual {p0, p2, p4}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p2, p2, 0x2

    .line 2993
    invoke-direct {p0, p1, p2, v0, p4}, Lorg/objectweb/asm/ClassReader;->readElementValue(Lorg/objectweb/asm/AnnotationVisitor;ILjava/lang/String;[C)I

    move-result p2

    move v0, p3

    goto :goto_0

    :cond_0
    :goto_1
    add-int/lit8 p3, v0, -0x1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 2999
    invoke-direct {p0, p1, p2, v0, p4}, Lorg/objectweb/asm/ClassReader;->readElementValue(Lorg/objectweb/asm/AnnotationVisitor;ILjava/lang/String;[C)I

    move-result p2

    move v0, p3

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 3003
    invoke-virtual {p1}, Lorg/objectweb/asm/AnnotationVisitor;->visitEnd()V

    :cond_2
    return p2
.end method

.method private readField(Lorg/objectweb/asm/ClassVisitor;Lorg/objectweb/asm/Context;I)I
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    move/from16 v1, p3

    .line 1066
    iget-object v5, v8, Lorg/objectweb/asm/Context;->charBuffer:[C

    .line 1070
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    add-int/lit8 v3, v1, 0x2

    .line 1071
    invoke-virtual {v0, v3, v5}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v3, v1, 0x4

    .line 1072
    invoke-virtual {v0, v3, v5}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v3, v1, 0x6

    .line 1093
    invoke-virtual {v0, v3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v1, v1, 0x8

    move v10, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    add-int/lit8 v16, v3, -0x1

    if-lez v3, :cond_9

    move v3, v2

    .line 1097
    invoke-virtual {v0, v1, v5}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v9, v1, 0x2

    .line 1098
    invoke-virtual {v0, v9}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v9

    add-int/lit8 v1, v1, 0x6

    move/from16 v17, v3

    .line 1102
    const-string v3, "ConstantValue"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1103
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v14, 0x0

    goto :goto_1

    .line 1104
    :cond_0
    invoke-virtual {v0, v2, v5}, Lorg/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    goto :goto_1

    .line 1105
    :cond_1
    const-string v3, "Signature"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1106
    invoke-virtual {v0, v1, v5}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v13

    :goto_1
    move v3, v1

    :goto_2
    move v1, v4

    :goto_3
    move v4, v9

    move/from16 v2, v17

    goto/16 :goto_5

    .line 1107
    :cond_2
    const-string v3, "Deprecated"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/high16 v2, 0x20000

    or-int/2addr v2, v10

    :goto_4
    move v3, v1

    move v10, v2

    goto :goto_2

    .line 1109
    :cond_3
    const-string v3, "Synthetic"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    or-int/lit16 v2, v10, 0x1000

    goto :goto_4

    .line 1111
    :cond_4
    const-string v3, "RuntimeVisibleAnnotations"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v2, v1

    move v3, v2

    move v1, v4

    move v4, v9

    goto :goto_5

    .line 1113
    :cond_5
    const-string v3, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v1

    move v6, v3

    goto :goto_2

    .line 1115
    :cond_6
    const-string v3, "RuntimeInvisibleAnnotations"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v1

    goto :goto_3

    .line 1117
    :cond_7
    const-string v3, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v1

    move v7, v3

    goto :goto_2

    :cond_8
    move v3, v1

    .line 1120
    iget-object v1, v8, Lorg/objectweb/asm/Context;->attributePrototypes:[Lorg/objectweb/asm/Attribute;

    move/from16 v18, v6

    const/4 v6, -0x1

    move/from16 v19, v7

    const/4 v7, 0x0

    move v8, v9

    move v9, v4

    move v4, v8

    move/from16 v8, v18

    move/from16 v20, v19

    .line 1121
    invoke-direct/range {v0 .. v7}, Lorg/objectweb/asm/ClassReader;->readAttribute([Lorg/objectweb/asm/Attribute;Ljava/lang/String;II[CI[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Attribute;

    move-result-object v1

    .line 1129
    iput-object v15, v1, Lorg/objectweb/asm/Attribute;->nextAttribute:Lorg/objectweb/asm/Attribute;

    move-object v15, v1

    move v6, v8

    move v1, v9

    move/from16 v2, v17

    move/from16 v7, v20

    :goto_5
    add-int/2addr v3, v4

    move-object/from16 v8, p2

    move v4, v1

    move v1, v3

    move/from16 v3, v16

    goto/16 :goto_0

    :cond_9
    move-object/from16 v9, p1

    move v3, v2

    move v2, v4

    move v8, v6

    move/from16 v20, v7

    const/4 v4, 0x0

    .line 1137
    invoke-virtual/range {v9 .. v14}, Lorg/objectweb/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/objectweb/asm/FieldVisitor;

    move-result-object v6

    if-nez v6, :cond_a

    return v1

    :cond_a
    const/4 v7, 0x1

    if-eqz v3, :cond_b

    .line 1144
    invoke-virtual {v0, v3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v9

    add-int/lit8 v3, v3, 0x2

    :goto_6
    add-int/lit8 v10, v9, -0x1

    if-lez v9, :cond_b

    .line 1148
    invoke-virtual {v0, v3, v5}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v3, v3, 0x2

    .line 1153
    invoke-virtual {v6, v9, v7}, Lorg/objectweb/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v9

    .line 1152
    invoke-direct {v0, v9, v3, v7, v5}, Lorg/objectweb/asm/ClassReader;->readElementValues(Lorg/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v3

    move v9, v10

    goto :goto_6

    :cond_b
    if-eqz v2, :cond_c

    .line 1162
    invoke-virtual {v0, v2}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v2, v2, 0x2

    :goto_7
    add-int/lit8 v9, v3, -0x1

    if-lez v3, :cond_c

    .line 1166
    invoke-virtual {v0, v2, v5}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x2

    .line 1171
    invoke-virtual {v6, v3, v4}, Lorg/objectweb/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v3

    .line 1170
    invoke-direct {v0, v3, v2, v7, v5}, Lorg/objectweb/asm/ClassReader;->readElementValues(Lorg/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v2

    move v3, v9

    goto :goto_7

    :cond_c
    if-eqz v8, :cond_d

    .line 1180
    invoke-virtual {v0, v8}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    add-int/lit8 v3, v8, 0x2

    :goto_8
    add-int/lit8 v8, v2, -0x1

    if-lez v2, :cond_d

    move-object/from16 v2, p2

    .line 1184
    invoke-direct {v0, v2, v3}, Lorg/objectweb/asm/ClassReader;->readTypeAnnotationTarget(Lorg/objectweb/asm/Context;I)I

    move-result v3

    .line 1186
    invoke-virtual {v0, v3, v5}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v3, v3, 0x2

    .line 1189
    iget v10, v2, Lorg/objectweb/asm/Context;->currentTypeAnnotationTarget:I

    iget-object v11, v2, Lorg/objectweb/asm/Context;->currentTypeAnnotationTargetPath:Lorg/objectweb/asm/TypePath;

    .line 1191
    invoke-virtual {v6, v10, v11, v9, v7}, Lorg/objectweb/asm/FieldVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v9

    .line 1190
    invoke-direct {v0, v9, v3, v7, v5}, Lorg/objectweb/asm/ClassReader;->readElementValues(Lorg/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v3

    move v2, v8

    goto :goto_8

    :cond_d
    move-object/from16 v2, p2

    move/from16 v9, v20

    if-eqz v9, :cond_e

    .line 1204
    invoke-virtual {v0, v9}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v8, v9, 0x2

    :goto_9
    add-int/lit8 v9, v3, -0x1

    if-lez v3, :cond_e

    .line 1208
    invoke-direct {v0, v2, v8}, Lorg/objectweb/asm/ClassReader;->readTypeAnnotationTarget(Lorg/objectweb/asm/Context;I)I

    move-result v3

    .line 1210
    invoke-virtual {v0, v3, v5}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v3, v3, 0x2

    .line 1213
    iget v10, v2, Lorg/objectweb/asm/Context;->currentTypeAnnotationTarget:I

    iget-object v11, v2, Lorg/objectweb/asm/Context;->currentTypeAnnotationTargetPath:Lorg/objectweb/asm/TypePath;

    .line 1215
    invoke-virtual {v6, v10, v11, v8, v4}, Lorg/objectweb/asm/FieldVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v8

    .line 1214
    invoke-direct {v0, v8, v3, v7, v5}, Lorg/objectweb/asm/ClassReader;->readElementValues(Lorg/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v8

    move v3, v9

    goto :goto_9

    :cond_e
    :goto_a
    if-eqz v15, :cond_f

    .line 1229
    iget-object v2, v15, Lorg/objectweb/asm/Attribute;->nextAttribute:Lorg/objectweb/asm/Attribute;

    const/4 v3, 0x0

    .line 1230
    iput-object v3, v15, Lorg/objectweb/asm/Attribute;->nextAttribute:Lorg/objectweb/asm/Attribute;

    .line 1231
    invoke-virtual {v6, v15}, Lorg/objectweb/asm/FieldVisitor;->visitAttribute(Lorg/objectweb/asm/Attribute;)V

    move-object v15, v2

    goto :goto_a

    .line 1236
    :cond_f
    invoke-virtual {v6}, Lorg/objectweb/asm/FieldVisitor;->visitEnd()V

    return v1
.end method

.method private readMethod(Lorg/objectweb/asm/ClassVisitor;Lorg/objectweb/asm/Context;I)I
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    move/from16 v9, p3

    .line 1250
    iget-object v5, v8, Lorg/objectweb/asm/Context;->charBuffer:[C

    .line 1254
    invoke-virtual {v0, v9}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    iput v1, v8, Lorg/objectweb/asm/Context;->currentMethodAccessFlags:I

    add-int/lit8 v1, v9, 0x2

    .line 1255
    invoke-virtual {v0, v1, v5}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lorg/objectweb/asm/Context;->currentMethodName:Ljava/lang/String;

    add-int/lit8 v10, v9, 0x4

    .line 1256
    invoke-virtual {v0, v10, v5}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lorg/objectweb/asm/Context;->currentMethodDescriptor:Ljava/lang/String;

    add-int/lit8 v1, v9, 0x6

    .line 1291
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v2, v9, 0x8

    move v7, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    :goto_0
    add-int/lit8 v16, v1, -0x1

    const/high16 v25, 0x20000

    if-lez v1, :cond_f

    move v1, v2

    .line 1295
    invoke-virtual {v0, v7, v5}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    const/16 v26, 0x1

    add-int/lit8 v12, v7, 0x2

    .line 1296
    invoke-virtual {v0, v12}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v12

    move/from16 v17, v3

    add-int/lit8 v3, v7, 0x6

    move/from16 v18, v1

    .line 1300
    const-string v1, "Code"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1301
    iget v1, v8, Lorg/objectweb/asm/Context;->parsingOptions:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_4

    move/from16 v24, v3

    goto :goto_2

    .line 1304
    :cond_0
    const-string v1, "Exceptions"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1306
    invoke-virtual {v0, v3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    add-int/lit8 v7, v7, 0x8

    move-object/from16 v19, v2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 1309
    invoke-virtual {v0, v7, v5}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v2

    add-int/lit8 v7, v7, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move/from16 v21, v3

    goto :goto_2

    .line 1312
    :cond_2
    const-string v1, "Signature"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1313
    invoke-virtual {v0, v3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v13

    goto :goto_2

    .line 1314
    :cond_3
    const-string v1, "Deprecated"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1315
    iget v1, v8, Lorg/objectweb/asm/Context;->currentMethodAccessFlags:I

    or-int v1, v1, v25

    iput v1, v8, Lorg/objectweb/asm/Context;->currentMethodAccessFlags:I

    :cond_4
    :goto_2
    move/from16 v28, v4

    :goto_3
    move-object v2, v5

    move v4, v12

    goto/16 :goto_4

    .line 1316
    :cond_5
    const-string v1, "RuntimeVisibleAnnotations"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move/from16 v18, v3

    goto :goto_2

    .line 1318
    :cond_6
    const-string v1, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move/from16 v28, v3

    goto :goto_3

    .line 1320
    :cond_7
    const-string v1, "AnnotationDefault"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v15, v3

    goto :goto_2

    .line 1322
    :cond_8
    const-string v1, "Synthetic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1324
    iget v1, v8, Lorg/objectweb/asm/Context;->currentMethodAccessFlags:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, v8, Lorg/objectweb/asm/Context;->currentMethodAccessFlags:I

    move/from16 v28, v4

    move-object v2, v5

    move v4, v12

    const/16 v20, 0x1

    goto :goto_4

    .line 1325
    :cond_9
    const-string v1, "RuntimeInvisibleAnnotations"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move/from16 v17, v3

    goto :goto_2

    .line 1327
    :cond_a
    const-string v1, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v6, v3

    goto :goto_2

    .line 1329
    :cond_b
    const-string v1, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move/from16 v22, v3

    goto :goto_2

    .line 1331
    :cond_c
    const-string v1, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move/from16 v23, v3

    goto :goto_2

    .line 1333
    :cond_d
    const-string v1, "MethodParameters"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    move v14, v3

    goto :goto_2

    .line 1336
    :cond_e
    iget-object v1, v8, Lorg/objectweb/asm/Context;->attributePrototypes:[Lorg/objectweb/asm/Attribute;

    move v7, v6

    const/4 v6, -0x1

    move/from16 v25, v7

    const/4 v7, 0x0

    move/from16 v28, v4

    move v4, v12

    move/from16 v27, v17

    move/from16 v12, v18

    move/from16 v29, v25

    .line 1337
    invoke-direct/range {v0 .. v7}, Lorg/objectweb/asm/ClassReader;->readAttribute([Lorg/objectweb/asm/Attribute;Ljava/lang/String;II[CI[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Attribute;

    move-result-object v1

    move-object v2, v5

    .line 1345
    iput-object v11, v1, Lorg/objectweb/asm/Attribute;->nextAttribute:Lorg/objectweb/asm/Attribute;

    move-object v11, v1

    move/from16 v6, v29

    :goto_4
    add-int v7, v3, v4

    move-object v5, v2

    move/from16 v1, v16

    move/from16 v3, v17

    move/from16 v2, v18

    move/from16 v4, v28

    goto/16 :goto_0

    :cond_f
    move v12, v2

    move/from16 v27, v3

    move/from16 v28, v4

    move-object v2, v5

    move/from16 v29, v6

    move v1, v15

    const/16 v26, 0x1

    .line 1352
    iget v15, v8, Lorg/objectweb/asm/Context;->currentMethodAccessFlags:I

    iget-object v3, v8, Lorg/objectweb/asm/Context;->currentMethodName:Ljava/lang/String;

    iget-object v4, v8, Lorg/objectweb/asm/Context;->currentMethodDescriptor:Ljava/lang/String;

    if-nez v13, :cond_10

    const/16 v18, 0x0

    goto :goto_5

    .line 1357
    :cond_10
    invoke-virtual {v0, v13, v2}, Lorg/objectweb/asm/ClassReader;->readUtf(I[C)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v18, v5

    :goto_5
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move v3, v1

    move v1, v14

    move-object/from16 v14, p1

    .line 1353
    invoke-virtual/range {v14 .. v19}, Lorg/objectweb/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/MethodVisitor;

    move-result-object v14

    if-nez v14, :cond_11

    return v7

    .line 1367
    :cond_11
    instance-of v4, v14, Lorg/objectweb/asm/MethodWriter;

    if-eqz v4, :cond_13

    .line 1368
    move-object v4, v14

    check-cast v4, Lorg/objectweb/asm/MethodWriter;

    .line 1369
    iget v5, v8, Lorg/objectweb/asm/Context;->currentMethodAccessFlags:I

    and-int v5, v5, v25

    move v15, v3

    if-eqz v5, :cond_12

    const/4 v3, 0x1

    goto :goto_6

    :cond_12
    const/4 v3, 0x0

    .line 1373
    :goto_6
    invoke-virtual {v0, v10}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    move v6, v1

    move-object v1, v0

    move-object v0, v4

    move v4, v5

    move v5, v13

    move v13, v6

    move-object v10, v2

    move/from16 v2, v20

    move/from16 v6, v21

    .line 1369
    invoke-virtual/range {v0 .. v6}, Lorg/objectweb/asm/MethodWriter;->canCopyMethodAttributes(Lorg/objectweb/asm/ClassReader;ZZIII)Z

    move-result v2

    move-object/from16 v30, v1

    move-object v1, v0

    move-object/from16 v0, v30

    if-eqz v2, :cond_14

    sub-int v2, v7, v9

    .line 1376
    invoke-virtual {v1, v9, v2}, Lorg/objectweb/asm/MethodWriter;->setMethodAttributesSource(II)V

    return v7

    :cond_13
    move v13, v1

    move-object v10, v2

    move v15, v3

    :cond_14
    if-eqz v13, :cond_15

    .line 1382
    iget v1, v8, Lorg/objectweb/asm/Context;->parsingOptions:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_15

    .line 1383
    invoke-virtual {v0, v13}, Lorg/objectweb/asm/ClassReader;->readByte(I)I

    move-result v1

    add-int/lit8 v2, v13, 0x1

    :goto_7
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_15

    .line 1388
    invoke-virtual {v0, v2, v10}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v4, v2, 0x2

    .line 1389
    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    .line 1387
    invoke-virtual {v14, v1, v4}, Lorg/objectweb/asm/MethodVisitor;->visitParameter(Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x4

    move v1, v3

    goto :goto_7

    :cond_15
    if-eqz v15, :cond_16

    .line 1396
    invoke-virtual {v14}, Lorg/objectweb/asm/MethodVisitor;->visitAnnotationDefault()Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    const/4 v2, 0x0

    .line 1397
    invoke-direct {v0, v1, v15, v2, v10}, Lorg/objectweb/asm/ClassReader;->readElementValue(Lorg/objectweb/asm/AnnotationVisitor;ILjava/lang/String;[C)I

    if-eqz v1, :cond_16

    .line 1399
    invoke-virtual {v1}, Lorg/objectweb/asm/AnnotationVisitor;->visitEnd()V

    :cond_16
    if-eqz v12, :cond_17

    .line 1405
    invoke-virtual {v0, v12}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v2, v12, 0x2

    :goto_8
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_17

    .line 1409
    invoke-virtual {v0, v2, v10}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x2

    const/4 v4, 0x1

    .line 1414
    invoke-virtual {v14, v1, v4}, Lorg/objectweb/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    .line 1413
    invoke-direct {v0, v1, v2, v4, v10}, Lorg/objectweb/asm/ClassReader;->readElementValues(Lorg/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v2

    move v1, v3

    const/16 v26, 0x1

    goto :goto_8

    :cond_17
    move/from16 v1, v27

    if-eqz v1, :cond_18

    .line 1423
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    add-int/lit8 v3, v1, 0x2

    :goto_9
    add-int/lit8 v1, v2, -0x1

    if-lez v2, :cond_18

    .line 1427
    invoke-virtual {v0, v3, v10}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    .line 1432
    invoke-virtual {v14, v2, v4}, Lorg/objectweb/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v2

    const/4 v4, 0x1

    .line 1431
    invoke-direct {v0, v2, v3, v4, v10}, Lorg/objectweb/asm/ClassReader;->readElementValues(Lorg/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v3

    move v2, v1

    goto :goto_9

    :cond_18
    move/from16 v1, v28

    if-eqz v1, :cond_19

    .line 1441
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    add-int/lit8 v4, v1, 0x2

    :goto_a
    add-int/lit8 v1, v2, -0x1

    if-lez v2, :cond_19

    .line 1445
    invoke-direct {v0, v8, v4}, Lorg/objectweb/asm/ClassReader;->readTypeAnnotationTarget(Lorg/objectweb/asm/Context;I)I

    move-result v2

    .line 1447
    invoke-virtual {v0, v2, v10}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x2

    .line 1450
    iget v4, v8, Lorg/objectweb/asm/Context;->currentTypeAnnotationTarget:I

    iget-object v5, v8, Lorg/objectweb/asm/Context;->currentTypeAnnotationTargetPath:Lorg/objectweb/asm/TypePath;

    const/4 v6, 0x1

    .line 1452
    invoke-virtual {v14, v4, v5, v3, v6}, Lorg/objectweb/asm/MethodVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v3

    .line 1451
    invoke-direct {v0, v3, v2, v6, v10}, Lorg/objectweb/asm/ClassReader;->readElementValues(Lorg/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v4

    move v2, v1

    goto :goto_a

    :cond_19
    move/from16 v6, v29

    if-eqz v6, :cond_1a

    .line 1465
    invoke-virtual {v0, v6}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v6, v6, 0x2

    :goto_b
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_1a

    .line 1469
    invoke-direct {v0, v8, v6}, Lorg/objectweb/asm/ClassReader;->readTypeAnnotationTarget(Lorg/objectweb/asm/Context;I)I

    move-result v1

    .line 1471
    invoke-virtual {v0, v1, v10}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x2

    .line 1474
    iget v4, v8, Lorg/objectweb/asm/Context;->currentTypeAnnotationTarget:I

    iget-object v5, v8, Lorg/objectweb/asm/Context;->currentTypeAnnotationTargetPath:Lorg/objectweb/asm/TypePath;

    const/4 v6, 0x0

    .line 1476
    invoke-virtual {v14, v4, v5, v3, v6}, Lorg/objectweb/asm/MethodVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v3

    const/4 v4, 0x1

    .line 1475
    invoke-direct {v0, v3, v1, v4, v10}, Lorg/objectweb/asm/ClassReader;->readElementValues(Lorg/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v1

    move v6, v1

    move v1, v2

    goto :goto_b

    :cond_1a
    const/4 v4, 0x1

    const/4 v6, 0x0

    move/from16 v1, v22

    if-eqz v1, :cond_1b

    .line 1489
    invoke-direct {v0, v14, v8, v1, v4}, Lorg/objectweb/asm/ClassReader;->readParameterAnnotations(Lorg/objectweb/asm/MethodVisitor;Lorg/objectweb/asm/Context;IZ)V

    :cond_1b
    move/from16 v1, v23

    if-eqz v1, :cond_1c

    .line 1495
    invoke-direct {v0, v14, v8, v1, v6}, Lorg/objectweb/asm/ClassReader;->readParameterAnnotations(Lorg/objectweb/asm/MethodVisitor;Lorg/objectweb/asm/Context;IZ)V

    :cond_1c
    :goto_c
    if-eqz v11, :cond_1d

    .line 1505
    iget-object v1, v11, Lorg/objectweb/asm/Attribute;->nextAttribute:Lorg/objectweb/asm/Attribute;

    const/4 v2, 0x0

    .line 1506
    iput-object v2, v11, Lorg/objectweb/asm/Attribute;->nextAttribute:Lorg/objectweb/asm/Attribute;

    .line 1507
    invoke-virtual {v14, v11}, Lorg/objectweb/asm/MethodVisitor;->visitAttribute(Lorg/objectweb/asm/Attribute;)V

    move-object v11, v1

    goto :goto_c

    :cond_1d
    move/from16 v11, v24

    if-eqz v11, :cond_1e

    .line 1513
    invoke-virtual {v14}, Lorg/objectweb/asm/MethodVisitor;->visitCode()V

    .line 1514
    invoke-direct {v0, v14, v8, v11}, Lorg/objectweb/asm/ClassReader;->readCode(Lorg/objectweb/asm/MethodVisitor;Lorg/objectweb/asm/Context;I)V

    .line 1518
    :cond_1e
    invoke-virtual {v14}, Lorg/objectweb/asm/MethodVisitor;->visitEnd()V

    return v7
.end method

.method private readModuleAttributes(Lorg/objectweb/asm/ClassVisitor;Lorg/objectweb/asm/Context;IILjava/lang/String;)V
    .locals 7

    .line 773
    iget-object p2, p2, Lorg/objectweb/asm/Context;->charBuffer:[C

    .line 777
    invoke-virtual {p0, p3, p2}, Lorg/objectweb/asm/ClassReader;->readModule(I[C)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, p3, 0x2

    .line 778
    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v2, p3, 0x4

    .line 779
    invoke-virtual {p0, v2, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, p3, 0x6

    .line 781
    invoke-virtual {p1, v0, v1, v2}, Lorg/objectweb/asm/ClassVisitor;->visitModule(Ljava/lang/String;ILjava/lang/String;)Lorg/objectweb/asm/ModuleVisitor;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p5, :cond_1

    .line 788
    invoke-virtual {p1, p5}, Lorg/objectweb/asm/ModuleVisitor;->visitMainClass(Ljava/lang/String;)V

    :cond_1
    if-eqz p4, :cond_2

    .line 793
    invoke-virtual {p0, p4}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result p5

    add-int/lit8 p4, p4, 0x2

    :goto_0
    add-int/lit8 v0, p5, -0x1

    if-lez p5, :cond_2

    .line 796
    invoke-virtual {p0, p4, p2}, Lorg/objectweb/asm/ClassReader;->readPackage(I[C)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Lorg/objectweb/asm/ModuleVisitor;->visitPackage(Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x2

    move p5, v0

    goto :goto_0

    .line 802
    :cond_2
    invoke-virtual {p0, v3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result p4

    add-int/lit8 p3, p3, 0x8

    :goto_1
    add-int/lit8 p5, p4, -0x1

    if-lez p4, :cond_3

    .line 806
    invoke-virtual {p0, p3, p2}, Lorg/objectweb/asm/ClassReader;->readModule(I[C)Ljava/lang/String;

    move-result-object p4

    add-int/lit8 v0, p3, 0x2

    .line 807
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v1, p3, 0x4

    .line 808
    invoke-virtual {p0, v1, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 p3, p3, 0x6

    .line 810
    invoke-virtual {p1, p4, v0, v1}, Lorg/objectweb/asm/ModuleVisitor;->visitRequire(Ljava/lang/String;ILjava/lang/String;)V

    move p4, p5

    goto :goto_1

    .line 814
    :cond_3
    invoke-virtual {p0, p3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result p4

    add-int/lit8 p3, p3, 0x2

    :goto_2
    add-int/lit8 p5, p4, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-lez p4, :cond_5

    .line 819
    invoke-virtual {p0, p3, p2}, Lorg/objectweb/asm/ClassReader;->readPackage(I[C)Ljava/lang/String;

    move-result-object p4

    add-int/lit8 v2, p3, 0x2

    .line 820
    invoke-virtual {p0, v2}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    add-int/lit8 v3, p3, 0x4

    .line 821
    invoke-virtual {p0, v3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 p3, p3, 0x6

    if-eqz v3, :cond_4

    .line 825
    new-array v0, v3, [Ljava/lang/String;

    :goto_3
    if-ge v1, v3, :cond_4

    .line 827
    invoke-virtual {p0, p3, p2}, Lorg/objectweb/asm/ClassReader;->readModule(I[C)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    add-int/lit8 p3, p3, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 831
    :cond_4
    invoke-virtual {p1, p4, v2, v0}, Lorg/objectweb/asm/ModuleVisitor;->visitExport(Ljava/lang/String;I[Ljava/lang/String;)V

    move p4, p5

    goto :goto_2

    .line 835
    :cond_5
    invoke-virtual {p0, p3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result p4

    add-int/lit8 p3, p3, 0x2

    :goto_4
    add-int/lit8 p5, p4, -0x1

    if-lez p4, :cond_8

    .line 839
    invoke-virtual {p0, p3, p2}, Lorg/objectweb/asm/ClassReader;->readPackage(I[C)Ljava/lang/String;

    move-result-object p4

    add-int/lit8 v2, p3, 0x2

    .line 840
    invoke-virtual {p0, v2}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    add-int/lit8 v3, p3, 0x4

    .line 841
    invoke-virtual {p0, v3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 p3, p3, 0x6

    if-eqz v3, :cond_6

    .line 845
    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v3, :cond_7

    .line 847
    invoke-virtual {p0, p3, p2}, Lorg/objectweb/asm/ClassReader;->readModule(I[C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 p3, p3, 0x2

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    move-object v4, v0

    .line 851
    :cond_7
    invoke-virtual {p1, p4, v2, v4}, Lorg/objectweb/asm/ModuleVisitor;->visitOpen(Ljava/lang/String;I[Ljava/lang/String;)V

    move p4, p5

    goto :goto_4

    .line 855
    :cond_8
    invoke-virtual {p0, p3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result p4

    add-int/lit8 p3, p3, 0x2

    :goto_6
    add-int/lit8 p5, p4, -0x1

    if-lez p4, :cond_9

    .line 858
    invoke-virtual {p0, p3, p2}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lorg/objectweb/asm/ModuleVisitor;->visitUse(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x2

    move p4, p5

    goto :goto_6

    .line 863
    :cond_9
    invoke-virtual {p0, p3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result p4

    add-int/lit8 p3, p3, 0x2

    :goto_7
    add-int/lit8 p5, p4, -0x1

    if-lez p4, :cond_b

    .line 867
    invoke-virtual {p0, p3, p2}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object p4

    add-int/lit8 v0, p3, 0x2

    .line 868
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 p3, p3, 0x4

    .line 870
    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v0, :cond_a

    .line 872
    invoke-virtual {p0, p3, p2}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 p3, p3, 0x2

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 875
    :cond_a
    invoke-virtual {p1, p4, v2}, Lorg/objectweb/asm/ModuleVisitor;->visitProvide(Ljava/lang/String;[Ljava/lang/String;)V

    move p4, p5

    goto :goto_7

    .line 879
    :cond_b
    invoke-virtual {p1}, Lorg/objectweb/asm/ModuleVisitor;->visitEnd()V

    return-void
.end method

.method private readParameterAnnotations(Lorg/objectweb/asm/MethodVisitor;Lorg/objectweb/asm/Context;IZ)V
    .locals 5

    .line 2944
    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->classFileBuffer:[B

    add-int/lit8 v1, p3, 0x1

    aget-byte p3, v0, p3

    and-int/lit16 p3, p3, 0xff

    .line 2945
    invoke-virtual {p1, p3, p4}, Lorg/objectweb/asm/MethodVisitor;->visitAnnotableParameterCount(IZ)V

    .line 2946
    iget-object p2, p2, Lorg/objectweb/asm/Context;->charBuffer:[C

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    .line 2948
    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    add-int/lit8 v1, v1, 0x2

    :goto_1
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_0

    .line 2952
    invoke-virtual {p0, v1, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x2

    .line 2957
    invoke-virtual {p1, v0, v2, p4}, Lorg/objectweb/asm/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v2

    const/4 v4, 0x1

    .line 2956
    invoke-direct {p0, v2, v1, v4, p2}, Lorg/objectweb/asm/ClassReader;->readElementValues(Lorg/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v1

    move v2, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private readRecordComponent(Lorg/objectweb/asm/ClassVisitor;Lorg/objectweb/asm/Context;I)I
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    move/from16 v1, p3

    .line 892
    iget-object v5, v8, Lorg/objectweb/asm/Context;->charBuffer:[C

    .line 895
    invoke-virtual {v0, v1, v5}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v2, v1, 0x2

    .line 896
    invoke-virtual {v0, v2, v5}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v2, v1, 0x4

    .line 917
    invoke-virtual {v0, v2}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    add-int/lit8 v1, v1, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    add-int/lit8 v16, v2, -0x1

    if-lez v2, :cond_5

    .line 921
    invoke-virtual {v0, v1, v5}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v7, v1, 0x2

    .line 922
    invoke-virtual {v0, v7}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v7

    add-int/lit8 v1, v1, 0x6

    .line 926
    const-string v11, "Signature"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 927
    invoke-virtual {v0, v1, v5}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v13

    move v2, v3

    move v3, v1

    move v1, v2

    :goto_1
    move-object v2, v4

    move v4, v7

    goto/16 :goto_2

    .line 928
    :cond_0
    const-string v11, "RuntimeVisibleAnnotations"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move v14, v1

    move-object v2, v4

    move v4, v7

    move v1, v3

    move v3, v14

    goto :goto_2

    .line 930
    :cond_1
    const-string v11, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    move v3, v1

    goto :goto_1

    .line 932
    :cond_2
    const-string v11, "RuntimeInvisibleAnnotations"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    move v15, v1

    move-object v2, v4

    move v4, v7

    move v1, v3

    move v3, v15

    goto :goto_2

    .line 934
    :cond_3
    const-string v11, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    move v6, v1

    move-object v2, v4

    move v4, v7

    move v1, v3

    move v3, v6

    goto :goto_2

    :cond_4
    move v11, v3

    move v3, v1

    .line 937
    iget-object v1, v8, Lorg/objectweb/asm/Context;->attributePrototypes:[Lorg/objectweb/asm/Attribute;

    move/from16 v17, v6

    const/4 v6, -0x1

    move-object/from16 v18, v4

    move v4, v7

    const/4 v7, 0x0

    move/from16 v19, v17

    move-object/from16 v12, v18

    .line 938
    invoke-direct/range {v0 .. v7}, Lorg/objectweb/asm/ClassReader;->readAttribute([Lorg/objectweb/asm/Attribute;Ljava/lang/String;II[CI[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Attribute;

    move-result-object v1

    .line 946
    iput-object v12, v1, Lorg/objectweb/asm/Attribute;->nextAttribute:Lorg/objectweb/asm/Attribute;

    move-object v2, v1

    move v1, v11

    move/from16 v6, v19

    :goto_2
    add-int/2addr v3, v4

    move v4, v3

    move v3, v1

    move v1, v4

    move-object v4, v2

    move/from16 v2, v16

    goto :goto_0

    :cond_5
    move-object/from16 v2, p1

    move v11, v3

    move-object v12, v4

    move/from16 v19, v6

    .line 953
    invoke-virtual {v2, v9, v10, v13}, Lorg/objectweb/asm/ClassVisitor;->visitRecordComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/RecordComponentVisitor;

    move-result-object v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    const/4 v3, 0x1

    if-eqz v14, :cond_7

    .line 960
    invoke-virtual {v0, v14}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    add-int/lit8 v14, v14, 0x2

    :goto_3
    add-int/lit8 v6, v4, -0x1

    if-lez v4, :cond_7

    .line 964
    invoke-virtual {v0, v14, v5}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v14, v14, 0x2

    .line 969
    invoke-virtual {v2, v4, v3}, Lorg/objectweb/asm/RecordComponentVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v4

    .line 968
    invoke-direct {v0, v4, v14, v3, v5}, Lorg/objectweb/asm/ClassReader;->readElementValues(Lorg/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v14

    move v4, v6

    goto :goto_3

    :cond_7
    if-eqz v15, :cond_8

    .line 978
    invoke-virtual {v0, v15}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    add-int/lit8 v15, v15, 0x2

    :goto_4
    add-int/lit8 v6, v4, -0x1

    if-lez v4, :cond_8

    .line 982
    invoke-virtual {v0, v15, v5}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v15, v15, 0x2

    const/4 v7, 0x0

    .line 987
    invoke-virtual {v2, v4, v7}, Lorg/objectweb/asm/RecordComponentVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v4

    .line 986
    invoke-direct {v0, v4, v15, v3, v5}, Lorg/objectweb/asm/ClassReader;->readElementValues(Lorg/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v15

    move v4, v6

    goto :goto_4

    :cond_8
    if-eqz v11, :cond_9

    .line 996
    invoke-virtual {v0, v11}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    add-int/lit8 v6, v11, 0x2

    :goto_5
    add-int/lit8 v7, v4, -0x1

    if-lez v4, :cond_9

    .line 1000
    invoke-direct {v0, v8, v6}, Lorg/objectweb/asm/ClassReader;->readTypeAnnotationTarget(Lorg/objectweb/asm/Context;I)I

    move-result v4

    .line 1002
    invoke-virtual {v0, v4, v5}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v4, v4, 0x2

    .line 1005
    iget v9, v8, Lorg/objectweb/asm/Context;->currentTypeAnnotationTarget:I

    iget-object v10, v8, Lorg/objectweb/asm/Context;->currentTypeAnnotationTargetPath:Lorg/objectweb/asm/TypePath;

    .line 1007
    invoke-virtual {v2, v9, v10, v6, v3}, Lorg/objectweb/asm/RecordComponentVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v6

    .line 1006
    invoke-direct {v0, v6, v4, v3, v5}, Lorg/objectweb/asm/ClassReader;->readElementValues(Lorg/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v6

    move v4, v7

    goto :goto_5

    :cond_9
    move/from16 v6, v19

    if-eqz v6, :cond_a

    .line 1020
    invoke-virtual {v0, v6}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    add-int/lit8 v6, v6, 0x2

    :goto_6
    add-int/lit8 v7, v4, -0x1

    if-lez v4, :cond_a

    .line 1024
    invoke-direct {v0, v8, v6}, Lorg/objectweb/asm/ClassReader;->readTypeAnnotationTarget(Lorg/objectweb/asm/Context;I)I

    move-result v4

    .line 1026
    invoke-virtual {v0, v4, v5}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v4, v4, 0x2

    .line 1029
    iget v9, v8, Lorg/objectweb/asm/Context;->currentTypeAnnotationTarget:I

    iget-object v10, v8, Lorg/objectweb/asm/Context;->currentTypeAnnotationTargetPath:Lorg/objectweb/asm/TypePath;

    const/4 v11, 0x0

    .line 1031
    invoke-virtual {v2, v9, v10, v6, v11}, Lorg/objectweb/asm/RecordComponentVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v6

    .line 1030
    invoke-direct {v0, v6, v4, v3, v5}, Lorg/objectweb/asm/ClassReader;->readElementValues(Lorg/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v6

    move v4, v7

    goto :goto_6

    :cond_a
    move-object v4, v12

    :goto_7
    if-eqz v4, :cond_b

    .line 1045
    iget-object v3, v4, Lorg/objectweb/asm/Attribute;->nextAttribute:Lorg/objectweb/asm/Attribute;

    const/4 v5, 0x0

    .line 1046
    iput-object v5, v4, Lorg/objectweb/asm/Attribute;->nextAttribute:Lorg/objectweb/asm/Attribute;

    .line 1047
    invoke-virtual {v2, v4}, Lorg/objectweb/asm/RecordComponentVisitor;->visitAttribute(Lorg/objectweb/asm/Attribute;)V

    move-object v4, v3

    goto :goto_7

    .line 1052
    :cond_b
    invoke-virtual {v2}, Lorg/objectweb/asm/RecordComponentVisitor;->visitEnd()V

    return v1
.end method

.method private readStackMapFrame(IZZLorg/objectweb/asm/Context;)I
    .locals 11

    .line 3279
    iget-object v4, p4, Lorg/objectweb/asm/Context;->charBuffer:[C

    .line 3280
    iget-object v5, p4, Lorg/objectweb/asm/Context;->currentMethodLabels:[Lorg/objectweb/asm/Label;

    const/16 v0, 0xff

    if-eqz p2, :cond_0

    .line 3284
    iget-object p2, p0, Lorg/objectweb/asm/ClassReader;->classFileBuffer:[B

    add-int/lit8 v1, p1, 0x1

    aget-byte p1, p2, p1

    and-int/2addr p1, v0

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    .line 3287
    iput p2, p4, Lorg/objectweb/asm/Context;->currentFrameOffset:I

    move v1, p1

    const/16 p1, 0xff

    :goto_0
    const/4 p2, 0x0

    .line 3290
    iput p2, p4, Lorg/objectweb/asm/Context;->currentFrameLocalCountDelta:I

    const/4 v2, 0x3

    const/16 v3, 0x40

    const/4 v6, 0x1

    if-ge p1, v3, :cond_1

    .line 3293
    iput v2, p4, Lorg/objectweb/asm/Context;->currentFrameType:I

    .line 3294
    iput p2, p4, Lorg/objectweb/asm/Context;->currentFrameStackCount:I

    move-object v0, p0

    goto/16 :goto_7

    :cond_1
    const/16 v3, 0x80

    const/4 v7, 0x4

    if-ge p1, v3, :cond_2

    add-int/lit8 p1, p1, -0x40

    .line 3297
    iget-object v2, p4, Lorg/objectweb/asm/Context;->currentFrameStackTypes:[Ljava/lang/Object;

    const/4 v3, 0x0

    move-object v0, p0

    .line 3298
    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/ClassReader;->readVerificationTypeInfo(I[Ljava/lang/Object;I[C[Lorg/objectweb/asm/Label;)I

    move-result v1

    move-object v3, v0

    .line 3300
    iput v7, p4, Lorg/objectweb/asm/Context;->currentFrameType:I

    .line 3301
    iput v6, p4, Lorg/objectweb/asm/Context;->currentFrameStackCount:I

    goto/16 :goto_7

    :cond_2
    move-object v3, p0

    const/16 v8, 0xf7

    if-lt p1, v8, :cond_b

    .line 3303
    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v9

    move v10, v1

    add-int/lit8 v1, v10, 0x2

    if-ne p1, v8, :cond_4

    .line 3306
    iget-object v2, p4, Lorg/objectweb/asm/Context;->currentFrameStackTypes:[Ljava/lang/Object;

    const/4 v3, 0x0

    move-object v0, p0

    .line 3307
    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/ClassReader;->readVerificationTypeInfo(I[Ljava/lang/Object;I[C[Lorg/objectweb/asm/Label;)I

    move-result v1

    .line 3309
    iput v7, p4, Lorg/objectweb/asm/Context;->currentFrameType:I

    .line 3310
    iput v6, p4, Lorg/objectweb/asm/Context;->currentFrameStackCount:I

    :cond_3
    :goto_1
    move p1, v9

    goto/16 :goto_7

    :cond_4
    const/16 v3, 0xf8

    const/4 v7, 0x2

    const/16 v8, 0xfb

    if-lt p1, v3, :cond_5

    if-ge p1, v8, :cond_5

    .line 3312
    iput v7, p4, Lorg/objectweb/asm/Context;->currentFrameType:I

    rsub-int p1, p1, 0xfb

    .line 3313
    iput p1, p4, Lorg/objectweb/asm/Context;->currentFrameLocalCountDelta:I

    .line 3314
    iget p1, p4, Lorg/objectweb/asm/Context;->currentFrameLocalCount:I

    iget p3, p4, Lorg/objectweb/asm/Context;->currentFrameLocalCountDelta:I

    sub-int/2addr p1, p3

    iput p1, p4, Lorg/objectweb/asm/Context;->currentFrameLocalCount:I

    .line 3315
    iput p2, p4, Lorg/objectweb/asm/Context;->currentFrameStackCount:I

    goto :goto_2

    :cond_5
    if-ne p1, v8, :cond_6

    .line 3317
    iput v2, p4, Lorg/objectweb/asm/Context;->currentFrameType:I

    .line 3318
    iput p2, p4, Lorg/objectweb/asm/Context;->currentFrameStackCount:I

    :goto_2
    move-object v0, p0

    goto :goto_1

    :cond_6
    if-ge p1, v0, :cond_9

    if-eqz p3, :cond_7

    .line 3320
    iget p3, p4, Lorg/objectweb/asm/Context;->currentFrameLocalCount:I

    goto :goto_3

    :cond_7
    const/4 p3, 0x0

    :goto_3
    add-int/lit16 p1, p1, -0xfb

    move v3, p3

    move p3, p1

    :goto_4
    if-lez p3, :cond_8

    .line 3322
    iget-object v2, p4, Lorg/objectweb/asm/Context;->currentFrameLocalTypes:[Ljava/lang/Object;

    add-int/lit8 v7, v3, 0x1

    move-object v0, p0

    .line 3323
    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/ClassReader;->readVerificationTypeInfo(I[Ljava/lang/Object;I[C[Lorg/objectweb/asm/Label;)I

    move-result v1

    add-int/lit8 p3, p3, -0x1

    move v3, v7

    goto :goto_4

    :cond_8
    move-object v0, p0

    .line 3326
    iput v6, p4, Lorg/objectweb/asm/Context;->currentFrameType:I

    .line 3327
    iput p1, p4, Lorg/objectweb/asm/Context;->currentFrameLocalCountDelta:I

    .line 3328
    iget p1, p4, Lorg/objectweb/asm/Context;->currentFrameLocalCount:I

    iget p3, p4, Lorg/objectweb/asm/Context;->currentFrameLocalCountDelta:I

    add-int/2addr p1, p3

    iput p1, p4, Lorg/objectweb/asm/Context;->currentFrameLocalCount:I

    .line 3329
    iput p2, p4, Lorg/objectweb/asm/Context;->currentFrameStackCount:I

    goto :goto_1

    :cond_9
    move-object v0, p0

    .line 3331
    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result p1

    add-int/lit8 v1, v10, 0x4

    .line 3333
    iput p2, p4, Lorg/objectweb/asm/Context;->currentFrameType:I

    .line 3334
    iput p1, p4, Lorg/objectweb/asm/Context;->currentFrameLocalCountDelta:I

    .line 3335
    iput p1, p4, Lorg/objectweb/asm/Context;->currentFrameLocalCount:I

    const/4 v3, 0x0

    :goto_5
    if-ge v3, p1, :cond_a

    .line 3337
    iget-object v2, p4, Lorg/objectweb/asm/Context;->currentFrameLocalTypes:[Ljava/lang/Object;

    .line 3338
    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/ClassReader;->readVerificationTypeInfo(I[Ljava/lang/Object;I[C[Lorg/objectweb/asm/Label;)I

    move-result v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 3341
    :cond_a
    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result p1

    add-int/2addr v1, v7

    .line 3343
    iput p1, p4, Lorg/objectweb/asm/Context;->currentFrameStackCount:I

    const/4 v3, 0x0

    :goto_6
    if-ge v3, p1, :cond_3

    .line 3345
    iget-object v2, p4, Lorg/objectweb/asm/Context;->currentFrameStackTypes:[Ljava/lang/Object;

    .line 3346
    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/ClassReader;->readVerificationTypeInfo(I[Ljava/lang/Object;I[C[Lorg/objectweb/asm/Label;)I

    move-result v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 3353
    :goto_7
    iget p2, p4, Lorg/objectweb/asm/Context;->currentFrameOffset:I

    add-int/2addr p1, v6

    add-int/2addr p2, p1

    iput p2, p4, Lorg/objectweb/asm/Context;->currentFrameOffset:I

    .line 3354
    iget p1, p4, Lorg/objectweb/asm/Context;->currentFrameOffset:I

    invoke-direct {p0, p1, v5}, Lorg/objectweb/asm/ClassReader;->createLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    return v1

    :cond_b
    move-object v0, v3

    .line 3351
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private static readStream(Ljava/io/InputStream;Z)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_5

    .line 316
    invoke-static {p0}, Lorg/objectweb/asm/ClassReader;->calculateBufferSize(Ljava/io/InputStream;)I

    move-result v0

    .line 317
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 318
    :try_start_1
    new-array v2, v0, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 321
    :goto_0
    invoke-virtual {p0, v2, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 322
    invoke-virtual {v1, v2, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 325
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    if-ne v4, v0, :cond_2

    .line 330
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p1, :cond_1

    .line 332
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_1
    return-object v2

    .line 329
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 330
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz p1, :cond_3

    .line 332
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_3
    return-object v0

    :catchall_0
    move-exception v0

    .line 317
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    if-eqz p1, :cond_4

    .line 332
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 334
    :cond_4
    throw v0

    .line 314
    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Class not found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readStringish(I[C)Ljava/lang/String;
    .locals 1

    .line 3726
    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result p1

    aget p1, v0, p1

    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private readTypeAnnotationTarget(Lorg/objectweb/asm/Context;I)I
    .locals 9

    .line 2858
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v0

    ushr-int/lit8 v1, v0, 0x18

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-eq v1, v2, :cond_0

    const/high16 v3, -0x1000000

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 2916
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    const v1, -0xffff01

    and-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x4

    goto :goto_2

    :pswitch_1
    and-int/2addr v0, v3

    goto :goto_1

    :pswitch_2
    and-int/2addr v0, v3

    add-int/lit8 v1, p2, 0x1

    .line 2875
    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 p2, p2, 0x3

    .line 2877
    new-array v3, v1, [Lorg/objectweb/asm/Label;

    iput-object v3, p1, Lorg/objectweb/asm/Context;->currentLocalVariableAnnotationRangeStarts:[Lorg/objectweb/asm/Label;

    .line 2878
    new-array v3, v1, [Lorg/objectweb/asm/Label;

    iput-object v3, p1, Lorg/objectweb/asm/Context;->currentLocalVariableAnnotationRangeEnds:[Lorg/objectweb/asm/Label;

    .line 2879
    new-array v3, v1, [I

    iput-object v3, p1, Lorg/objectweb/asm/Context;->currentLocalVariableAnnotationRangeIndices:[I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 2881
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    add-int/lit8 v5, p2, 0x2

    .line 2882
    invoke-virtual {p0, v5}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    add-int/lit8 v6, p2, 0x4

    .line 2883
    invoke-virtual {p0, v6}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    add-int/lit8 p2, p2, 0x6

    .line 2885
    iget-object v7, p1, Lorg/objectweb/asm/Context;->currentLocalVariableAnnotationRangeStarts:[Lorg/objectweb/asm/Label;

    iget-object v8, p1, Lorg/objectweb/asm/Context;->currentMethodLabels:[Lorg/objectweb/asm/Label;

    .line 2886
    invoke-direct {p0, v4, v8}, Lorg/objectweb/asm/ClassReader;->createLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move-result-object v8

    aput-object v8, v7, v3

    .line 2887
    iget-object v7, p1, Lorg/objectweb/asm/Context;->currentLocalVariableAnnotationRangeEnds:[Lorg/objectweb/asm/Label;

    add-int/2addr v4, v5

    iget-object v5, p1, Lorg/objectweb/asm/Context;->currentMethodLabels:[Lorg/objectweb/asm/Label;

    .line 2888
    invoke-direct {p0, v4, v5}, Lorg/objectweb/asm/ClassReader;->createLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move-result-object v4

    aput-object v4, v7, v3

    .line 2889
    iget-object v4, p1, Lorg/objectweb/asm/Context;->currentLocalVariableAnnotationRangeIndices:[I

    aput v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :pswitch_3
    and-int/2addr v0, v3

    add-int/2addr p2, v2

    goto :goto_2

    :pswitch_4
    and-int/lit16 v0, v0, -0x100

    :goto_1
    add-int/lit8 p2, p2, 0x3

    goto :goto_2

    :cond_0
    :pswitch_5
    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x2

    .line 2918
    :cond_1
    :goto_2
    iput v0, p1, Lorg/objectweb/asm/Context;->currentTypeAnnotationTarget:I

    .line 2920
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/ClassReader;->readByte(I)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x0

    goto :goto_3

    .line 2922
    :cond_2
    new-instance v1, Lorg/objectweb/asm/TypePath;

    iget-object v3, p0, Lorg/objectweb/asm/ClassReader;->classFileBuffer:[B

    invoke-direct {v1, v3, p2}, Lorg/objectweb/asm/TypePath;-><init>([BI)V

    :goto_3
    iput-object v1, p1, Lorg/objectweb/asm/Context;->currentTypeAnnotationTargetPath:Lorg/objectweb/asm/TypePath;

    add-int/2addr p2, v2

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    return p2

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x40
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private readTypeAnnotations(Lorg/objectweb/asm/MethodVisitor;Lorg/objectweb/asm/Context;IZ)[I
    .locals 10

    .line 2737
    iget-object v0, p2, Lorg/objectweb/asm/Context;->charBuffer:[C

    .line 2740
    invoke-virtual {p0, p3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    new-array v2, v1, [I

    add-int/lit8 p3, p3, 0x2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    .line 2744
    aput p3, v2, v3

    .line 2747
    invoke-virtual {p0, p3}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v4

    ushr-int/lit8 v5, v4, 0x18

    const/16 v6, 0x17

    if-eq v5, v6, :cond_0

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    .line 2790
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    add-int/lit8 p3, p3, 0x4

    goto :goto_2

    :pswitch_1
    add-int/lit8 v6, p3, 0x1

    .line 2753
    invoke-virtual {p0, v6}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    add-int/lit8 p3, p3, 0x3

    :goto_1
    add-int/lit8 v7, v6, -0x1

    if-lez v6, :cond_1

    .line 2756
    invoke-virtual {p0, p3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    add-int/lit8 v8, p3, 0x2

    .line 2757
    invoke-virtual {p0, v8}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    add-int/lit8 p3, p3, 0x6

    .line 2760
    iget-object v9, p2, Lorg/objectweb/asm/Context;->currentMethodLabels:[Lorg/objectweb/asm/Label;

    invoke-direct {p0, v6, v9}, Lorg/objectweb/asm/ClassReader;->createLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    add-int/2addr v6, v8

    .line 2761
    iget-object v8, p2, Lorg/objectweb/asm/Context;->currentMethodLabels:[Lorg/objectweb/asm/Label;

    invoke-direct {p0, v6, v8}, Lorg/objectweb/asm/ClassReader;->createLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move v6, v7

    goto :goto_1

    :cond_0
    :pswitch_2
    add-int/lit8 p3, p3, 0x3

    .line 2794
    :cond_1
    :goto_2
    invoke-virtual {p0, p3}, Lorg/objectweb/asm/ClassReader;->readByte(I)I

    move-result v6

    const/16 v7, 0x42

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v5, v7, :cond_3

    if-nez v6, :cond_2

    goto :goto_3

    .line 2797
    :cond_2
    new-instance v8, Lorg/objectweb/asm/TypePath;

    iget-object v5, p0, Lorg/objectweb/asm/ClassReader;->classFileBuffer:[B

    invoke-direct {v8, v5, p3}, Lorg/objectweb/asm/TypePath;-><init>([BI)V

    :goto_3
    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v9

    add-int/2addr p3, v6

    .line 2800
    invoke-virtual {p0, p3, v0}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 p3, p3, 0x2

    and-int/lit16 v4, v4, -0x100

    .line 2805
    invoke-virtual {p1, v4, v8, v5, p4}, Lorg/objectweb/asm/MethodVisitor;->visitTryCatchAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v4

    .line 2804
    invoke-direct {p0, v4, p3, v9, v0}, Lorg/objectweb/asm/ClassReader;->readElementValues(Lorg/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result p3

    goto :goto_4

    :cond_3
    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x3

    add-int/2addr p3, v6

    .line 2818
    invoke-direct {p0, v8, p3, v9, v0}, Lorg/objectweb/asm/ClassReader;->readElementValues(Lorg/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result p3

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x40
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private readUtf(II[C)Ljava/lang/String;
    .locals 7

    add-int/2addr p2, p1

    .line 3691
    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->classFileBuffer:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge p1, p2, :cond_2

    add-int/lit8 v3, p1, 0x1

    .line 3693
    aget-byte v4, v0, p1

    and-int/lit16 v5, v4, 0x80

    if-nez v5, :cond_0

    add-int/lit8 p1, v2, 0x1

    and-int/lit8 v4, v4, 0x7f

    int-to-char v4, v4

    .line 3695
    aput-char v4, p3, v2

    move v2, p1

    move p1, v3

    goto :goto_0

    :cond_0
    and-int/lit16 v5, v4, 0xe0

    const/16 v6, 0xc0

    if-ne v5, v6, :cond_1

    add-int/lit8 v5, v2, 0x1

    and-int/lit8 v4, v4, 0x1f

    shl-int/lit8 v4, v4, 0x6

    add-int/lit8 p1, p1, 0x2

    .line 3697
    aget-byte v3, v0, v3

    and-int/lit8 v3, v3, 0x3f

    add-int/2addr v4, v3

    int-to-char v3, v4

    aput-char v3, p3, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v2, 0x1

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0xc

    add-int/lit8 v6, p1, 0x2

    .line 3700
    aget-byte v3, v0, v3

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    add-int/2addr v4, v3

    add-int/lit8 p1, p1, 0x3

    aget-byte v3, v0, v6

    and-int/lit8 v3, v3, 0x3f

    add-int/2addr v4, v3

    int-to-char v3, v4

    aput-char v3, p3, v2

    :goto_1
    move v2, v5

    goto :goto_0

    .line 3707
    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object p1
.end method

.method private readVerificationTypeInfo(I[Ljava/lang/Object;I[C[Lorg/objectweb/asm/Label;)I
    .locals 2

    .line 3379
    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->classFileBuffer:[B

    add-int/lit8 v1, p1, 0x1

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 3411
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 3407
    :pswitch_0
    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result p4

    invoke-direct {p0, p4, p5}, Lorg/objectweb/asm/ClassReader;->createLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move-result-object p4

    aput-object p4, p2, p3

    :goto_0
    add-int/lit8 p1, p1, 0x3

    return p1

    .line 3403
    :pswitch_1
    invoke-virtual {p0, v1, p4}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p2, p3

    goto :goto_0

    .line 3400
    :pswitch_2
    sget-object p1, Lorg/objectweb/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    aput-object p1, p2, p3

    return v1

    .line 3397
    :pswitch_3
    sget-object p1, Lorg/objectweb/asm/Opcodes;->NULL:Ljava/lang/Integer;

    aput-object p1, p2, p3

    return v1

    .line 3394
    :pswitch_4
    sget-object p1, Lorg/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    aput-object p1, p2, p3

    return v1

    .line 3391
    :pswitch_5
    sget-object p1, Lorg/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    aput-object p1, p2, p3

    return v1

    .line 3388
    :pswitch_6
    sget-object p1, Lorg/objectweb/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    aput-object p1, p2, p3

    return v1

    .line 3385
    :pswitch_7
    sget-object p1, Lorg/objectweb/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    aput-object p1, p2, p3

    return v1

    .line 3382
    :pswitch_8
    sget-object p1, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    aput-object p1, p2, p3

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public accept(Lorg/objectweb/asm/ClassVisitor;I)V
    .locals 1

    const/4 v0, 0x0

    .line 424
    new-array v0, v0, [Lorg/objectweb/asm/Attribute;

    invoke-virtual {p0, p1, v0, p2}, Lorg/objectweb/asm/ClassReader;->accept(Lorg/objectweb/asm/ClassVisitor;[Lorg/objectweb/asm/Attribute;I)V

    return-void
.end method

.method public accept(Lorg/objectweb/asm/ClassVisitor;[Lorg/objectweb/asm/Attribute;I)V
    .locals 32

    move-object/from16 v0, p0

    move/from16 v8, p3

    .line 445
    new-instance v9, Lorg/objectweb/asm/Context;

    invoke-direct {v9}, Lorg/objectweb/asm/Context;-><init>()V

    move-object/from16 v1, p2

    .line 446
    iput-object v1, v9, Lorg/objectweb/asm/Context;->attributePrototypes:[Lorg/objectweb/asm/Attribute;

    .line 447
    iput v8, v9, Lorg/objectweb/asm/Context;->parsingOptions:I

    .line 448
    iget v2, v0, Lorg/objectweb/asm/ClassReader;->maxStringLength:I

    new-array v2, v2, [C

    iput-object v2, v9, Lorg/objectweb/asm/Context;->charBuffer:[C

    .line 451
    iget-object v5, v9, Lorg/objectweb/asm/Context;->charBuffer:[C

    .line 452
    iget v2, v0, Lorg/objectweb/asm/ClassReader;->header:I

    .line 453
    invoke-virtual {v0, v2}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v4, v2, 0x2

    .line 454
    invoke-virtual {v0, v4, v5}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v4, v2, 0x4

    .line 455
    invoke-virtual {v0, v4, v5}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v4, v2, 0x6

    .line 456
    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    new-array v12, v4, [Ljava/lang/String;

    add-int/lit8 v2, v2, 0x8

    move v14, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    .line 459
    invoke-virtual {v0, v14, v5}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v12, v2

    add-int/lit8 v14, v14, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 501
    :cond_0
    invoke-virtual {v0}, Lorg/objectweb/asm/ClassReader;->getFirstAttributeOffset()I

    move-result v2

    add-int/lit8 v4, v2, -0x2

    .line 502
    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    move/from16 v16, v4

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    :goto_1
    if-lez v16, :cond_15

    move v1, v2

    .line 504
    invoke-virtual {v0, v1, v5}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    move/from16 v29, v1

    add-int/lit8 v1, v29, 0x2

    .line 505
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v1

    move-object/from16 v30, v4

    add-int/lit8 v4, v29, 0x6

    move-object/from16 v29, v6

    .line 509
    const-string v6, "SourceFile"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 510
    invoke-virtual {v0, v4, v5}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    move v2, v3

    move v3, v4

    move-object/from16 v30, v10

    move-object/from16 v6, v29

    move v4, v1

    move-object/from16 v29, v9

    goto/16 :goto_7

    .line 511
    :cond_1
    const-string v6, "InnerClasses"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v2, v3

    move v3, v4

    move/from16 v27, v3

    :goto_2
    move-object/from16 v6, v29

    move-object/from16 v8, v30

    move v4, v1

    move-object/from16 v29, v9

    :goto_3
    move-object/from16 v30, v10

    goto/16 :goto_7

    .line 513
    :cond_2
    const-string v6, "EnclosingMethod"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v2, v3

    move v3, v4

    move v15, v3

    goto :goto_2

    .line 515
    :cond_3
    const-string v6, "NestHost"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 516
    invoke-virtual {v0, v4, v5}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v7

    :goto_4
    move v2, v3

    :goto_5
    move v3, v4

    goto :goto_2

    .line 517
    :cond_4
    const-string v6, "NestMembers"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v2, v3

    move v3, v4

    move/from16 v24, v3

    goto :goto_2

    .line 519
    :cond_5
    const-string v6, "PermittedSubclasses"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v2, v3

    move v3, v4

    move/from16 v26, v3

    goto :goto_2

    .line 521
    :cond_6
    const-string v6, "Signature"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 522
    invoke-virtual {v0, v4, v5}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v17

    goto :goto_4

    .line 523
    :cond_7
    const-string v6, "RuntimeVisibleAnnotations"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    move v2, v3

    move v3, v4

    move v13, v3

    goto :goto_2

    .line 525
    :cond_8
    const-string v6, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    move v2, v3

    move v3, v4

    move/from16 v22, v3

    goto :goto_2

    .line 527
    :cond_9
    const-string v6, "Deprecated"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/high16 v2, 0x20000

    or-int/2addr v2, v3

    goto :goto_5

    .line 529
    :cond_a
    const-string v6, "Synthetic"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    or-int/lit16 v2, v3, 0x1000

    goto :goto_5

    .line 531
    :cond_b
    const-string v6, "SourceDebugExtension"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 532
    iget-object v2, v0, Lorg/objectweb/asm/ClassReader;->classFileBuffer:[B

    array-length v2, v2

    sub-int/2addr v2, v4

    if-gt v1, v2, :cond_c

    .line 535
    new-array v2, v1, [C

    .line 536
    invoke-direct {v0, v4, v1, v2}, Lorg/objectweb/asm/ClassReader;->readUtf(II[C)Ljava/lang/String;

    move-result-object v6

    move v2, v3

    move v3, v4

    move-object/from16 v29, v9

    move-object/from16 v8, v30

    move v4, v1

    goto/16 :goto_3

    .line 533
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 537
    :cond_d
    const-string v6, "RuntimeInvisibleAnnotations"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    move v2, v3

    move v3, v4

    move/from16 v21, v3

    goto/16 :goto_2

    .line 539
    :cond_e
    const-string v6, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    move v2, v3

    move v3, v4

    move/from16 v23, v3

    goto/16 :goto_2

    .line 541
    :cond_f
    const-string v6, "Record"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    const/high16 v2, 0x10000

    or-int/2addr v2, v3

    move v3, v4

    move/from16 v28, v3

    goto/16 :goto_2

    .line 544
    :cond_10
    const-string v6, "Module"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    move v2, v3

    move v3, v4

    move/from16 v18, v3

    goto/16 :goto_2

    .line 546
    :cond_11
    const-string v6, "ModuleMainClass"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 547
    invoke-virtual {v0, v4, v5}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_4

    .line 548
    :cond_12
    const-string v6, "ModulePackages"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    move v2, v3

    move v3, v4

    move/from16 v19, v3

    goto/16 :goto_2

    .line 550
    :cond_13
    const-string v6, "BootstrapMethods"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    const/4 v6, -0x1

    move-object/from16 v31, v7

    const/4 v7, 0x0

    move-object/from16 v8, v29

    move-object/from16 v29, v9

    move-object v9, v8

    move-object/from16 v8, v30

    move-object/from16 v30, v10

    move-object/from16 v10, v31

    move/from16 v31, v3

    move v3, v4

    move v4, v1

    move-object/from16 v1, p2

    .line 553
    invoke-direct/range {v0 .. v7}, Lorg/objectweb/asm/ClassReader;->readAttribute([Lorg/objectweb/asm/Attribute;Ljava/lang/String;II[CI[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Attribute;

    move-result-object v2

    move-object/from16 v7, v25

    .line 561
    iput-object v7, v2, Lorg/objectweb/asm/Attribute;->nextAttribute:Lorg/objectweb/asm/Attribute;

    move-object/from16 v25, v2

    goto :goto_6

    :cond_14
    move-object/from16 v8, v29

    move-object/from16 v29, v9

    move-object v9, v8

    move/from16 v31, v3

    move v3, v4

    move-object/from16 v8, v30

    move v4, v1

    move-object/from16 v30, v10

    move-object v10, v7

    move-object/from16 v7, v25

    :goto_6
    move-object v6, v9

    move-object v7, v10

    move/from16 v2, v31

    :goto_7
    add-int v1, v3, v4

    add-int/lit8 v16, v16, -0x1

    move v3, v2

    move-object v4, v8

    move-object/from16 v9, v29

    move-object/from16 v10, v30

    move/from16 v8, p3

    move v2, v1

    move-object/from16 v1, p2

    goto/16 :goto_1

    :cond_15
    move/from16 v31, v3

    move-object v8, v4

    move-object/from16 v29, v9

    move-object/from16 v30, v10

    move-object v9, v6

    move-object v10, v7

    move-object/from16 v7, v25

    .line 569
    iget-object v1, v0, Lorg/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    add-int/lit8 v1, v1, -0x7

    .line 570
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v1

    move-object v0, v11

    move-object v11, v5

    move-object v5, v0

    move-object/from16 v0, p1

    move-object v6, v12

    move-object/from16 v4, v17

    move-object/from16 v3, v30

    move/from16 v2, v31

    const/4 v12, 0x1

    .line 569
    invoke-virtual/range {v0 .. v6}, Lorg/objectweb/asm/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    and-int/lit8 v1, p3, 0x2

    if-nez v1, :cond_17

    if-nez v8, :cond_16

    if-eqz v9, :cond_17

    .line 575
    :cond_16
    invoke-virtual {v0, v8, v9}, Lorg/objectweb/asm/ClassVisitor;->visitSource(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    move-object v1, v0

    if-eqz v18, :cond_18

    move/from16 v3, v18

    move/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v2, v29

    move-object/from16 v0, p0

    .line 580
    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/ClassReader;->readModuleAttributes(Lorg/objectweb/asm/ClassVisitor;Lorg/objectweb/asm/Context;IILjava/lang/String;)V

    goto :goto_8

    :cond_18
    move-object/from16 v2, v29

    move-object/from16 v0, p0

    :goto_8
    if-eqz v10, :cond_19

    .line 586
    invoke-virtual {v1, v10}, Lorg/objectweb/asm/ClassVisitor;->visitNestHost(Ljava/lang/String;)V

    :cond_19
    if-eqz v15, :cond_1c

    .line 591
    invoke-virtual {v0, v15, v11}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v15, v15, 0x2

    .line 592
    invoke-virtual {v0, v15}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    if-nez v4, :cond_1a

    const/4 v5, 0x0

    goto :goto_9

    .line 593
    :cond_1a
    iget-object v5, v0, Lorg/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    aget v5, v5, v4

    invoke-virtual {v0, v5, v11}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    :goto_9
    if-nez v4, :cond_1b

    const/4 v4, 0x0

    goto :goto_a

    .line 594
    :cond_1b
    iget-object v6, v0, Lorg/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    aget v4, v6, v4

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v4, v11}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    .line 595
    :goto_a
    invoke-virtual {v1, v3, v5, v4}, Lorg/objectweb/asm/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    if-eqz v13, :cond_1d

    .line 600
    invoke-virtual {v0, v13}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v13, v13, 0x2

    :goto_b
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_1d

    .line 604
    invoke-virtual {v0, v13, v11}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v13, v13, 0x2

    .line 609
    invoke-virtual {v1, v3, v12}, Lorg/objectweb/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v3

    .line 608
    invoke-direct {v0, v3, v13, v12, v11}, Lorg/objectweb/asm/ClassReader;->readElementValues(Lorg/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v13

    move v3, v4

    goto :goto_b

    :cond_1d
    move/from16 v13, v21

    if-eqz v13, :cond_1e

    .line 618
    invoke-virtual {v0, v13}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v21, v13, 0x2

    move/from16 v4, v21

    :goto_c
    add-int/lit8 v5, v3, -0x1

    if-lez v3, :cond_1e

    .line 622
    invoke-virtual {v0, v4, v11}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v4, 0x2

    const/4 v6, 0x0

    .line 627
    invoke-virtual {v1, v3, v6}, Lorg/objectweb/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v3

    .line 626
    invoke-direct {v0, v3, v4, v12, v11}, Lorg/objectweb/asm/ClassReader;->readElementValues(Lorg/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v4

    move v3, v5

    goto :goto_c

    :cond_1e
    move/from16 v13, v22

    if-eqz v13, :cond_1f

    .line 636
    invoke-virtual {v0, v13}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v22, v13, 0x2

    move/from16 v4, v22

    :goto_d
    add-int/lit8 v5, v3, -0x1

    if-lez v3, :cond_1f

    .line 640
    invoke-direct {v0, v2, v4}, Lorg/objectweb/asm/ClassReader;->readTypeAnnotationTarget(Lorg/objectweb/asm/Context;I)I

    move-result v3

    .line 642
    invoke-virtual {v0, v3, v11}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x2

    .line 645
    iget v6, v2, Lorg/objectweb/asm/Context;->currentTypeAnnotationTarget:I

    iget-object v8, v2, Lorg/objectweb/asm/Context;->currentTypeAnnotationTargetPath:Lorg/objectweb/asm/TypePath;

    .line 647
    invoke-virtual {v1, v6, v8, v4, v12}, Lorg/objectweb/asm/ClassVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v4

    .line 646
    invoke-direct {v0, v4, v3, v12, v11}, Lorg/objectweb/asm/ClassReader;->readElementValues(Lorg/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v4

    move v3, v5

    goto :goto_d

    :cond_1f
    move/from16 v13, v23

    if-eqz v13, :cond_20

    .line 660
    invoke-virtual {v0, v13}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v23, v13, 0x2

    move/from16 v4, v23

    :goto_e
    add-int/lit8 v5, v3, -0x1

    if-lez v3, :cond_20

    .line 664
    invoke-direct {v0, v2, v4}, Lorg/objectweb/asm/ClassReader;->readTypeAnnotationTarget(Lorg/objectweb/asm/Context;I)I

    move-result v3

    .line 666
    invoke-virtual {v0, v3, v11}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x2

    .line 669
    iget v6, v2, Lorg/objectweb/asm/Context;->currentTypeAnnotationTarget:I

    iget-object v8, v2, Lorg/objectweb/asm/Context;->currentTypeAnnotationTargetPath:Lorg/objectweb/asm/TypePath;

    const/4 v9, 0x0

    .line 671
    invoke-virtual {v1, v6, v8, v4, v9}, Lorg/objectweb/asm/ClassVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v4

    .line 670
    invoke-direct {v0, v4, v3, v12, v11}, Lorg/objectweb/asm/ClassReader;->readElementValues(Lorg/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v4

    move v3, v5

    goto :goto_e

    :cond_20
    :goto_f
    if-eqz v7, :cond_21

    .line 685
    iget-object v3, v7, Lorg/objectweb/asm/Attribute;->nextAttribute:Lorg/objectweb/asm/Attribute;

    const/4 v4, 0x0

    .line 686
    iput-object v4, v7, Lorg/objectweb/asm/Attribute;->nextAttribute:Lorg/objectweb/asm/Attribute;

    .line 687
    invoke-virtual {v1, v7}, Lorg/objectweb/asm/ClassVisitor;->visitAttribute(Lorg/objectweb/asm/Attribute;)V

    move-object v7, v3

    goto :goto_f

    :cond_21
    move/from16 v13, v24

    if-eqz v13, :cond_22

    .line 693
    invoke-virtual {v0, v13}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v24, v13, 0x2

    move/from16 v4, v24

    :goto_10
    add-int/lit8 v5, v3, -0x1

    if-lez v3, :cond_22

    .line 696
    invoke-virtual {v0, v4, v11}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/objectweb/asm/ClassVisitor;->visitNestMember(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x2

    move v3, v5

    goto :goto_10

    :cond_22
    move/from16 v13, v26

    if-eqz v13, :cond_23

    .line 703
    invoke-virtual {v0, v13}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v26, v13, 0x2

    move/from16 v4, v26

    :goto_11
    add-int/lit8 v5, v3, -0x1

    if-lez v3, :cond_23

    .line 707
    invoke-virtual {v0, v4, v11}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v3

    .line 706
    invoke-virtual {v1, v3}, Lorg/objectweb/asm/ClassVisitor;->visitPermittedSubclass(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x2

    move v3, v5

    goto :goto_11

    :cond_23
    move/from16 v13, v27

    if-eqz v13, :cond_24

    .line 714
    invoke-virtual {v0, v13}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v27, v13, 0x2

    move/from16 v4, v27

    :goto_12
    add-int/lit8 v5, v3, -0x1

    if-lez v3, :cond_24

    .line 718
    invoke-virtual {v0, v4, v11}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v6, v4, 0x2

    .line 719
    invoke-virtual {v0, v6, v11}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v4, 0x4

    .line 720
    invoke-virtual {v0, v7, v11}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v4, 0x6

    .line 721
    invoke-virtual {v0, v8}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    .line 717
    invoke-virtual {v1, v3, v6, v7, v8}, Lorg/objectweb/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v4, v4, 0x8

    move v3, v5

    goto :goto_12

    :cond_24
    move/from16 v13, v28

    if-eqz v13, :cond_25

    .line 728
    invoke-virtual {v0, v13}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v28, v13, 0x2

    move/from16 v4, v28

    :goto_13
    add-int/lit8 v5, v3, -0x1

    if-lez v3, :cond_25

    .line 731
    invoke-direct {v0, v1, v2, v4}, Lorg/objectweb/asm/ClassReader;->readRecordComponent(Lorg/objectweb/asm/ClassVisitor;Lorg/objectweb/asm/Context;I)I

    move-result v4

    move v3, v5

    goto :goto_13

    .line 736
    :cond_25
    invoke-virtual {v0, v14}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v14, v14, 0x2

    :goto_14
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_26

    .line 739
    invoke-direct {v0, v1, v2, v14}, Lorg/objectweb/asm/ClassReader;->readField(Lorg/objectweb/asm/ClassVisitor;Lorg/objectweb/asm/Context;I)I

    move-result v14

    move v3, v4

    goto :goto_14

    .line 741
    :cond_26
    invoke-virtual {v0, v14}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v14, v14, 0x2

    :goto_15
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_27

    .line 744
    invoke-direct {v0, v1, v2, v14}, Lorg/objectweb/asm/ClassReader;->readMethod(Lorg/objectweb/asm/ClassVisitor;Lorg/objectweb/asm/Context;I)I

    move-result v14

    move v3, v4

    goto :goto_15

    .line 748
    :cond_27
    invoke-virtual {v1}, Lorg/objectweb/asm/ClassVisitor;->visitEnd()V

    return-void
.end method

.method public getAccess()I
    .locals 1

    .line 363
    iget v0, p0, Lorg/objectweb/asm/ClassReader;->header:I

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 2

    .line 374
    iget v0, p0, Lorg/objectweb/asm/ClassReader;->header:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/objectweb/asm/ClassReader;->maxStringLength:I

    new-array v1, v1, [C

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getFirstAttributeOffset()I
    .locals 4

    .line 3430
    iget v0, p0, Lorg/objectweb/asm/ClassReader;->header:I

    add-int/lit8 v1, v0, 0x8

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 3433
    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v1, v1, 0x2

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_1

    add-int/lit8 v0, v1, 0x6

    .line 3440
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v1, v1, 0x8

    :goto_1
    add-int/lit8 v3, v0, -0x1

    if-lez v0, :cond_0

    add-int/lit8 v0, v1, 0x2

    .line 3448
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    add-int/2addr v1, v0

    move v0, v3

    goto :goto_1

    :cond_0
    move v0, v2

    goto :goto_0

    .line 3453
    :cond_1
    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v1, v1, 0x2

    :goto_2
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_3

    add-int/lit8 v0, v1, 0x6

    .line 3456
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v1, v1, 0x8

    :goto_3
    add-int/lit8 v3, v0, -0x1

    if-lez v0, :cond_2

    add-int/lit8 v0, v1, 0x2

    .line 3459
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    add-int/2addr v1, v0

    move v0, v3

    goto :goto_3

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x2

    return v1
.end method

.method public getInterfaces()[Ljava/lang/String;
    .locals 6

    .line 398
    iget v0, p0, Lorg/objectweb/asm/ClassReader;->header:I

    add-int/lit8 v0, v0, 0x6

    .line 399
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 400
    new-array v2, v1, [Ljava/lang/String;

    if-lez v1, :cond_0

    .line 402
    iget v3, p0, Lorg/objectweb/asm/ClassReader;->maxStringLength:I

    new-array v3, v3, [C

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    add-int/lit8 v0, v0, 0x2

    .line 405
    invoke-virtual {p0, v0, v3}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public getItem(I)I
    .locals 1

    .line 3562
    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    aget p1, v0, p1

    return p1
.end method

.method public getItemCount()I
    .locals 1

    .line 3548
    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    array-length v0, v0

    return v0
.end method

.method public getMaxStringLength()I
    .locals 1

    .line 3573
    iget v0, p0, Lorg/objectweb/asm/ClassReader;->maxStringLength:I

    return v0
.end method

.method public getSuperName()Ljava/lang/String;
    .locals 2

    .line 386
    iget v0, p0, Lorg/objectweb/asm/ClassReader;->header:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lorg/objectweb/asm/ClassReader;->maxStringLength:I

    new-array v1, v1, [C

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readByte(I)I
    .locals 1

    .line 3584
    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->classFileBuffer:[B

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public readClass(I[C)Ljava/lang/String;
    .locals 0

    .line 3741
    invoke-direct {p0, p1, p2}, Lorg/objectweb/asm/ClassReader;->readStringish(I[C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readConst(I[C)Ljava/lang/Object;
    .locals 6

    .line 3820
    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    aget v0, v0, p1

    .line 3821
    iget-object v1, p0, Lorg/objectweb/asm/ClassReader;->classFileBuffer:[B

    add-int/lit8 v2, v0, -0x1

    aget-byte v1, v1, v2

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 3849
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 3847
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lorg/objectweb/asm/ClassReader;->readConstantDynamic(I[C)Lorg/objectweb/asm/ConstantDynamic;

    move-result-object p1

    return-object p1

    .line 3835
    :pswitch_1
    invoke-virtual {p0, v0, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/objectweb/asm/Type;->getMethodType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object p1

    return-object p1

    .line 3837
    :pswitch_2
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readByte(I)I

    move-result v1

    .line 3838
    iget-object p1, p0, Lorg/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    aget p1, p1, v0

    .line 3839
    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v3, p1, 0x2

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    aget v0, v0, v3

    const/4 v3, 0x1

    .line 3840
    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    .line 3841
    invoke-virtual {p0, v0, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v0, 0x2

    .line 3842
    invoke-virtual {p0, v0, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p2

    .line 3843
    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->classFileBuffer:[B

    sub-int/2addr p1, v4

    aget-byte p1, v0, p1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v5, 0x0

    .line 3845
    :goto_0
    new-instance v0, Lorg/objectweb/asm/Handle;

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/Handle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    .line 3833
    :pswitch_3
    invoke-virtual {p0, v0, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3831
    :pswitch_4
    invoke-virtual {p0, v0, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object p1

    return-object p1

    .line 3829
    :pswitch_5
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 3827
    :pswitch_6
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 3825
    :pswitch_7
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 3823
    :pswitch_8
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readInt(I)I
    .locals 3

    .line 3619
    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->classFileBuffer:[B

    .line 3620
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x3

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    return p1
.end method

.method protected readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;
    .locals 1

    .line 2679
    aget-object v0, p2, p1

    if-nez v0, :cond_0

    .line 2680
    new-instance v0, Lorg/objectweb/asm/Label;

    invoke-direct {v0}, Lorg/objectweb/asm/Label;-><init>()V

    aput-object v0, p2, p1

    .line 2682
    :cond_0
    aget-object p1, p2, p1

    return-object p1
.end method

.method public readLong(I)J
    .locals 6

    .line 3634
    invoke-virtual {p0, p1}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v0

    int-to-long v0, v0

    add-int/lit8 p1, p1, 0x4

    .line 3635
    invoke-virtual {p0, p1}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result p1

    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public readModule(I[C)Ljava/lang/String;
    .locals 0

    .line 3756
    invoke-direct {p0, p1, p2}, Lorg/objectweb/asm/ClassReader;->readStringish(I[C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readPackage(I[C)Ljava/lang/String;
    .locals 0

    .line 3771
    invoke-direct {p0, p1, p2}, Lorg/objectweb/asm/ClassReader;->readStringish(I[C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readShort(I)S
    .locals 2

    .line 3607
    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->classFileBuffer:[B

    .line 3608
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    int-to-short p1, p1

    return p1
.end method

.method public readUTF8(I[C)Ljava/lang/String;
    .locals 1

    .line 3652
    invoke-virtual {p0, p1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 3656
    :cond_0
    invoke-virtual {p0, v0, p2}, Lorg/objectweb/asm/ClassReader;->readUtf(I[C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public readUnsignedShort(I)I
    .locals 2

    .line 3595
    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->classFileBuffer:[B

    .line 3596
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    return p1
.end method

.method final readUtf(I[C)Ljava/lang/String;
    .locals 3

    .line 3669
    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->constantUtf8Values:[Ljava/lang/String;

    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    return-object v1

    .line 3673
    :cond_0
    iget-object v1, p0, Lorg/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    aget v1, v1, p1

    add-int/lit8 v2, v1, 0x2

    .line 3675
    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    invoke-direct {p0, v2, v1, p2}, Lorg/objectweb/asm/ClassReader;->readUtf(II[C)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    return-object p2
.end method
