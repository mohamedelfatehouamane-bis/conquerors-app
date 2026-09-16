.class public final enum Lcom/unity3d/services/core/cache/CacheError;
.super Ljava/lang/Enum;
.source "CacheError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/services/core/cache/CacheError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/services/core/cache/CacheError;

.field public static final enum CACHE_DIRECTORY_DOESNT_EXIST:Lcom/unity3d/services/core/cache/CacheError;

.field public static final enum CACHE_DIRECTORY_EXISTS:Lcom/unity3d/services/core/cache/CacheError;

.field public static final enum CACHE_DIRECTORY_NULL:Lcom/unity3d/services/core/cache/CacheError;

.field public static final enum CACHE_DIRECTORY_TYPE_NULL:Lcom/unity3d/services/core/cache/CacheError;

.field public static final enum FILE_ALREADY_CACHING:Lcom/unity3d/services/core/cache/CacheError;

.field public static final enum FILE_IO_ERROR:Lcom/unity3d/services/core/cache/CacheError;

.field public static final enum FILE_NOT_FOUND:Lcom/unity3d/services/core/cache/CacheError;

.field public static final enum FILE_STATE_WRONG:Lcom/unity3d/services/core/cache/CacheError;

.field public static final enum ILLEGAL_STATE:Lcom/unity3d/services/core/cache/CacheError;

.field public static final enum INVALID_ARGUMENT:Lcom/unity3d/services/core/cache/CacheError;

.field public static final enum JSON_ERROR:Lcom/unity3d/services/core/cache/CacheError;

.field public static final enum MALFORMED_URL:Lcom/unity3d/services/core/cache/CacheError;

.field public static final enum NETWORK_ERROR:Lcom/unity3d/services/core/cache/CacheError;

.field public static final enum NOT_CACHING:Lcom/unity3d/services/core/cache/CacheError;

.field public static final enum NO_INTERNET:Lcom/unity3d/services/core/cache/CacheError;

.field public static final enum UNKNOWN_ERROR:Lcom/unity3d/services/core/cache/CacheError;

.field public static final enum UNSUPPORTED_ENCODING:Lcom/unity3d/services/core/cache/CacheError;


# direct methods
.method static constructor <clinit>()V
    .locals 35

    .line 4
    new-instance v0, Lcom/unity3d/services/core/cache/CacheError;

    const-string v1, "FILE_IO_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/core/cache/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    .line 5
    new-instance v1, Lcom/unity3d/services/core/cache/CacheError;

    const-string v3, "FILE_NOT_FOUND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/unity3d/services/core/cache/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/services/core/cache/CacheError;->FILE_NOT_FOUND:Lcom/unity3d/services/core/cache/CacheError;

    .line 6
    new-instance v3, Lcom/unity3d/services/core/cache/CacheError;

    const-string v5, "FILE_ALREADY_CACHING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/unity3d/services/core/cache/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/unity3d/services/core/cache/CacheError;->FILE_ALREADY_CACHING:Lcom/unity3d/services/core/cache/CacheError;

    .line 7
    new-instance v5, Lcom/unity3d/services/core/cache/CacheError;

    const-string v7, "NOT_CACHING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/unity3d/services/core/cache/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/unity3d/services/core/cache/CacheError;->NOT_CACHING:Lcom/unity3d/services/core/cache/CacheError;

    .line 8
    new-instance v7, Lcom/unity3d/services/core/cache/CacheError;

    const-string v9, "JSON_ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/unity3d/services/core/cache/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/unity3d/services/core/cache/CacheError;->JSON_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    .line 9
    new-instance v9, Lcom/unity3d/services/core/cache/CacheError;

    const-string v11, "NO_INTERNET"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/unity3d/services/core/cache/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/unity3d/services/core/cache/CacheError;->NO_INTERNET:Lcom/unity3d/services/core/cache/CacheError;

    .line 10
    new-instance v11, Lcom/unity3d/services/core/cache/CacheError;

    const-string v13, "MALFORMED_URL"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/unity3d/services/core/cache/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/unity3d/services/core/cache/CacheError;->MALFORMED_URL:Lcom/unity3d/services/core/cache/CacheError;

    .line 11
    new-instance v13, Lcom/unity3d/services/core/cache/CacheError;

    const-string v15, "NETWORK_ERROR"

    const/16 v16, 0x0

    const/4 v2, 0x7

    invoke-direct {v13, v15, v2}, Lcom/unity3d/services/core/cache/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/unity3d/services/core/cache/CacheError;->NETWORK_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    .line 12
    new-instance v15, Lcom/unity3d/services/core/cache/CacheError;

    const/16 v17, 0x7

    const-string v2, "ILLEGAL_STATE"

    const/16 v18, 0x1

    const/16 v4, 0x8

    invoke-direct {v15, v2, v4}, Lcom/unity3d/services/core/cache/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/unity3d/services/core/cache/CacheError;->ILLEGAL_STATE:Lcom/unity3d/services/core/cache/CacheError;

    .line 13
    new-instance v2, Lcom/unity3d/services/core/cache/CacheError;

    const/16 v19, 0x8

    const-string v4, "INVALID_ARGUMENT"

    const/16 v20, 0x2

    const/16 v6, 0x9

    invoke-direct {v2, v4, v6}, Lcom/unity3d/services/core/cache/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/unity3d/services/core/cache/CacheError;->INVALID_ARGUMENT:Lcom/unity3d/services/core/cache/CacheError;

    .line 14
    new-instance v4, Lcom/unity3d/services/core/cache/CacheError;

    const/16 v21, 0x9

    const-string v6, "UNSUPPORTED_ENCODING"

    const/16 v22, 0x3

    const/16 v8, 0xa

    invoke-direct {v4, v6, v8}, Lcom/unity3d/services/core/cache/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/unity3d/services/core/cache/CacheError;->UNSUPPORTED_ENCODING:Lcom/unity3d/services/core/cache/CacheError;

    .line 15
    new-instance v6, Lcom/unity3d/services/core/cache/CacheError;

    const/16 v23, 0xa

    const-string v8, "FILE_STATE_WRONG"

    const/16 v24, 0x4

    const/16 v10, 0xb

    invoke-direct {v6, v8, v10}, Lcom/unity3d/services/core/cache/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/unity3d/services/core/cache/CacheError;->FILE_STATE_WRONG:Lcom/unity3d/services/core/cache/CacheError;

    .line 16
    new-instance v8, Lcom/unity3d/services/core/cache/CacheError;

    const/16 v25, 0xb

    const-string v10, "CACHE_DIRECTORY_NULL"

    const/16 v26, 0x5

    const/16 v12, 0xc

    invoke-direct {v8, v10, v12}, Lcom/unity3d/services/core/cache/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/unity3d/services/core/cache/CacheError;->CACHE_DIRECTORY_NULL:Lcom/unity3d/services/core/cache/CacheError;

    .line 17
    new-instance v10, Lcom/unity3d/services/core/cache/CacheError;

    const/16 v27, 0xc

    const-string v12, "CACHE_DIRECTORY_TYPE_NULL"

    const/16 v28, 0x6

    const/16 v14, 0xd

    invoke-direct {v10, v12, v14}, Lcom/unity3d/services/core/cache/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/unity3d/services/core/cache/CacheError;->CACHE_DIRECTORY_TYPE_NULL:Lcom/unity3d/services/core/cache/CacheError;

    .line 18
    new-instance v12, Lcom/unity3d/services/core/cache/CacheError;

    const/16 v29, 0xd

    const-string v14, "CACHE_DIRECTORY_EXISTS"

    move-object/from16 v30, v0

    const/16 v0, 0xe

    invoke-direct {v12, v14, v0}, Lcom/unity3d/services/core/cache/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/unity3d/services/core/cache/CacheError;->CACHE_DIRECTORY_EXISTS:Lcom/unity3d/services/core/cache/CacheError;

    .line 19
    new-instance v14, Lcom/unity3d/services/core/cache/CacheError;

    const/16 v31, 0xe

    const-string v0, "CACHE_DIRECTORY_DOESNT_EXIST"

    move-object/from16 v32, v1

    const/16 v1, 0xf

    invoke-direct {v14, v0, v1}, Lcom/unity3d/services/core/cache/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/unity3d/services/core/cache/CacheError;->CACHE_DIRECTORY_DOESNT_EXIST:Lcom/unity3d/services/core/cache/CacheError;

    .line 20
    new-instance v0, Lcom/unity3d/services/core/cache/CacheError;

    const/16 v33, 0xf

    const-string v1, "UNKNOWN_ERROR"

    move-object/from16 v34, v2

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/core/cache/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/core/cache/CacheError;->UNKNOWN_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    const/16 v1, 0x11

    .line 3
    new-array v1, v1, [Lcom/unity3d/services/core/cache/CacheError;

    aput-object v30, v1, v16

    aput-object v32, v1, v18

    aput-object v3, v1, v20

    aput-object v5, v1, v22

    aput-object v7, v1, v24

    aput-object v9, v1, v26

    aput-object v11, v1, v28

    aput-object v13, v1, v17

    aput-object v15, v1, v19

    aput-object v34, v1, v21

    aput-object v4, v1, v23

    aput-object v6, v1, v25

    aput-object v8, v1, v27

    aput-object v10, v1, v29

    aput-object v12, v1, v31

    aput-object v14, v1, v33

    aput-object v0, v1, v2

    sput-object v1, Lcom/unity3d/services/core/cache/CacheError;->$VALUES:[Lcom/unity3d/services/core/cache/CacheError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/core/cache/CacheError;
    .locals 1

    .line 3
    const-class v0, Lcom/unity3d/services/core/cache/CacheError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/services/core/cache/CacheError;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/services/core/cache/CacheError;
    .locals 1

    .line 3
    sget-object v0, Lcom/unity3d/services/core/cache/CacheError;->$VALUES:[Lcom/unity3d/services/core/cache/CacheError;

    invoke-virtual {v0}, [Lcom/unity3d/services/core/cache/CacheError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/services/core/cache/CacheError;

    return-object v0
.end method
