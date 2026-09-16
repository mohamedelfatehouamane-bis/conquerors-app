.class public interface abstract Lcom/gpc/sdk/storage/error/GPCStorageErrorCode;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final STORAGE_UPLOAD_ERROR_FOR_BUSINESS:Ljava/lang/String; = "400204"

.field public static final STORAGE_UPLOAD_ERROR_FOR_FILE:Ljava/lang/String; = "400206"

.field public static final STORAGE_UPLOAD_ERROR_FOR_REMOTE_DATA:Ljava/lang/String; = "400205"

.field public static final STORAGE_UPLOAD_ERROR_FOR_REMOTE_SERVICE:Ljava/lang/String; = "400203"

.field public static final STORAGE_UPLOAD_ERROR_FOR_SYSTEM_NETWORK:Ljava/lang/String; = "400202"

.field public static final STORAGE_UPLOAD_ERROR_FOR_UNKNOW:Ljava/lang/String; = "400201"

.field public static final STORAGE_UPLOAD_ERROR_FOR_USER_SESSION_IS_NULL:Ljava/lang/String; = "400207"

.field public static final STORAGE_UPLOAD_EX:Lcom/gpc/sdk/error/GPCExceptionMapping;

.field public static final STORAGE_UPLOAD_SHELF_TIME_ERROR_FOR_BUSINESS:Ljava/lang/String; = "400104"

.field public static final STORAGE_UPLOAD_SHELF_TIME_ERROR_FOR_FILE:Ljava/lang/String; = "400106"

.field public static final STORAGE_UPLOAD_SHELF_TIME_ERROR_FOR_REMOTE_DATA:Ljava/lang/String; = "400105"

.field public static final STORAGE_UPLOAD_SHELF_TIME_ERROR_FOR_REMOTE_SERVICE:Ljava/lang/String; = "400103"

.field public static final STORAGE_UPLOAD_SHELF_TIME_ERROR_FOR_SYSTEM_NETWORK:Ljava/lang/String; = "400102"

.field public static final STORAGE_UPLOAD_SHELF_TIME_ERROR_FOR_UNKNOW:Ljava/lang/String; = "400101"

.field public static final STORAGE_UPLOAD_SHELF_TIME_EX:Lcom/gpc/sdk/error/GPCExceptionMapping;

.field public static final STORAGE_V2_EXPECT:Lcom/gpc/sdk/error/GPCExceptionMapping;

.field public static final STORAGE_V2_EXPECT_ERROR_FOR_BUSINESS:Ljava/lang/String; = "400404"

.field public static final STORAGE_V2_EXPECT_ERROR_FOR_FILE_IO:Ljava/lang/String; = "400406"

.field public static final STORAGE_V2_EXPECT_ERROR_FOR_REMOTE_DATA:Ljava/lang/String; = "400405"

.field public static final STORAGE_V2_EXPECT_ERROR_FOR_REMOTE_SERVICE:Ljava/lang/String; = "400403"

.field public static final STORAGE_V2_EXPECT_ERROR_FOR_SYSTEM_NETWORK:Ljava/lang/String; = "400402"

.field public static final STORAGE_V2_EXPECT_ERROR_FOR_UNKNOWN:Ljava/lang/String; = "400401"

.field public static final STORAGE_V2_GET_TOKEN:Lcom/gpc/sdk/error/GPCExceptionMapping;

.field public static final STORAGE_V2_GET_TOKEN_ERROR_FOR_BUSINESS:Ljava/lang/String; = "400304"

.field public static final STORAGE_V2_GET_TOKEN_ERROR_FOR_REMOTE_DATA:Ljava/lang/String; = "400305"

.field public static final STORAGE_V2_GET_TOKEN_ERROR_FOR_REMOTE_SERVICE:Ljava/lang/String; = "400303"

.field public static final STORAGE_V2_GET_TOKEN_ERROR_FOR_SYSTEM_NETWORK:Ljava/lang/String; = "400302"

.field public static final STORAGE_V2_GET_TOKEN_ERROR_FOR_UNKNOWN:Ljava/lang/String; = "400301"

.field public static final STORAGE_V2_UPLOAD:Lcom/gpc/sdk/error/GPCExceptionMapping;

.field public static final STORAGE_V2_UPLOAD_ERROR_FOR_BUSINESS:Ljava/lang/String; = "400504"

.field public static final STORAGE_V2_UPLOAD_ERROR_FOR_FILE_IO:Ljava/lang/String; = "400506"

.field public static final STORAGE_V2_UPLOAD_ERROR_FOR_REMOTE_DATA:Ljava/lang/String; = "400505"

.field public static final STORAGE_V2_UPLOAD_ERROR_FOR_REMOTE_SERVICE:Ljava/lang/String; = "400503"

.field public static final STORAGE_V2_UPLOAD_ERROR_FOR_SYSTEM_NETWORK:Ljava/lang/String; = "400502"

.field public static final STORAGE_V2_UPLOAD_ERROR_FOR_UNKNOWN:Ljava/lang/String; = "400501"


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/gpc/sdk/error/GPCExceptionMapping;

    const-string v4, "400104"

    const-string v5, "400105"

    const-string v1, "400101"

    const-string v2, "400102"

    const-string v3, "400103"

    invoke-direct/range {v0 .. v5}, Lcom/gpc/sdk/error/GPCExceptionMapping;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/gpc/sdk/storage/error/GPCStorageErrorCode;->STORAGE_UPLOAD_SHELF_TIME_EX:Lcom/gpc/sdk/error/GPCExceptionMapping;

    .line 24
    new-instance v1, Lcom/gpc/sdk/error/GPCExceptionMapping;

    const-string v5, "400204"

    const-string v6, "400205"

    const-string v2, "400201"

    const-string v3, "400202"

    const-string v4, "400203"

    invoke-direct/range {v1 .. v6}, Lcom/gpc/sdk/error/GPCExceptionMapping;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/gpc/sdk/storage/error/GPCStorageErrorCode;->STORAGE_UPLOAD_EX:Lcom/gpc/sdk/error/GPCExceptionMapping;

    .line 43
    new-instance v2, Lcom/gpc/sdk/error/GPCExceptionMapping;

    const-string v6, "400304"

    const-string v7, "400305"

    const-string v3, "400301"

    const-string v4, "400302"

    const-string v5, "400303"

    invoke-direct/range {v2 .. v7}, Lcom/gpc/sdk/error/GPCExceptionMapping;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/gpc/sdk/storage/error/GPCStorageErrorCode;->STORAGE_V2_GET_TOKEN:Lcom/gpc/sdk/error/GPCExceptionMapping;

    .line 65
    new-instance v3, Lcom/gpc/sdk/error/GPCExceptionMapping;

    const-string v7, "400404"

    const-string v8, "400405"

    const-string v4, "400401"

    const-string v5, "400402"

    const-string v6, "400403"

    invoke-direct/range {v3 .. v8}, Lcom/gpc/sdk/error/GPCExceptionMapping;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/gpc/sdk/storage/error/GPCStorageErrorCode;->STORAGE_V2_EXPECT:Lcom/gpc/sdk/error/GPCExceptionMapping;

    .line 87
    new-instance v4, Lcom/gpc/sdk/error/GPCExceptionMapping;

    const-string v8, "400504"

    const-string v9, "400505"

    const-string v5, "400501"

    const-string v6, "400502"

    const-string v7, "400503"

    invoke-direct/range {v4 .. v9}, Lcom/gpc/sdk/error/GPCExceptionMapping;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/gpc/sdk/storage/error/GPCStorageErrorCode;->STORAGE_V2_UPLOAD:Lcom/gpc/sdk/error/GPCExceptionMapping;

    return-void
.end method
