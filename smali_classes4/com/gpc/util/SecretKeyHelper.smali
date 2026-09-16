.class public Lcom/gpc/util/SecretKeyHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static HEX_LIST:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_PART_1:Ljava/lang/String; = "f7fb9a081d87f2c"

.field private static final KEY_PART_2:Ljava/lang/String; = "eaf0832cfcb65c2ee"

.field private static final KEY_PART_3:Ljava/lang/String; = "f7fb9a081d87f2ceaf"

.field private static final KEY_PART_4:Ljava/lang/String; = "0832cfcb65c2ee"

.field private static final TAG:Ljava/lang/String; = "SecretKeyHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/gpc/util/SecretKeyHelper;->HEX_LIST:Ljava/util/ArrayList;

    .line 2
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object v0, Lcom/gpc/util/SecretKeyHelper;->HEX_LIST:Ljava/util/ArrayList;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v0, Lcom/gpc/util/SecretKeyHelper;->HEX_LIST:Ljava/util/ArrayList;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v0, Lcom/gpc/util/SecretKeyHelper;->HEX_LIST:Ljava/util/ArrayList;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v0, Lcom/gpc/util/SecretKeyHelper;->HEX_LIST:Ljava/util/ArrayList;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v0, Lcom/gpc/util/SecretKeyHelper;->HEX_LIST:Ljava/util/ArrayList;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object v0, Lcom/gpc/util/SecretKeyHelper;->HEX_LIST:Ljava/util/ArrayList;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    sget-object v0, Lcom/gpc/util/SecretKeyHelper;->HEX_LIST:Ljava/util/ArrayList;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    sget-object v0, Lcom/gpc/util/SecretKeyHelper;->HEX_LIST:Ljava/util/ArrayList;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object v0, Lcom/gpc/util/SecretKeyHelper;->HEX_LIST:Ljava/util/ArrayList;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object v0, Lcom/gpc/util/SecretKeyHelper;->HEX_LIST:Ljava/util/ArrayList;

    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object v0, Lcom/gpc/util/SecretKeyHelper;->HEX_LIST:Ljava/util/ArrayList;

    const-string v1, "b"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object v0, Lcom/gpc/util/SecretKeyHelper;->HEX_LIST:Ljava/util/ArrayList;

    const-string v1, "c"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object v0, Lcom/gpc/util/SecretKeyHelper;->HEX_LIST:Ljava/util/ArrayList;

    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object v0, Lcom/gpc/util/SecretKeyHelper;->HEX_LIST:Ljava/util/ArrayList;

    const-string v1, "e"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object v0, Lcom/gpc/util/SecretKeyHelper;->HEX_LIST:Ljava/util/ArrayList;

    const-string v1, "f"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private bin2hex([B)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 5
    aget-byte v2, p1, v1

    and-int/lit16 v3, v2, 0xff

    .line 6
    sget-object v4, Lcom/gpc/util/SecretKeyHelper;->HEX_LIST:Ljava/util/ArrayList;

    ushr-int/lit8 v3, v3, 0x4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    sget-object v3, Lcom/gpc/util/SecretKeyHelper;->HEX_LIST:Ljava/util/ArrayList;

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private hex2bin(Ljava/lang/String;)[B
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 5
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private paintChars(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 8
    sget-object v3, Lcom/gpc/util/SecretKeyHelper;->HEX_LIST:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz p2, :cond_1

    add-int/2addr v2, p2

    .line 11
    sget-object v3, Lcom/gpc/util/SecretKeyHelper;->HEX_LIST:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int/2addr v2, v3

    goto :goto_1

    :cond_1
    neg-int v3, p2

    .line 13
    sget-object v5, Lcom/gpc/util/SecretKeyHelper;->HEX_LIST:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    rem-int/2addr v3, v5

    sub-int v5, v2, v3

    if-ltz v5, :cond_2

    move v2, v5

    goto :goto_1

    :cond_2
    rsub-int/lit8 v3, v3, 0x10

    add-int/2addr v2, v3

    .line 20
    :goto_1
    sget-object v3, Lcom/gpc/util/SecretKeyHelper;->HEX_LIST:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v4

    goto :goto_0

    .line 23
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private swapChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    return-object p1

    :cond_1
    add-int/lit8 v3, v0, -0x2

    .line 11
    rem-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_2

    add-int/lit8 v3, v0, -0x3

    .line 15
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v3, :cond_3

    add-int/lit8 v6, v1, 0x1

    .line 17
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    sub-int/2addr v0, v2

    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private xorxor(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-string p1, ""

    return-object p1

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "f7fb9a081d87f2c"

    const/16 v2, -0x1c

    invoke-direct {p0, v1, v2}, Lcom/gpc/util/SecretKeyHelper;->paintChars(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    const-string v1, "eaf0832cfcb65c2ee"

    invoke-direct {p0, v1, v2}, Lcom/gpc/util/SecretKeyHelper;->paintChars(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    const-string v1, "f7fb9a081d87f2ceaf"

    invoke-direct {p0, v1, v2}, Lcom/gpc/util/SecretKeyHelper;->paintChars(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    const-string v1, "0832cfcb65c2ee"

    invoke-direct {p0, v1, v2}, Lcom/gpc/util/SecretKeyHelper;->paintChars(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-direct {p0, v0}, Lcom/gpc/util/SecretKeyHelper;->hex2bin(Ljava/lang/String;)[B

    move-result-object v0

    .line 23
    invoke-direct {p0, p1}, Lcom/gpc/util/SecretKeyHelper;->hex2bin(Ljava/lang/String;)[B

    move-result-object p1

    .line 25
    array-length v1, p1

    new-array v1, v1, [B

    .line 27
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 29
    aget-byte v4, v0, v3

    aget-byte v5, p1, v3

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 31
    :cond_1
    invoke-direct {p0, v1}, Lcom/gpc/util/SecretKeyHelper;->bin2hex([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public demix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/util/SecretKeyHelper;->xorxor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x1c

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/gpc/util/SecretKeyHelper;->paintChars(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Lcom/gpc/util/SecretKeyHelper;->swapChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public mix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/util/SecretKeyHelper;->swapChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0x1c

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/gpc/util/SecretKeyHelper;->paintChars(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Lcom/gpc/util/SecretKeyHelper;->xorxor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
