.class public Lcom/gpc/sdk/jni/Amplifier;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static CGI_SIGN_V2:[B

.field public static CONTROLBLOCK_ENCRYPT:[B

.field public static STEGANOGRAPHY:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xb

    .line 1
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/gpc/sdk/jni/Amplifier;->CGI_SIGN_V2:[B

    const/16 v0, 0xd

    .line 3
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/gpc/sdk/jni/Amplifier;->STEGANOGRAPHY:[B

    const/16 v0, 0xf

    .line 5
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/gpc/sdk/jni/Amplifier;->CONTROLBLOCK_ENCRYPT:[B

    return-void

    :array_0
    .array-data 1
        -0x64t
        -0x68t
        -0x6at
        -0x60t
        -0x74t
        -0x6at
        -0x68t
        -0x6ft
        -0x60t
        -0x77t
        -0x33t
    .end array-data

    :array_1
    .array-data 1
        -0x74t
        -0x75t
        -0x66t
        -0x68t
        -0x62t
        -0x6ft
        -0x70t
        -0x68t
        -0x73t
        -0x62t
        -0x71t
        -0x69t
        -0x7at
    .end array-data

    nop

    :array_2
    .array-data 1
        -0x64t
        -0x70t
        -0x6ft
        -0x75t
        -0x73t
        -0x70t
        -0x6dt
        -0x63t
        -0x6dt
        -0x70t
        -0x64t
        -0x6ct
        -0x60t
        -0x66t
        -0x6ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fishSpriteCtxCalc(ILjava/lang/String;[B)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"sprit\":"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",\"param\":\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2
    sget-object p1, Lcom/gpc/sdk/jni/Amplifier;->CONTROLBLOCK_ENCRYPT:[B

    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, p0}, Lcom/gpc/sdk/jni/Amplifier;->magnify([B[B[B[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static loadFish()V
    .locals 1

    .line 1
    const-string v0, "fish"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static magnify(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/gpc/sdk/jni/Amplifier;->CGI_SIGN_V2:[B

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, v1}, Lcom/gpc/sdk/jni/Amplifier;->magnify([B[B[B[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static native magnify([B[B[B[B)Ljava/lang/String;
.end method

.method public static native spriteCtxS(ILjava/lang/String;Ljava/lang/String;)I
.end method
