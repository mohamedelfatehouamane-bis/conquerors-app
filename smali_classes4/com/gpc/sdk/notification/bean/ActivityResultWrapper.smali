.class public Lcom/gpc/sdk/notification/bean/ActivityResultWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private data:Landroid/content/Intent;

.field private requestCode:I

.field private resultCode:I


# direct methods
.method public constructor <init>(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/gpc/sdk/notification/bean/ActivityResultWrapper;->requestCode:I

    .line 3
    iput p2, p0, Lcom/gpc/sdk/notification/bean/ActivityResultWrapper;->resultCode:I

    .line 4
    iput-object p3, p0, Lcom/gpc/sdk/notification/bean/ActivityResultWrapper;->data:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getData()Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/notification/bean/ActivityResultWrapper;->data:Landroid/content/Intent;

    return-object v0
.end method

.method public getRequestCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/notification/bean/ActivityResultWrapper;->requestCode:I

    return v0
.end method

.method public getResultCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/notification/bean/ActivityResultWrapper;->resultCode:I

    return v0
.end method

.method public setData(Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/notification/bean/ActivityResultWrapper;->data:Landroid/content/Intent;

    return-void
.end method

.method public setRequestCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/notification/bean/ActivityResultWrapper;->requestCode:I

    return-void
.end method

.method public setResultCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/notification/bean/ActivityResultWrapper;->resultCode:I

    return-void
.end method
