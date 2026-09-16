.class public final Lcom/gpc/sdk/apprating/GPCDistributorAppStore$openStoreWithConfirmation$dialog$2;
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

.field public final synthetic b:Lcom/gpc/sdk/apprating/GPCDistributorAppStore;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/apprating/GPCDistributorAppStore$AppRatingConfirmationListener;Lcom/gpc/sdk/apprating/GPCDistributorAppStore;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/gpc/sdk/apprating/GPCDistributorAppStore$openStoreWithConfirmation$dialog$2;->a:Lcom/gpc/sdk/apprating/GPCDistributorAppStore$AppRatingConfirmationListener;

    iput-object p2, p0, Lcom/gpc/sdk/apprating/GPCDistributorAppStore$openStoreWithConfirmation$dialog$2;->b:Lcom/gpc/sdk/apprating/GPCDistributorAppStore;

    iput-object p3, p0, Lcom/gpc/sdk/apprating/GPCDistributorAppStore$openStoreWithConfirmation$dialog$2;->c:Landroid/content/Context;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/gpc/sdk/apprating/GPCDistributorAppStore$openStoreWithConfirmation$dialog$2;->a:Lcom/gpc/sdk/apprating/GPCDistributorAppStore$AppRatingConfirmationListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/gpc/sdk/apprating/GPCDistributorAppStore$AppRatingConfirmationListener;->onOK()V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/apprating/GPCDistributorAppStore$openStoreWithConfirmation$dialog$2;->b:Lcom/gpc/sdk/apprating/GPCDistributorAppStore;

    iget-object p2, p0, Lcom/gpc/sdk/apprating/GPCDistributorAppStore$openStoreWithConfirmation$dialog$2;->c:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/gpc/sdk/apprating/GPCDistributorAppStore;->openStore(Landroid/content/Context;)V

    return-void
.end method
