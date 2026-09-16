.class public Lcom/gpc/operations/utils/Constant$ResourceStorage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/operations/utils/Constant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourceStorage"
.end annotation


# static fields
.field public static final RESOURCE_DOWNLOAD:Ljava/lang/String; = "700203"

.field public static final RESOURCE_DOWNLOAD_FAILED_REMOTE_ERROR:Ljava/lang/String; = "700201"

.field public static final RESOURCE_DOWNLOAD_FAILED_SERVER_DATA_ILLEGAL:Ljava/lang/String; = "700202"

.field public static final STORAGE_V2_UPLOAD_ERROR_FOR_BUSINESS:Ljava/lang/String;

.field public static final STORAGE_V2_UPLOAD_ERROR_FOR_FILE_IO:Ljava/lang/String;

.field public static final STORAGE_V2_UPLOAD_ERROR_FOR_FILE_NOT_EXIST:Ljava/lang/String;

.field public static final STORAGE_V2_UPLOAD_ERROR_FOR_REMOTE_DATA:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/operations/storagev2/error/StorageError;->STORAGE_V2_UPLOAD_ERROR_FOR_FILE_IO:Ljava/lang/String;

    sput-object v0, Lcom/gpc/operations/utils/Constant$ResourceStorage;->STORAGE_V2_UPLOAD_ERROR_FOR_FILE_IO:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/gpc/operations/storagev2/error/StorageError;->STORAGE_V2_UPLOAD_ERROR_FOR_REMOTE_DATA:Ljava/lang/String;

    sput-object v0, Lcom/gpc/operations/utils/Constant$ResourceStorage;->STORAGE_V2_UPLOAD_ERROR_FOR_REMOTE_DATA:Ljava/lang/String;

    .line 5
    sget-object v0, Lcom/gpc/operations/storagev2/error/StorageError;->STORAGE_V2_UPLOAD_ERROR_FOR_BUSINESS:Ljava/lang/String;

    sput-object v0, Lcom/gpc/operations/utils/Constant$ResourceStorage;->STORAGE_V2_UPLOAD_ERROR_FOR_BUSINESS:Ljava/lang/String;

    .line 7
    sget-object v0, Lcom/gpc/operations/storagev2/error/StorageError;->STORAGE_V2_UPLOAD_ERROR_FOR_FILE_NOT_EXIST:Ljava/lang/String;

    sput-object v0, Lcom/gpc/operations/utils/Constant$ResourceStorage;->STORAGE_V2_UPLOAD_ERROR_FOR_FILE_NOT_EXIST:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
