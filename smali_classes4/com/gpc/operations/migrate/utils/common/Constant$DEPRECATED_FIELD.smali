.class public Lcom/gpc/operations/migrate/utils/common/Constant$DEPRECATED_FIELD;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/operations/migrate/utils/common/Constant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DEPRECATED_FIELD"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final P1:Ljava/lang/String; = "nSQQS"

.field private static final P10:Ljava/lang/String; = "xysccoc_xsqyv_qqs"

.field private static final P11:Ljava/lang/String; = "DBYZCCKZ_QQS"

.field private static final P2:Ljava/lang/String; = "zwkdcowsd_xysccoc_rcobpob_dckv_qqs"

.field private static final P3:Ljava/lang/String; = "ns_qqs"

.field private static final P4:Ljava/lang/String; = "kdkn_unc_qqs"

.field private static final P5:Ljava/lang/String; = "qqs"

.field private static final P6:Ljava/lang/String; = "nsqqs"

.field private static final P7:Ljava/lang/String; = "oqkccow_oqkbydc_rcez_qqs"

.field private static final P8:Ljava/lang/String; = "uckd_imkqov_uncqqs"

.field private static final P9:Ljava/lang/String; = "ovsp_NSEomsfon_UNCQQS"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encrypt(CI)C
    .locals 2

    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v1, 0x7a

    if-gt p0, v1, :cond_2

    .line 1
    rem-int/lit8 p1, p1, 0x1a

    add-int/2addr p0, p1

    int-to-char p0, p0

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    if-le p0, v1, :cond_1

    goto :goto_2

    :cond_1
    return p0

    :cond_2
    const/16 v0, 0x41

    if-lt p0, v0, :cond_4

    const/16 v1, 0x5a

    if-gt p0, v1, :cond_4

    .line 8
    rem-int/lit8 p1, p1, 0x1a

    add-int/2addr p0, p1

    int-to-char p0, p0

    if-ge p0, v0, :cond_3

    :goto_0
    add-int/lit8 p0, p0, 0x1a

    :goto_1
    int-to-char p0, p0

    return p0

    :cond_3
    if-le p0, v1, :cond_4

    :goto_2
    add-int/lit8 p0, p0, -0x1a

    goto :goto_1

    :cond_4
    return p0
.end method

.method private static getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/gpc/operations/migrate/utils/common/Constant$DEPRECATED_FIELD;->undod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getP1()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "nSQQS"

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/common/Constant$DEPRECATED_FIELD;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getP10()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "xysccoc_xsqyv_qqs"

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/common/Constant$DEPRECATED_FIELD;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getP11()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "DBYZCCKZ_QQS"

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/common/Constant$DEPRECATED_FIELD;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getP2()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "zwkdcowsd_xysccoc_rcobpob_dckv_qqs"

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/common/Constant$DEPRECATED_FIELD;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getP3()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ns_qqs"

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/common/Constant$DEPRECATED_FIELD;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getP4()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "kdkn_unc_qqs"

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/common/Constant$DEPRECATED_FIELD;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getP5()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "qqs"

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/common/Constant$DEPRECATED_FIELD;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getP6()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "nsqqs"

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/common/Constant$DEPRECATED_FIELD;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getP7()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "oqkccow_oqkbydc_rcez_qqs"

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/common/Constant$DEPRECATED_FIELD;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getP8()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "uckd_imkqov_uncqqs"

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/common/Constant$DEPRECATED_FIELD;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getP9()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ovsp_NSEomsfon_UNCQQS"

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/common/Constant$DEPRECATED_FIELD;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static undod(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-char v3, p0, v2

    const/16 v4, -0xa

    .line 4
    invoke-static {v3, v4}, Lcom/gpc/operations/migrate/utils/common/Constant$DEPRECATED_FIELD;->encrypt(CI)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
