.class Lcom/gpc/cropper/CropImage$ActivityResult$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/cropper/CropImage$ActivityResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/gpc/cropper/CropImage$ActivityResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 981
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/gpc/cropper/CropImage$ActivityResult;
    .locals 1

    .line 984
    new-instance v0, Lcom/gpc/cropper/CropImage$ActivityResult;

    invoke-direct {v0, p1}, Lcom/gpc/cropper/CropImage$ActivityResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 981
    invoke-virtual {p0, p1}, Lcom/gpc/cropper/CropImage$ActivityResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/gpc/cropper/CropImage$ActivityResult;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/gpc/cropper/CropImage$ActivityResult;
    .locals 0

    .line 989
    new-array p1, p1, [Lcom/gpc/cropper/CropImage$ActivityResult;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 981
    invoke-virtual {p0, p1}, Lcom/gpc/cropper/CropImage$ActivityResult$1;->newArray(I)[Lcom/gpc/cropper/CropImage$ActivityResult;

    move-result-object p1

    return-object p1
.end method
