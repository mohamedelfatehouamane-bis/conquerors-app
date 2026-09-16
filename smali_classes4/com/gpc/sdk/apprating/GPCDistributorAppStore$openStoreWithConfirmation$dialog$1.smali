.class public final Lcom/gpc/sdk/apprating/GPCDistributorAppStore$openStoreWithConfirmation$dialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/apprating/GPCDistributorAppStore;->openStoreWithConfirmation(Landroid/content/Context;Lcom/gpc/sdk/apprating/GPCDistributorAppStore$AppRatingConfirmationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/apprating/GPCDistributorAppStore$AppRatingConfirmationListener;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/apprating/GPCDistributorAppStore$AppRatingConfirmationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/gpc/sdk/apprating/GPCDistributorAppStore$openStoreWithConfirmation$dialog$1;->a:Lcom/gpc/sdk/apprating/GPCDistributorAppStore$AppRatingConfirmationListener;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/gpc/sdk/apprating/GPCDistributorAppStore$openStoreWithConfirmation$dialog$1;->a:Lcom/gpc/sdk/apprating/GPCDistributorAppStore$AppRatingConfirmationListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/gpc/sdk/apprating/GPCDistributorAppStore$AppRatingConfirmationListener;->onCancel()V

    :cond_0
    return-void
.end method
