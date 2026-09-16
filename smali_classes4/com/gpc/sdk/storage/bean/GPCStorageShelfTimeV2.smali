.class public final enum Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;

.field public static final enum EIGHT_DAYS:Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;

.field public static final enum THIRTY_DAYS:Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;

.field public static final enum THREE_DAYS:Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;


# instance fields
.field private days:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const-string v3, "THREE_DAYS"

    invoke-direct {v0, v3, v1, v2}, Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;->THREE_DAYS:Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;

    .line 3
    new-instance v0, Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;

    const/4 v1, 0x1

    const/16 v2, 0x8

    const-string v3, "EIGHT_DAYS"

    invoke-direct {v0, v3, v1, v2}, Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;->EIGHT_DAYS:Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;

    .line 5
    new-instance v0, Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;

    const/4 v1, 0x2

    const/16 v2, 0x1e

    const-string v3, "THIRTY_DAYS"

    invoke-direct {v0, v3, v1, v2}, Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;->THIRTY_DAYS:Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;

    .line 6
    invoke-static {}, Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;->a()[Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;

    move-result-object v0

    sput-object v0, Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;->$VALUES:[Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;->days:I

    return-void
.end method

.method public static synthetic a()[Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;
    .locals 3

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;

    sget-object v1, Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;->THREE_DAYS:Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;->EIGHT_DAYS:Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;->THIRTY_DAYS:Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;

    return-object p0
.end method

.method public static values()[Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;->$VALUES:[Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;

    invoke-virtual {v0}, [Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;

    return-object v0
.end method


# virtual methods
.method public getDays()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;->days:I

    return v0
.end method
