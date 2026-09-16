.class final enum Lcom/gpc/aws/util/EncodingSchemeEnum$1;
.super Lcom/gpc/aws/util/EncodingSchemeEnum;
.source "EncodingSchemeEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/aws/util/EncodingSchemeEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lcom/gpc/aws/util/EncodingSchemeEnum;-><init>(Ljava/lang/String;ILcom/gpc/aws/util/EncodingSchemeEnum$1;)V

    return-void
.end method


# virtual methods
.method public decode(Ljava/lang/String;)[B
    .locals 0

    .line 34
    invoke-static {p1}, Lcom/gpc/aws/util/Base16;->decode(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public encodeAsString([B)Ljava/lang/String;
    .locals 0

    .line 29
    invoke-static {p1}, Lcom/gpc/aws/util/Base16;->encodeAsString([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
