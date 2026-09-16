.class public final Lcom/appsflyer/internal/AFj1xSDK;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static AFInAppEventParameterName(IIZI[I[[I[I)V
    .locals 11

    move-object v0, p4

    if-nez p2, :cond_0

    .line 39
    invoke-static {p4}, Lcom/appsflyer/internal/AFj1xSDK;->valueOf([I)V

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ge v2, p3, :cond_1

    .line 43
    aget v5, v0, v2

    xor-int/2addr p0, v5

    ushr-int/lit8 v5, p0, 0x18

    ushr-int/lit8 v6, p0, 0x10

    and-int/lit16 v6, v6, 0xff

    ushr-int/lit8 v7, p0, 0x8

    and-int/lit16 v7, v7, 0xff

    and-int/lit16 v8, p0, 0xff

    .line 1092
    aget-object v9, p5, v1

    aget v5, v9, v5

    aget-object v4, p5, v4

    aget v4, v4, v6

    add-int/2addr v5, v4

    aget-object v3, p5, v3

    aget v3, v3, v7

    xor-int/2addr v3, v5

    const/4 v4, 0x3

    aget-object v4, p5, v4

    aget v4, v4, v8

    add-int/2addr v3, v4

    xor-int/2addr p1, v3

    add-int/lit8 v2, v2, 0x1

    move v10, p1

    move p1, p0

    move p0, v10

    goto :goto_0

    .line 52
    :cond_1
    array-length v2, v0

    sub-int/2addr v2, v3

    aget v2, v0, v2

    xor-int/2addr p0, v2

    .line 53
    array-length v2, v0

    sub-int/2addr v2, v4

    aget v2, v0, v2

    xor-int/2addr p1, v2

    if-nez p2, :cond_2

    .line 56
    invoke-static {p4}, Lcom/appsflyer/internal/AFj1xSDK;->valueOf([I)V

    .line 58
    :cond_2
    aput p1, p6, v1

    .line 59
    aput p0, p6, v4

    return-void
.end method

.method private static valueOf([I)V
    .locals 3

    const/4 v0, 0x0

    .line 68
    :goto_0
    array-length v1, p0

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    .line 70
    aget v1, p0, v0

    .line 71
    array-length v2, p0

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    aget v2, p0, v2

    aput v2, p0, v0

    .line 72
    array-length v2, p0

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    aput v1, p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
