.class public final Lcom/gpc/operations/utils/RandomHelperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final RANDOMUTILS_TAG:Ljava/lang/String; = "RandomUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getRANDOMUTILS_TAG()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/operations/utils/RandomHelperKt;->RANDOMUTILS_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final randomInt(I)I
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    .line 4
    sget-object v0, Lcom/gpc/operations/utils/RandomHelperKt;->RANDOMUTILS_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "randomInt:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method
