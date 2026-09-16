.class public Lcom/gpc/sdk/storage/GPCStorage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/gpc/sdk/storage/GPCCDNUploader;

.field public b:Lcom/gpc/sdk/storage/GPCCDNUploaderV2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCDNUploader()Lcom/gpc/sdk/storage/GPCCDNUploader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/storage/GPCStorage;->a:Lcom/gpc/sdk/storage/GPCCDNUploader;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/gpc/sdk/utils/factory/MiscFactory;->getCDNUploader()Lcom/gpc/sdk/storage/GPCCDNUploader;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/storage/GPCStorage;->a:Lcom/gpc/sdk/storage/GPCCDNUploader;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/storage/GPCStorage;->a:Lcom/gpc/sdk/storage/GPCCDNUploader;

    return-object v0
.end method

.method public getCDNUploaderV2()Lcom/gpc/sdk/storage/GPCCDNUploaderV2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/storage/GPCStorage;->b:Lcom/gpc/sdk/storage/GPCCDNUploaderV2;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/gpc/sdk/utils/factory/MiscFactory;->getCDNUploaderV2()Lcom/gpc/sdk/storage/GPCCDNUploaderV2;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/storage/GPCStorage;->b:Lcom/gpc/sdk/storage/GPCCDNUploaderV2;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/storage/GPCStorage;->b:Lcom/gpc/sdk/storage/GPCCDNUploaderV2;

    return-object v0
.end method
