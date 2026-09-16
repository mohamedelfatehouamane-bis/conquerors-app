.class public Lcom/gpc/operations/migrate/utils/common/RootNameTable;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SECRET_KEY_GLOBAL:Ljava/lang/String; = "fPgUX5hJC65sxaXt"

.field private static final SECRET_KEY_MAINLAND_CHINA:Ljava/lang/String; = "xVDcSDdqf47Gj2QT"

.field private static final SECRET_KEY_SK:Ljava/lang/String; = "PbKLGNnDfCn9UExD"

.field private static final TAG:Ljava/lang/String; = "RootNameTable"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static global()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "25AD07561EADF2430625977DEEEA07C1"

    const-string v1, "fPgUX5hJC65sxaXt"

    invoke-static {v0, v1}, Lcom/gpc/operations/migrate/utils/AESUtils;->decryptHex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    const-string v1, "RootNameTable"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public static sk()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "8CFA095E807609321AE9650DD394F55D"

    const-string v1, "PbKLGNnDfCn9UExD"

    invoke-static {v0, v1}, Lcom/gpc/operations/migrate/utils/AESUtils;->decryptHex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    const-string v1, "RootNameTable"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public static skyunion()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "28974A758F0BC0F181FE8F1ED458FF58"

    const-string v1, "xVDcSDdqf47Gj2QT"

    invoke-static {v0, v1}, Lcom/gpc/operations/migrate/utils/AESUtils;->decryptHex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    const-string v1, "RootNameTable"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method
